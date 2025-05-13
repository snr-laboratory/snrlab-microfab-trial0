# Key Findings and Recommendations

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

## Objectives
- All tested epoxies far exceed intrinsic silicon resistivity (~2.3×10⁵ Ω·cm) 

## Data Interpretation
- Positive Voltages:
  - Steeper slope → Lower resistivity 
  - Flatter slope → Higher resistivity 
- Negative Voltages: Nonlinear slopes indicate non-ohmic behavior, likely due to:
  - Charge trapping at epoxy-electrode interfaces
  - Leakage currents or polarization effects in the PCB setup

## Trends
All epoxies show increasing current with increasing voltage, but the rate of increase and magnitude differ significantly.The New 301 and 301-2 are suitable for applications requiring ultra-high resistivity (lowest leakage current), while 832HD is not recommended for such uses. New 301 consistently shows the lowest current at all voltages, indicating the highest resistivity and best insulating properties. 301-2 and 301-2FL also perform well, with 301-2FL having slightly higher current (lower resistivity) than 301-2.353ND has intermediate performance, with currents roughly an order of magnitude higher than 301-2.832HD displays the highest measured currents, increasing rapidly with voltage, indicating it is the least resistive and thus the least effective insulator among those tested.

# Epoxy Measurments before Leakage
___
## 832HD
- I/Vs at 3 minute intervals with no degassing and room temperature curing.  
<img width="1058" alt="Screenshot 2025-05-13 at 11 42 55 AM" src="https://github.com/user-attachments/assets/36789866-770d-4298-9f06-2df89e9779c4" />

- Resistivity vs voltage measurments at 3 min
<img width="922" alt="Screenshot 2025-05-13 at 11 45 40 AM" src="https://github.com/user-attachments/assets/13ed114d-234c-4f2c-aab9-4fa2c8ad1813" />

- Note: trials 1-5 were taken on Monday, March 24 and trials 6-8 were taken a day later.
- Epoxy make still have been curing 

---
## 353ND
- I/Vs at 3 minute intervals with degassing and temperature curing at 100°C (212°F) for 10 minutes
<img width="812" alt="Screenshot 2025-05-13 at 11 47 16 AM" src="https://github.com/user-attachments/assets/d3f223e8-526c-4e49-8bd7-72986346ad56" />

- Curing took place on Wednesday (three days later after it was injected into the PCB electrodes).
- Resistivity vs Voltage at 3 minute intervals
<img width="759" alt="Screenshot 2025-05-13 at 11 51 43 AM" src="https://github.com/user-attachments/assets/c86186b9-3726-4246-ac7a-288145d7438c" />

---
## 301
- I/Vs at 3 minute intervals with degassing
<img width="829" alt="Screenshot 2025-05-13 at 11 57 53 AM" src="https://github.com/user-attachments/assets/f4816ca1-3c4f-4bde-950b-aece11f87f2b" />

- Resistivity vs Voltage at 3 minute intervals
<img width="807" alt="Screenshot 2025-05-13 at 12 00 57 PM" src="https://github.com/user-attachments/assets/d56ca750-fe2a-46ad-83e0-53319ef3efb7" />

---
## Combined
- I/Vs for 301, 353ND and 832HD
<img width="763" alt="Screenshot 2025-05-13 at 12 09 03 PM" src="https://github.com/user-attachments/assets/3bd31dc1-f741-4b8f-92b2-30432c7f087b" />

- Resistivity vs Voltage for 301, 353ND and 832HD
<img width="752" alt="Screenshot 2025-05-13 at 12 12 42 PM" src="https://github.com/user-attachments/assets/de58a98c-f852-45e3-b385-4fc731ee8669" />



---
## Empty 
- Leakage testing plot
<img width="996" alt="Screenshot 2025-05-13 at 12 04 47 PM" src="https://github.com/user-attachments/assets/b0887f7d-ae0b-4149-9906-584cc87b5a79" />


---
## Keithley 2450 SMU
- Readings with no connections
<img width="637" alt="Screenshot 2025-05-13 at 12 06 42 PM" src="https://github.com/user-attachments/assets/56662ab3-7b60-444a-9315-49536eac0a9d" />


