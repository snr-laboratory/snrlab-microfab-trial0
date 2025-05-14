# PyScript Epoxy Measurements

## I/Vs for 301-2, 301-2FL, 301, 3353ND, and 832HD
<img width="600" alt="Screenshot 2025-05-13 at 3 25 33 PM" src="https://github.com/user-attachments/assets/19763b8b-25e2-4a15-b78c-efc1c3268c65" />

___
<img width="770" alt="Screenshot 2025-05-13 at 2 54 12 PM" src="https://github.com/user-attachments/assets/9841376c-191b-44e9-bbc2-32d22982eef7" />

___

## Resistivity Plots for 301-2, 301-2FL, 301, 3353ND, and 832HD
<img width="726" alt="Screenshot 2025-05-13 at 3 26 49 PM" src="https://github.com/user-attachments/assets/68e7b5cc-00be-4038-afb3-8e95cf4942ad" />

___

<img width="794" alt="Screenshot 2025-05-13 at 3 04 29 PM" src="https://github.com/user-attachments/assets/71a5778d-e5f0-4b00-b889-39e736f4ecde" />

---
## Best Candidate 
301 (New 301):
- Highest resistivity (9.4E+15 Ω·cm) 
- Stable: linear I-V behavior 
- Lowest currents (2.5-3.9 pA range) across all test voltages

## Secondary Candidates
- 301-2: Alternative with excellent resistivity (2E+15 Ω·cm)
- 301-2FL: Good option if lower viscosity is needed for better thickness control

## Questionable Epoxy Choices
- 832HD-DG: The degassed version shows much higher conductivity than non-degassed 832HD
- 353ND: Moderate performance but shows some non-linearity at higher voltages

---
## Objectives
- All tested epoxies far exceed intrinsic silicon resistivity (~2.3×10⁵ Ω·cm)
- Epoxies for this round were all degassed.
- Temperature conditions were not accurate for any of the cured epoxies
  
---
## Data Interpretation
- Positive Voltages:
  - Steeper slope → Lower resistivity 
  - Flatter slope → Higher resistivity 
- Negative Voltages: Nonlinear slopes indicate non-ohmic behavior, likely due to:
  - Charge trapping at epoxy-electrode interfaces
  - Leakage currents or polarization effects in the PCB setup
    
---
## Trends
All epoxies show increasing current with increasing voltage, but the rate of increase and magnitude differ significantly.The New 301 and 301-2 are suitable for applications requiring ultra-high resistivity (lowest leakage current), while 832HD is not recommended for such uses. New 301 consistently shows the lowest current at all voltages, indicating the highest resistivity and best insulating properties. 301-2 and 301-2FL also perform well, with 301-2FL having slightly higher current (lower resistivity) than 301-2.353ND has intermediate performance, with currents roughly an order of magnitude higher than 301-2. 832HD displays the highest measured currents, increasing rapidly with voltage, indicating it is the least resistive and thus the least effective insulator among those tested.

___
## Processing and Performance
- Degassing: Critical for maximizing resistivity by removing trapped air/moisture. Anomalous behavior of 832HD-DG suggests process control issues
- Curing Conditions: Temperature control was imprecise in current testing. Future work should standardize curing protocols
- Measurement Setup Integrity: Initial measurements showed leakage through foam base and wiring. Refined setup with new tips and proper isolation improved measurements in regards to leakage issues.

---
# Epoxy Measurments before Leakage
___
## 832HD
### I/Vs at 3 minute intervals with no degassing and room temperature curing.  
<img width="1058" alt="Screenshot 2025-05-13 at 11 42 55 AM" src="https://github.com/user-attachments/assets/36789866-770d-4298-9f06-2df89e9779c4" />

### Resistivity vs voltage measurments at 3 min
<img width="922" alt="Screenshot 2025-05-13 at 11 45 40 AM" src="https://github.com/user-attachments/assets/13ed114d-234c-4f2c-aab9-4fa2c8ad1813" />

- Note: Trials 1-5 were taken on Monday, March 24. Trials 6-8 were taken a day later.
- Epoxy may not have been fully cured 

