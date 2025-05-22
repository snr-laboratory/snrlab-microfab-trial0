import time
import usbtmc
import numpy as np
import datetime
import csv
import matplotlib.pyplot as plt

# Constants
AREA_CM2 = 11.6964  # Sample area in cm²
THICKNESS_CM = 0.18  # Sample thickness in cm

INITIAL_STABILIZATION_MINUTES = 2
MEASUREMENT_TIME_MINUTES = 15
NUM_READINGS = 5

TRIAL1_VOLTAGES = [25, 50, 100, 150, 200]
TRIAL2_VOLTAGES = [-25, -50, -100, -150, -200]

def calculate_resistivity(voltage, current_pa, area_cm2, thickness_cm):
    if current_pa == 0:
        return float('inf')
    current_a = current_pa * 1e-12
    resistivity = (voltage / current_a) * (area_cm2 / thickness_cm)
    return resistivity

try:
    # Connect to Keithley 2450 SMU
    instr = usbtmc.Instrument(0x05e6, 0x2450, "04433491")
    instr.timeout = 10.0
    print("Connected to:", instr.ask("*IDN?").strip())
    print("Setting up instrument for epoxy measurements...")

    # Reset instrument
    instr.write("*RST")
    time.sleep(1)
    instr.write("SOUR:FUNC VOLT")
    instr.write("SOUR:VOLT:RANG 200")
    instr.write("SOUR:VOLT:ILIM 1e-9")
    instr.write("SENS:FUNC \"CURR\"")
    instr.write("SENS:CURR:RANG 10e-9")
    instr.write("SENS:CURR:NPLC 10")

    today = datetime.datetime.now().strftime("%Y-%m-%d")
    filename = f"epoxy_measurements_{today}.csv"

    trial1_voltages = []
    trial1_currents = []
    trial1_resistivities = []
    trial2_voltages = []
    trial2_currents = []
    trial2_resistivities = []

    with open(filename, 'w', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(["Date", today])
        csvwriter.writerow([])
        csvwriter.writerow(["Area (cm²)", AREA_CM2, "Thickness (cm)", THICKNESS_CM])
        csvwriter.writerow([])
        csvwriter.writerow(["NOTE: Connect to REAR terminals with triaxial cables for best low-current accuracy"])
        csvwriter.writerow([])

        print("Turning output ON for all measurements")
        instr.write("OUTP ON")

        def run_trial(trial_name, voltages, trial_data_voltages, trial_data_currents, trial_data_resistivities):
            print(f"\n--- {trial_name} ---")
            csvwriter.writerow([trial_name])
            csvwriter.writerow(["Voltage Sourced (V)", "Voltage obs (V)", "Measured Current (pA)",
                               "STDEV (pA)", "Resistivity (ohm cm)"])
            for voltage in voltages:
                print(f"\nSetting voltage to {voltage} V")
                instr.write(f"SOUR:VOLT {voltage}")
                print(f"Waiting {INITIAL_STABILIZATION_MINUTES} minutes for initial stabilization...")
                time.sleep(INITIAL_STABILIZATION_MINUTES * 60)
                remaining_time = MEASUREMENT_TIME_MINUTES - INITIAL_STABILIZATION_MINUTES
                print(f"Continuing to wait {remaining_time} more minutes before taking readings...")
                time.sleep(remaining_time * 60)

                current_readings = []
                voltage_reading = 0
                for i in range(NUM_READINGS):
                    try:
                        instr.write("MEAS:VOLT?")
                        voltage_str = instr.read().strip()
                        measured_voltage = float(voltage_str)
                        voltage_reading = measured_voltage

                        instr.write("MEAS:CURR?")
                        current_str = instr.read().strip()
                        measured_current = float(current_str) * 1e12  # Convert to pA
                        current_readings.append(measured_current)
                        print(f"Reading #{i+1}: {measured_voltage:.3f}V, {measured_current:.2f}pA")
                    except Exception as e:
                        print(f"Error in reading #{i+1}: {e}")
                    time.sleep(1)

                if current_readings:
                    mean_current = np.mean(current_readings)
                    std_current = np.std(current_readings)
                    resistivity = calculate_resistivity(voltage_reading, mean_current, AREA_CM2, THICKNESS_CM)
                    print(f"Measured: {voltage_reading:.3f} V, {mean_current:.2f} pA, StdDev: {std_current:.2f} pA")
                    print(f"Resistivity: {resistivity:.2e} ohm·cm")

                    trial_data_voltages.append(voltage_reading)
                    trial_data_currents.append(mean_current)
                    trial_data_resistivities.append(resistivity)

                    csvwriter.writerow([voltage, f"{voltage_reading:.3f}", f"{mean_current:.1f}",
                                       f"{std_current:.1f}", f"{resistivity:.2e}"])
                else:
                    print("Warning: No valid readings obtained for this voltage point")
                    csvwriter.writerow([voltage, "N/A", "N/A", "N/A", "N/A"])
            csvwriter.writerow([])

        run_trial("TRIAL 1: POSITIVE VOLTAGES (25V-200V)", TRIAL1_VOLTAGES, trial1_voltages, trial1_currents, trial1_resistivities)
        run_trial("TRIAL 2: NEGATIVE VOLTAGES (-25V to -200V)", TRIAL2_VOLTAGES, trial2_voltages, trial2_currents, trial2_resistivities)

        print(f"\nMeasurements complete and saved to {filename}")

    # --- Plot voltage vs current with trend lines and equations ---
    plt.figure(figsize=(12, 8))
    plt.scatter(trial1_voltages, trial1_currents, color='blue', marker='o', label='Positive Voltages')
    plt.scatter(trial2_voltages, trial2_currents, color='red', marker='s', label='Negative Voltages')

    # Trend line for Trial 1
    if len(trial1_voltages) > 1:
        slope1, intercept1 = np.polyfit(trial1_voltages, trial1_currents, 1)
        x_line1 = np.linspace(min(trial1_voltages), max(trial1_voltages), 100)
        y_line1 = slope1 * x_line1 + intercept1
        plt.plot(x_line1, y_line1, 'b--')
        eq1 = f'y = {slope1:.2e}x + {intercept1:.2e}'
        plt.annotate(eq1, xy=(0.05, 0.95), xycoords='axes fraction', color='blue',
                     bbox=dict(boxstyle="round,pad=0.3", fc="white", ec="blue", alpha=0.8))

    # Trend line for Trial 2
    if len(trial2_voltages) > 1:
        slope2, intercept2 = np.polyfit(trial2_voltages, trial2_currents, 1)
        x_line2 = np.linspace(min(trial2_voltages), max(trial2_voltages), 100)
        y_line2 = slope2 * x_line2 + intercept2
        plt.plot(x_line2, y_line2, 'r--')
        eq2 = f'y = {slope2:.2e}x + {intercept2:.2e}'
        plt.annotate(eq2, xy=(0.05, 0.85), xycoords='axes fraction', color='red',
                     bbox=dict(boxstyle="round,pad=0.3", fc="white", ec="red", alpha=0.8))

    plt.xlabel('Observed Voltage (V)')
    plt.ylabel('Measured Current (pA)')
    plt.title('Voltage vs Current for Epoxy Measurements with Trend Lines')
    plt.grid(True)
    plt.legend()
    plt.ticklabel_format(axis='y', style='sci', scilimits=(0,0))
    plt.savefig(f"epoxy_vi_plot_{today}.png")
    plt.show()

    # --- Plot resistivity vs voltage with trend lines and equations ---
    plt.figure(figsize=(12, 8))
    plt.scatter(trial1_voltages, trial1_resistivities, color='blue', marker='o', label='Positive Voltages')
    plt.scatter(trial2_voltages, trial2_resistivities, color='red', marker='s', label='Negative Voltages')

    # Trend line for Trial 1
    if len(trial1_voltages) > 1:
        slope1, intercept1 = np.polyfit(trial1_voltages, trial1_resistivities, 1)
        x_line1 = np.linspace(min(trial1_voltages), max(trial1_voltages), 100)
        y_line1 = slope1 * x_line1 + intercept1
        plt.plot(x_line1, y_line1, 'b--')
        eq1 = f'y = {slope1:.2e}x + {intercept1:.2e}'
        plt.annotate(eq1, xy=(0.05, 0.95), xycoords='axes fraction', color='blue',
                     bbox=dict(boxstyle="round,pad=0.3", fc="white", ec="blue", alpha=0.8))

    # Trend line for Trial 2
    if len(trial2_voltages) > 1:
        slope2, intercept2 = np.polyfit(trial2_voltages, trial2_resistivities, 1)
        x_line2 = np.linspace(min(trial2_voltages), max(trial2_voltages), 100)
        y_line2 = slope2 * x_line2 + intercept2
        plt.plot(x_line2, y_line2, 'r--')
        eq2 = f'y = {slope2:.2e}x + {intercept2:.2e}'
        plt.annotate(eq2, xy=(0.05, 0.85), xycoords='axes fraction', color='red',
                     bbox=dict(boxstyle="round,pad=0.3", fc="white", ec="red", alpha=0.8))

    plt.xlabel('Observed Voltage (V)')
    plt.ylabel('Resistivity (ohm·cm)')
    plt.title('Resistivity vs Voltage for Epoxy Measurements with Trend Lines')
    plt.grid(True)
    plt.legend()
    plt.ticklabel_format(axis='y', style='sci', scilimits=(0,0))
    plt.savefig(f"epoxy_resistivity_vs_voltage_{today}.png")
    plt.show()

    # --- Cleanup ---
    print("\nRestoring instrument to local control...")
    instr.write("OUTP OFF")
    instr.write("*RST")
    instr.write("SYST:LOC")
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

