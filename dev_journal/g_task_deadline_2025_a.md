# Journal for tasks and deadlines

This journal documents tasks, assigned deadlines, and actual completion dates. Its purpose is to restore and strengthen a disciplined, task-oriented mindset in Gumaro Gonzalez’s research practice. Too much time has already been lost without tangible progress. Henceforth, large objectives must be broken down into smaller, concrete tasks, each with a clear deadline. These deadlines are to be respected without exception, so that progress toward Ph.D.-level work becomes steady, visible, and accountable.

---

## 20250926 Electronic control system

| Start date | Assigned deadline | Actual completion |
|------------|-------------------|-------------------|
| 20250926   | 20251003          |                   |

### Task description

- Assemble and demonstrate an electronic control system that is capable of controlling valves and sensors that satisfies the requirements for the ALD system.
- The valves (solonoids) can be dummy loads.
- Demonstrate the hardware system is entirely controlled by software both in MCU and in PC.
- Demonstrate the timing of actuation meets the ALD requirements.
- Demonstrate compliance to minimum electrical system standards.

--- 
## Task for 20251015
doc/ALD/Journal.md



## Task for 20251014
doc/ALD/Journal.md
**Fix gounding connections**

1. See if there are any sources or simulations that show the same behavior regarding the bouncing behavior we found yesterday and verify with technical data sheet. 

- other options: Determine how to use/incorporate a discriminator or consider solid state relays (SSRs).

---
## Task for 20251013
doc/ALD/Journal.md
1. Continue testing the loaded isolated TMA code as well as the latency when loaded. Probing NO on relay can help us to determine how long after the command is given does the valve actually get power? And probing IN4 can inform if the command from the Arduino is getting to the relay with the correct timing. 

**2. Measure settling time (bounce duration)**
- mini oscillations happening within CH2 - need to investigate this further to see if this will present issues 

3. Account for latency in the code
   
4. Dual-channel timing test (TMA vs. Purge Sequence) i.e measuring the timing between the TMA pulse and another event in the ALD sequence. Other timing sequences of concern in the ALD process is the delay between the end of the TMA dose and the start of the N₂ purge (which clears out the precursor). Measuring this can provide us with any unwanted delays we might need to account for in the code. 

---
## Task for 20251012
Loaded isolated TMA code test and latency loaded isolated TMA code test
- Measured the time delay between the Arduino sending the command (the rising edge of the yellow CH1 signal) and the relay's contact first making a physical connection (the start of the blue CH2 signal). The delay was determined to be 4.60ms delay and is the relay's actuation time or latency.

---
## Task for 20251011
Isolated the TMA code test - auto/+width measurment 
- The scope cursor measurement |ΔX|: 50.0ms exactly matches the delay(50) command

___

## Task for 20251010
### Rigol DS1102E digital oscilloscope cont. 
doc/ALD/Journal.md
1. Testing code vs. the relay system

- Current method (Unloaded): By connecting the scope directly to the Arduino pin with the relay disconnected, we are purely testing the software and the microcontroller's output. This is to check if the code produces a correctly timed 5V pulse to confirm the logic is sound.

- Loaded method: connect the relay and connect probe to that line (TMA), to test the system's performance. This is to see if the Arduino pin can effectively drive the relay input without the signal degrading. 

2. Testing the timing sequence
To test the timing shift between the TMA valve closing and the nitrogen purge valve opening for example, I plan to:

- Connect channel 2: Use second probe on CH2 input of the scope (Remember to set the probe and the channel to 10X - calibrate as before).

- Probe the second signal: Connect the CH2 probe tip to the Arduino pin3 or IN3 that controls nitrogen purge solenoid. Connect the CH2 ground clip to Arduino gnd.

- Activate both channels: Press CH1 and CH2 buttons on scope.

- Set trigger source: In trigger menu, keep the source set to CH1. Always start when the TMA pulse happens.

- Observe the sequence: CH1 (TMA) pulse and CH2 pulse, look for exactly when it turns on relative to the TMA pulse turning off.

- Use the time cursors to precisely measure the delay between the rising edge of the TMA signal and the falling edge of the nitrogen signal, confirming purge timing. 

