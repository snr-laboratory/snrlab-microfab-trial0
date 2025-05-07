import time
import libusb_package  # Automatically handles backend setup

try:
    # Find the Keithley 2450 device using libusb-package's 
backend
    dev = libusb_package.find(idVendor=0x05e6, idProduct=0x2450)
    if dev is None:
        print("Keithley 2450 device not found")
    else:
        print("Found Keithley 2450 device!")
        
        import usbtmc
        instr = usbtmc.Instrument(0x05e6, 0x2450, "04433491")  # 
Serial from your System Information
        instr.timeout = 5.0  # 5 seconds timeout

        print("Instrument identification:")
        print(instr.ask("*IDN?"))

        instr.write("SOUR:FUNC CURR")     # Source current
        instr.write("SOUR:CURR 10e-12")   # 10 pA
        instr.write("SOUR:CURR:VLIM 210") # 210V limit
        instr.write("SENS:FUNC 'VOLT'")   # Measure voltage

        instr.write("OUTP ON")
        time.sleep(2)  # Allow settling

        voltage = float(instr.ask("READ?"))
        print(f"Measured voltage: {voltage} V")

        resistance = voltage / (10e-12)
        print(f"Resistance: {resistance:.2e} Ω")

        instr.write("OUTP OFF")
except Exception as e:
    print(f"Error: {e}")

