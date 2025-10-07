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

---

### Completion summary (20251006)

**Status:** (pending sensor integration via Lakeshore 331 and Ion Gauge 100 using control box)

## Overview
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