---
## 353ND
### I/Vs at 3 minute intervals with degassing and temperature curing at 100°C (212°F) for 10 minutes - oven is not well calibrated. 
<img width="812" alt="Screenshot 2025-05-13 at 11 47 16 AM" src="https://github.com/user-attachments/assets/d3f223e8-526c-4e49-8bd7-72986346ad56" />

- Curing took place on Wednesday (three days later after it was injected into the PCB electrodes).
### Resistivity vs Voltage at 3 minute intervals
<img width="759" alt="Screenshot 2025-05-13 at 11 51 43 AM" src="https://github.com/user-attachments/assets/c86186b9-3726-4246-ac7a-288145d7438c" />

- Trials 1-5: old tips (part of the noisy wires)
- Trial 6: new tips and measurements were taken after 15 minutes

---
## 301
### I/Vs at 3 minute intervals with degassing
<img width="829" alt="Screenshot 2025-05-13 at 11 57 53 AM" src="https://github.com/user-attachments/assets/f4816ca1-3c4f-4bde-950b-aece11f87f2b" />

___
### Resistivity vs Voltage at 3 minute intervals
<img width="807" alt="Screenshot 2025-05-13 at 12 00 57 PM" src="https://github.com/user-attachments/assets/d56ca750-fe2a-46ad-83e0-53319ef3efb7" />

- Trial 5: new wires
- Trial 6: 15 minute stailization wait time
- Trial 7: new tips + 15 minute stailization wait time
- Trial 8: new tips + new 301 epoxy + 15 minute stailization wait time

---
## Combined
### I/Vs for 301, 353ND and 832HD
<img width="763" alt="Screenshot 2025-05-13 at 12 09 03 PM" src="https://github.com/user-attachments/assets/3bd31dc1-f741-4b8f-92b2-30432c7f087b" />

___
### Resistivity vs Voltage for 301, 353ND and 832HD
<img width="752" alt="Screenshot 2025-05-13 at 12 12 42 PM" src="https://github.com/user-attachments/assets/de58a98c-f852-45e3-b385-4fc731ee8669" />

- Dark blue 832HD is Trial 5
- Light blue 832HD is Trial 6 
- 353ND is Trial 2 
- 301 is Trial 3
  
### Reversed Polarity I/Vs for 301, 353ND and 832HD
<img width="831" alt="Screenshot 2025-05-13 at 2 30 30 PM" src="https://github.com/user-attachments/assets/10669ae4-57ab-43f0-86d0-24813798e396" />

___
### Reversed Polarity Resistivity vs Voltage Plots for 301, 353ND and 832HD
<img width="819" alt="Screenshot 2025-05-13 at 2 30 39 PM" src="https://github.com/user-attachments/assets/372dc6eb-5fdd-4c29-bb9a-1856a1eb28b7" />

- Purple 832HD is Trial 8
- Green 353ND is Trial 3
- Black 301 is Trial 4
  
---
## Empty 
### Leakage testing plot
<img width="987" alt="Screenshot 2025-05-13 at 1 35 29 PM" src="https://github.com/user-attachments/assets/5ff34958-9ff8-4aa1-b4d2-65709abfbecf" />

- Trials 1-3: had leakage current through foam base 
- Test 1: has the electrodes searated and gasket removed. Contact pads no longer in contact with the foam.
- Test 2: foam is removed.
- Test 3: new wires + wires not wrapped around each other
- Test 4: repeat of 3 but with setup fully tightened
- Wires were a source of leakage (bolts and wires making contact with box were considered negligible)
- Trial 4: Leakage testing retest - empty, fully assembled. (This setup still contains the old tips that were part of the noisy wires) + 15 minute stailization wait time
- Trial 5: new tips + 15 minute stailization wait time - empty, fully assembled. 

---
## Keithley 2450 SMU
### Readings with no connections
<img width="637" alt="Screenshot 2025-05-13 at 12 06 42 PM" src="https://github.com/user-attachments/assets/56662ab3-7b60-444a-9315-49536eac0a9d" />


