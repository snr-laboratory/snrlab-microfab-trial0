import time
import usbtmc
import numpy as np
import datetime
import csv

# Constants based on your Excel file
AREA_CM2 = 11.6964  # Sample area in cm²
THICKNESS_CM = 0.18  # Sample thickness in cm
INITIAL_STABILIZATION_MINUTES = 1  # Initial stabilization (shortened for testing)
MEASUREMENT_TIME_MINUTES = 3       # Total measurement time (shortened for testing)
NUM_READINGS = 5  # Number of readings for standard deviation

# Configure voltage steps for each trial (from your Excel file)
TRIAL1_VOLTAGES = [25, 50, 100, 150, 200]
TRIAL2_VOLTAGES = [-25, -50, -100, -150, -200]
TRIAL3_VOLTAGES = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120]
TRIAL4_VOLTAGES = [-10, -20, -30, -40, -50, -60, -70, -80, -90, -100, -110, -120]

def calculate_resistivity(voltage, current_pa, area_cm2, thickness_cm):
    if current_pa == 0:
        return float('inf')
    current_a = current_pa * 1e-12
    resistivity = (voltage / current_a) * (area_cm2 / thickness_cm)
    return resistivity

try:
    # Connect to the Keithley 2450 SMU
    instr = usbtmc.Instrument(0x05e6, 0x2450, "04433491")
    instr.timeout = 10.0

    # Query instrument identification
    print("Connected to:", instr.ask("*IDN?").strip())
    print("Setting up instrument for epoxy measurements...")
    
    # Reset the instrument to default settings
    instr.write("*RST")
    time.sleep(1)
    
    # *** IMPORTANT: Configure for basic voltage sourcing and current measurement ***
    # These simplified commands avoid SCPI header errors
    instr.write("SOUR:FUNC VOLT")     # Source voltage
    instr.write("SOUR:VOLT:RANG 200") # 200V range (max is 210V per manual)
    instr.write("SOUR:VOLT:ILIM 1e-9") # 1nA current limit (avoids limit cycling)
    instr.write("SENS:FUNC \"CURR\"")   # Measure current (note the escaped quotes)
    instr.write("SENS:CURR:RANG 10e-9") # 10nA range
    instr.write("SENS:CURR:NPLC 10")   # Higher integration time for accuracy

    # Avoid using buffer commands that caused Error 4920
    # Do not use TRAC commands which require specific buffer sizes
    
    # Prepare CSV output file
    today = datetime.datetime.now().strftime("%Y-%m-%d")
    filename = f"epoxy_measurements_{today}.csv"
    
    with open(filename, 'w', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(["Date", today])
        csvwriter.writerow([])
        csvwriter.writerow(["Area (cm²)", AREA_CM2, "Thickness (cm)", THICKNESS_CM])
        csvwriter.writerow([])
        csvwriter.writerow(["NOTE: Connect to REAR terminals with triaxial cables for best low-current accuracy"])
        csvwriter.writerow([])
        
        # Turn output ON once at the beginning
        print("Turning output ON for all measurements")
        instr.write("OUTP ON")
        
        def run_trial(trial_name, voltages):
            print(f"\n--- {trial_name} ---")
            csvwriter.writerow([trial_name])
            csvwriter.writerow(["Voltage Sourced (V)", "Voltage obs (V)", "Measured Current (pA)", 
                              "STDEV (pA)", "Resistivity (ohm cm)"])
            
            for voltage in voltages:
                print(f"\nSetting voltage to {voltage} V")
                instr.write(f"SOUR:VOLT {voltage}")
                
                # Wait initial stabilization period
                print(f"Waiting {INITIAL_STABILIZATION_MINUTES} minutes for initial stabilization...")
                time.sleep(INITIAL_STABILIZATION_MINUTES * 60)
                
                # Wait remaining time to reach total measurement time
                remaining_time = MEASUREMENT_TIME_MINUTES - INITIAL_STABILIZATION_MINUTES
                print(f"Continuing to wait {remaining_time} more minutes before taking readings...")
                time.sleep(remaining_time * 60)
                
                # Take multiple readings with enhanced error handling
                current_readings = []
                voltage_reading = 0
                
                for i in range(NUM_READINGS):
                    try:
                        # Use simple measurement commands instead of READ?
                        # Measure voltage directly
                        instr.write("MEAS:VOLT?")
                        voltage_str = instr.read().strip()
                        print(f"Raw voltage reading: {voltage_str}")
                        measured_voltage = float(voltage_str)
                        voltage_reading = measured_voltage
                        
                        # Measure current directly
                        instr.write("MEAS:CURR?")
                        current_str = instr.read().strip()
                        print(f"Raw current reading: {current_str}")
                        measured_current = float(current_str) * 1e12  # Convert to pA
                        
                        current_readings.append(measured_current)
                        print(f"Reading #{i+1}: {measured_voltage:.3f}V, {measured_current:.2f}pA")
                    except Exception as e:
                        print(f"Error in reading #{i+1}: {e}")
                    
                    time.sleep(1)  # Brief pause between readings
                
                # Process readings only if we collected data
                if current_readings:
                    mean_current = np.mean(current_readings)
                    std_current = np.std(current_readings)
                    resistivity = calculate_resistivity(voltage_reading, mean_current, AREA_CM2, THICKNESS_CM)
                    
                    print(f"Measured: {voltage_reading:.3f} V, {mean_current:.2f} pA, StdDev: {std_current:.2f} pA")
                    print(f"Resistivity: {resistivity:.2e} ohm·cm")
                    
                    # Write to CSV
                    csvwriter.writerow([voltage, f"{voltage_reading:.3f}", f"{mean_current:.1f}", 
                                       f"{std_current:.1f}", f"{resistivity:.2e}"])
                else:
                    print("Warning: No valid readings obtained for this voltage point")
                    csvwriter.writerow([voltage, "N/A", "N/A", "N/A", "N/A"])
            
            csvwriter.writerow([])
        
        # Run all four trials
        run_trial("TRIAL 1: POSITIVE VOLTAGES (25V-200V)", TRIAL1_VOLTAGES)
        run_trial("TRIAL 2: NEGATIVE VOLTAGES (-25V to -200V)", TRIAL2_VOLTAGES)
        run_trial("TRIAL 3: POSITIVE VOLTAGES (10V-120V)", TRIAL3_VOLTAGES)
        run_trial("TRIAL 4: NEGATIVE VOLTAGES (-10V to -120V)", TRIAL4_VOLTAGES)
    
    print(f"\nMeasurements complete and saved to {filename}")
    print("Turning output OFF")
    instr.write("OUTP OFF")

except Exception as e:
    print(f"Error: {e}")
    # Safety: ensure output is off if there's an error
    try:
        instr.write("OUTP OFF")
    except:
        pass