--- 
## Task for 20251009
### Rigol DS1102E digital oscilloscope 
[User’s Guide](https://phas.ubc.ca/~enph259/2017-18Term1/Protected/Labs/SpecificationSheets_UserManuals/Oscilloscope/DS1000E_User_Manual.pdf?utm_source=chatgpt.com)

Formulate a plan to explore and measure the actual pulse width of the 50ms and 25ms TMA and H2O ALD pulse Arduino commands (most crucial timing of interest). Using channel 1&2 simultaneously, CH1 probe will be connected to Pin 4 (TMA) and its ground clip to the Arduino's GND (through jumpers) and second probe connects to CH2 input. Connection follows the same scheme, except for Pin 5 (H₂O) and its ground clip to the same Arduino GND. 

- Make sure to configure o-scope to 10X attenuation setting (Connect probe to gnd and square wave form on o-scope -> CH1 -> Probe -> 10X -> repeat for CH2)
  
In addition:
- Measure any differences in relay's performance and use this information to make any necessary modifications
  - code based solutions or hardware (eg solid state relays)
    
---

## Task for 20251008
### Timestamp 
Now that the elements are organized properly in the electrical box, demonstration of dummy loads meeting ALD requirements still needs to be further verified to prove that the timing sequence and time is indeed meeting the desired ALD requirements. Current suitability for ALD pulsing using delay() function are poor and not suitable for precision short reactant dosing.
  
  - Read on how to use an oscilloscope on how to do this. 

---

## Task for 20251007
### Timestamp and proper electrical organization
The demonstration of dummy loads meeting ALD requirements needs to be further verified. The addition of some form of time stamp will be researched and incorporated to prove that the timing sequence and time is indeed meeting the desired ALD requirements. In addition, the test loads will be neatly and properly wired and organzied into the electrical box to meet compliance system standards. 

---

## Completion summary 20251006

**Status:** (pending sensor integration via Lakeshore 331 and Ion Gauge 100 using control box)

### Overview
The electronic control system for the ALD setup was successfully assembled and demonstrated using cooling fans as dummy loads. The system controls five fans (TMA sequence/safety, H₂O sequence/safety, N₂ purge, TMA ALD pulse, H₂O ALD pulse) through an Arduino-based MCU and PC interface (platformio), achieving ALD-appropriate timing and sequencing.

### Hardware configuration
- **Controller:** Arduino Uno (temporary), compatible with Arduino Mega 2560 planned for final integration.  
- **Relay board:** Hong-Wei 8-channel JQC3F-05VDC-C module.
- **Power isolation:**  
  - JD-VCC, VCC, and GND of the relay module were isolated from Arduino power.  
  - A dedicated 5 VDC SMPS (Mean Well LRS-50-5) powers the relay coils, logic and three fans.
  - A 12 VDC power supply powers the remaining two fans.  
  - The Arduino shares only the signal GND with the SMPS for reference and digital pins 7-3 connect to relay logic IN1-5.  
- **Actuator load:** Dummy 12V and 5V fans were used to simulate solenoid and ALD valve coil load.  

### Control logic
- **Pulse timing (meets ALD spec for TMA/H₂O Al₂O₃):**
  - TMA PULSE MS = 50 ms
  - H2O PULSE MS = 25 ms
  - PURGE START MS = 30000 ms (initial N₂ purge)
  - PURGE MS = 10000 ms (between half-cycles)

### PENDING
- **Software interlocks:** Added functions ensure no cross over or mixing of purge, TMA, and H₂O valves to prevent simultaneous precursor exposure.
- **Emergency stop (E-STOP):** Implemented as active-LOW (NC switch to GND). The system halts all outputs if triggered during operation.

### Demonstration
- The MCU software executed full ALD-cycle logic (purge → TMA → purge → H₂O → purge) with proper sequencing and dwell times.
- Timing accuracy confirmed via serial monitoring output and LED indicators on relay board.
- Controlled fully via PC (PlatformIO serial interface) and microcontroller firmware.

### Pending
- Integration of temperature (RTD) and pressure (Ion gauge) sensors, currently operated by external Lakeshore 331 and Ion Gauge 100 controllers.

### Reflection
This milestone confirms that the ALD control hardware and timing logic meet system requirements.  
The separation of logic and power domains (Arduino vs relay coils) provides electrical safety demonstrating compliance with standard low-voltage control design practices.
