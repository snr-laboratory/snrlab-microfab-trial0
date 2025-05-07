import time
import usbtmc
import numpy as np
import datetime
import csv
import matplotlib.pyplot as plt
from matplotlib.ticker import ScalarFormatter

# Constants based on your Excel file
AREA_CM2 = 11.6964  # Sample area in cm²
THICKNESS_CM = 0.18  # Sample thickness in cm
INITIAL_STABILIZATION_MINUTES = 2  # Initial stabilization time
MEASUREMENT_TIME_MINUTES = 15      # 15 minutes as requested
NUM_READINGS = 5  # Number of readings for standard deviation

# Configure voltage steps for each trial
TRIAL1_VOLTAGES = [25, 50, 100, 150, 200]  # Trial 1: Positive voltages
TRIAL2_VOLTAGES = [-25, -50, -100, -150, -200]  # Trial 2: Negative voltages

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
    
    # Configure for voltage sourcing and current measurement
    instr.write("SOUR:FUNC VOLT")     # Source voltage
    instr.write("SOUR:VOLT:RANG 200") # 200V range
    instr.write("SOUR:VOLT:ILIM 1e-9") # 1nA current limit to avoid limit cycling
    instr.write("SENS:FUNC \"CURR\"")   # Measure current
    instr.write("SENS:CURR:RANG 10e-9") # 10nA range
    instr.write("SENS:CURR:NPLC 10")   # Higher integration time for accuracy

    # Prepare CSV output file
    today = datetime.datetime.now().strftime("%Y-%m-%d")
    filename = f"epoxy_measurements_{today}.csv"
    
    # For plotting
    trial1_voltages = []
    trial1_currents = []
    trial2_voltages = []
    trial2_currents = []
    
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
        
        def run_trial(trial_name, voltages, trial_data_voltages, trial_data_currents):
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
                    
                    # Store data for plotting
                    trial_data_voltages.append(voltage_reading)
                    trial_data_currents.append(mean_current)
                    
                    # Write to CSV
                    csvwriter.writerow([voltage, f"{voltage_reading:.3f}", f"{mean_current:.1f}", 
                                       f"{std_current:.1f}", f"{resistivity:.2e}"])
                else:
                    print("Warning: No valid readings obtained for this voltage point")
                    csvwriter.writerow([voltage, "N/A", "N/A", "N/A", "N/A"])
            
            csvwriter.writerow([])
        
        # Run only trials 1 and 2 as requested
        run_trial("TRIAL 1: POSITIVE VOLTAGES (25V-200V)", TRIAL1_VOLTAGES, trial1_voltages, trial1_currents)
        run_trial("TRIAL 2: NEGATIVE VOLTAGES (-25V to -200V)", TRIAL2_VOLTAGES, trial2_voltages, trial2_currents)
    
    print(f"\nMeasurements complete and saved to {filename}")
    
    # Create plot of voltage vs current with trend lines and equations
    plt.figure(figsize=(10, 6))
    
    # Plot Trial 1 (Positive Voltages) with trend line
    if trial1_voltages:
        plt.scatter(trial1_voltages, trial1_currents, color='blue', marker='o', label='Positive Voltages')
        
        # Calculate trend line
        if len(trial1_voltages) > 1:  # Need at least 2 points for a line
            slope, intercept = np.polyfit(trial1_voltages, trial1_currents, 1)
            x_line = np.linspace(min(trial1_voltages), max(trial1_voltages), 100)
            y_line = slope * x_line + intercept
            plt.plot(x_line, y_line, 'b--')
            
            # Add equation to plot
            equation = f'y = {slope:.2e}x + {intercept:.2e}'
            plt.annotate(equation, 
                        xy=(0.05, 0.95), 
                        xycoords='axes fraction',
                        color='blue',
                        bbox=dict(boxstyle="round,pad=0.3", fc="white", ec="blue", alpha=0.8))
    
    # Plot Trial 2 (Negative Voltages) with trend line
    if trial2_voltages:
        plt.scatter(trial2_voltages, trial2_currents, color='red', marker='s', label='Negative Voltages')
        
        # Calculate trend line
        if len(trial2_voltages) > 1:  # Need at least 2 points for a line
            slope, intercept = np.polyfit(trial2_voltages, trial2_currents, 1)
            x_line = np.linspace(min(trial2_voltages), max(trial2_voltages), 100)
            y_line = slope * x_line + intercept
            plt.plot(x_line, y_line, 'r--')
            
            # Add equation to plot
            equation = f'y = {slope:.2e}x + {intercept:.2e}'
            plt.annotate(equation, 
                        xy=(0.05, 0.85), 
                        xycoords='axes fraction',
                        color='red',
                        bbox=dict(boxstyle="round,pad=0.3", fc="white", ec="red", alpha=0.8))
    
    plt.xlabel('Observed Voltage (V)')
    plt.ylabel('Measured Current (pA)')
    plt.title('Voltage vs Current for Epoxy Measurements with Trend Lines')
    plt.grid(True)
    plt.legend()
    
    # Use scientific notation for y-axis
    plt.ticklabel_format(axis='y', style='sci', scilimits=(0,0))
    
    # Save the plot
    plot_filename = f"epoxy_vi_plot_{today}.png"
    plt.savefig(plot_filename)
    print(f"Plot saved as {plot_filename}")
    
    # Show the plot
    plt.show()
    
    # Proper cleanup to ensure manual operation works after script completion
    print("\nRestoring instrument to local control...")
    # Turn off output
    instr.write("OUTP OFF")
    # Reset instrument to default state
    instr.write("*RST")
    # Return to local control (front panel)
    instr.write("SYST:LOC")
    # Clear any errors
    instr.write("*CLS")
    print("Instrument restored to local control. You can now use it manually.")

except Exception as e:
    print(f"Error: {e}")
    # Safety: ensure output is off if there's an error
    try:
        instr.write("OUTP OFF")
        instr.write("*RST")
        instr.write("SYST:LOC")
        instr.write("*CLS")
    except:
        pass

