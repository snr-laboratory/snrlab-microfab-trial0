# Keithley 2450 SMU Epoxy Measurements
### **Overview**
This document summarizes the electrical characterization of several epoxy candidates for fusing a single perovskite crystal onto a Si-CMOS ASIC. Two measurement phases were conducted:

- Manual/Before Leakage: Early measurements using manual current recording and initial test setup. Some measurements were affected by setup leakage and were not degassed.

- PyScript/After Leakage Fixes: Automated measurements using a Python script
  
  - All measurements were sourcing voltage and measuring current
  - Measurment range: 10nA
  - Range (voltage): 200V
  - Limit: 10.5nA
  - Script Measurements are recorded after 15 minutes
  - Manual measurements were recorded after 3 minutes

# **Updated Script and Manual Epoxy Resistivity Measurments** 
<img width="631" alt="Screenshot 2025-05-22 at 10 15 30 AM" src="https://github.com/user-attachments/assets/dc1e2810-b024-4b34-8502-2ba65203127b" />

<img width="633" alt="Screenshot 2025-05-20 at 12 50 04 AM" src="https://github.com/user-attachments/assets/5ed23f7d-af01-4904-bcd4-56e4f2a265d9" />

<img width="883" alt="Screenshot 2025-05-20 at 12 49 42 AM" src="https://github.com/user-attachments/assets/cf1c03e2-81ae-4319-8814-ea0379e74ec3" />


- EPO-TEK 301: Highest measured resistivity: 9.4E+15 Ω·cm and lowest measured current across all voltages (best insulator).
- JB Weld: Very low resistivity: 9.2E+11 Ω·cm (poorest insulator)
- MG Chemicals 832HD: Measured resistivity matches very well with actual resistivity
- EPO-TEK 353ND: 2nd best measured resistivity within actual resistivity range
- Gorilla Glue script and manual measurements match very well.
- Range of resistivity: E+11-E+15 Ω·cm

---

<img width="735" alt="Screenshot 2025-05-20 at 12 34 34 AM" src="https://github.com/user-attachments/assets/7b48441a-7646-4e31-ad8f-07910046d2eb" />

<img width="768" alt="Screenshot 2025-05-20 at 1 01 24 AM" src="https://github.com/user-attachments/assets/bbb38f59-9045-4fd8-880c-cfba2a3c97df" />

<img width="929" alt="Screenshot 2025-05-20 at 1 00 49 AM" src="https://github.com/user-attachments/assets/92c08f50-31ca-48f8-bf1a-e05c0118b52b" />


- EPO-TEK 301: Highest measured resistivity: 2.6E+14 Ω·cm (lower than script, but still highest in this set)
- MG Chemicals 832HD and EPO-TEK 353ND show the best resistivity matching with TDS
- JB Weld:Very low resistivity: 9.2E+11 Ω·cm
- Range of resistivity: E+11-E+14 Ω·cm
- Manual measurements show more scatter and slightly lower resistivity values than script data, but the ranking/order of materials is mostly  consistent.

--- 

# Combined PyScript Epoxy Measurements & Epoxy Measurments before Leakage

<img width="1383" alt="Screenshot 2025-05-15 at 5 59 12 PM" src="https://github.com/user-attachments/assets/4bfa09fb-156e-4993-89fc-9af7ae8a0336" />

---

# PyScript Epoxy Measurements 

### **Updated to Include Gorilla Glue**
<img width="1152" alt="Screenshot 2025-05-15 at 10 47 56 AM" src="https://github.com/user-attachments/assets/c596d94b-5465-4866-9524-e0b9ccb66f8c" />

- Gorilla Glue has linearlity matching in positve and negative bias for the script, but deviates slightly when measurements are carried out manually (current is higher).
  

### **Current vs Voltage for 301-2, 301-2FL, 301, 353ND, and 832HD** 
<img width="588" alt="Screenshot 2025-05-13 at 9 57 32 PM" src="https://github.com/user-attachments/assets/0a3c51ec-cd2c-46dd-86a0-b593b07efdaf" />

- 301 (green line) demonstrates the lowest measured current across all voltages, with a nearly flat trend, indicating the highest resistivity and best insulating properties among the tested epoxies.
- 301-2 (dark blue) and 301-2FL (orange) show slightly higher currents, with 301-2FL being slightly more conductive than 301-2. Both suitable for high-resistivity applications.
- 353ND (light blue) exhibits higher current values and a steeper trend, reflecting lower resistivity.
- 832HD-DG (purple) has by far the highest measured current and the steepest slope, indicating it is the least resistive and least suitable for applications requiring strong electrical insulation.
___

### **Reverse Polarity (Current vs Voltage) Included** 
<img width="770" alt="Screenshot 2025-05-13 at 2 54 12 PM" src="https://github.com/user-attachments/assets/9841376c-191b-44e9-bbc2-32d22982eef7" />

- 301 (green), 301-2 (blue), and 301-2FL (orange):
Exhibit very low and nearly symmetric currents for both positive and negative voltages. Their trendlines are nearly flat, indicating high resistivity and excellent insulating properties regardless of polarity. Minimal deviation between forward and reverse sweeps suggests stable ohmic behavior.
___

### **Resistivity Plots for 301-2, 301-2FL, 301, 353ND, and 832HD** 
<img width="726" alt="Screenshot 2025-05-13 at 3 26 49 PM" src="https://github.com/user-attachments/assets/68e7b5cc-00be-4038-afb3-8e95cf4942ad" />

___

<img width="677" alt="Screenshot 2025-05-14 at 12 31 15 PM" src="https://github.com/user-attachments/assets/49360a2d-ad32-484c-b588-d67869ee04eb" />

- 301 is the top-performing epoxy for high-resistivity, high-insulation applications.
- The plot also reinforces that 301-2 and 301-2FL are viable alternatives, while 353ND and 832HD-DG are not as suitable.

---

## Best Candidate 
301 (New 301):
- Highest resistivity (9.4E+15 Ω·cm) 
- Stable: linear I-V behavior 
- Lowest currents (2.5-3.9 pA range) across all test voltages

## Secondary Candidates
- 301-2: Alternative with excellent resistivity (2E+15 Ω·cm)
- 301-2FL: Good option if lower viscosity is needed for better thickness control

---

## Objectives
- All tested epoxies far exceed intrinsic silicon resistivity (~2.3×10⁵ Ω·cm)
- Epoxies for this round were all degassed.
- Temperature conditions were not accurate for any of the cured epoxies
   
---

## Processing and Performance
- Degassing: Critical for maximizing resistivity by removing trapped air/moisture. Odd behavior of 832HD-DG suggests process control issues
- Curing Conditions: Temperature control was imprecise in current testing. Future work should standardize curing protocols
- Measurement Setup Integrity: Initial measurements showed leakage through foam base and wiring. Refined setup with new tips and proper isolation improved measurements in regards to leakage issues.

___

## Trends
All epoxies show increasing current with increasing voltage, but with differing rates. The New 301 and 301-2 are suitable for applications requiring high resistivity, while 832HD is not recommended. New 301 consistently shows the lowest current at all voltages, indicating the highest resistivity and best insulating properties. 301-2 and 301-2FL also perform well, with 301-2FL having slightly higher current (lower resistivity) than 301-2. 353ND has intermediate performance, with currents roughly an order of magnitude higher than 301-2. 832HD displays the highest measured currents, increasing rapidly with voltage, indicating it is the least resistive and thus the least effective insulator among those tested.


---

# Epoxy Measurments before Leakage

## Combined

### **Updated to Include Gorilla Glue**

<img width="1269" alt="Screenshot 2025-05-15 at 5 20 44 PM" src="https://github.com/user-attachments/assets/a14424fb-d355-4dc4-b746-3bc21c4ef459" />

- In both manual and PyScript measurements, all epoxies exhibit increasing current with increasing voltage; however, the rate of increase differs. The general ranking of 301 and 301-2 as best performers, and 832HD as poorest is consistent across both phases

### **Current vs Voltage for 301, 353ND and 832HD**
<img width="763" alt="Screenshot 2025-05-13 at 12 09 03 PM" src="https://github.com/user-attachments/assets/3bd31dc1-f741-4b8f-92b2-30432c7f087b" />

- 353ND highest slope reflecting lower resistivity (poorer insulator)
- 832HD has some serious deviations.
- 301 is the best insulator 
___
### **Resistivity vs Voltage for 301, 353ND and 832HD**
<img width="752" alt="Screenshot 2025-05-13 at 12 12 42 PM" src="https://github.com/user-attachments/assets/de58a98c-f852-45e3-b385-4fc731ee8669" />

- Dark blue 832HD is Trial 5
- Light blue 832HD is Trial 6 
- 353ND is Trial 2 
- 301 is Trial 3

  - 301 Displays the highest resistivity, increasing with voltage


### **Reversed Polarity (Current vs Voltage) for 301, 353ND and 832HD**
<img width="831" alt="Screenshot 2025-05-13 at 2 30 30 PM" src="https://github.com/user-attachments/assets/10669ae4-57ab-43f0-86d0-24813798e396" />

- 301 Continues to show the lowest current in the negative voltage region, maintaining symmetry with its positive voltage behavior.

___
### **Reversed Polarity Resistivity vs Voltage Plots for 301, 353ND and 832HD**
<img width="819" alt="Screenshot 2025-05-13 at 2 30 39 PM" src="https://github.com/user-attachments/assets/372dc6eb-5fdd-4c29-bb9a-1856a1eb28b7" />

- Purple 832HD is Trial 8
- Green 353ND is Trial 3
- Black 301 is Trial 4

- Overall the I/V behvior in the negative and positive regions had similar slope behavior. The trend was mostly observed for the resistivity plots as well but 301 and 353ND had some noticeable deviations
  

___
## 832HD
### **Current vs Voltage at 3 minute intervals (no degassing and room temperature curing)**  
<img width="1058" alt="Screenshot 2025-05-13 at 11 42 55 AM" src="https://github.com/user-attachments/assets/36789866-770d-4298-9f06-2df89e9779c4" />

### **Resistivity vs voltage measurments at 3 min**
<img width="922" alt="Screenshot 2025-05-13 at 11 45 40 AM" src="https://github.com/user-attachments/assets/13ed114d-234c-4f2c-aab9-4fa2c8ad1813" />

- Note: Trials 1-5 were taken on Monday, March 24. Trials 6-8 were taken a day later.
- This plot reveals significant time-dependent behavior in 832HD epoxy during room temperature curing. Measured currents vary dramatically between trials (at comparable voltages), indicating that electrical properties are actively changing during the curing process.
- Distinct groupings are visible
  
---
## 353ND
### **Current vs Voltage at 3 minute intervals with degassing and temperature curing at 100°C (212°F) for 10 minutes (oven is not well calibrated)** 
<img width="812" alt="Screenshot 2025-05-13 at 11 47 16 AM" src="https://github.com/user-attachments/assets/d3f223e8-526c-4e49-8bd7-72986346ad56" />

- Curing took place on Wednesday (three days later after it was injected into the PCB electrodes).
### **Resistivity vs Voltage at 3 minute intervals**
<img width="759" alt="Screenshot 2025-05-13 at 11 51 43 AM" src="https://github.com/user-attachments/assets/c86186b9-3726-4246-ac7a-288145d7438c" />

- Trials 1-5: old tips (part of the noisy wires)
- Trial 6: new tips and measurements were taken after 15 minutes

All trials show a linear increase in current with voltage, but there is noticeable variation in both slope and intercept between trials:
- Trial 3 (green): shows the highest current and steepest slope, indicating lower resistance.
- Trials 1, 2, and 4: cluster more closely, with lower currents and similar slopes.
- Trials 3 & 5: shows similiar slope behavior to positive bias region

- Odd Behavior: Despite using new tips and waiting 15 minutes, this trial (and others - 301) shows an increase in current than earlier trials.
  
---
## 301
### **Current vs Voltage at 3 minute intervals with degassing**
<img width="829" alt="Screenshot 2025-05-13 at 11 57 53 AM" src="https://github.com/user-attachments/assets/f4816ca1-3c4f-4bde-950b-aece11f87f2b" />

___
### **Resistivity vs Voltage at 3 minute intervals**
<img width="807" alt="Screenshot 2025-05-13 at 12 00 57 PM" src="https://github.com/user-attachments/assets/d56ca750-fe2a-46ad-83e0-53319ef3efb7" />

- Trial 5: new wires
- Trial 6: 15 minute stailization wait time
- Trial 7: new tips + 15 minute stailization wait time
- Trial 8: new tips + new 301 epoxy + 15 minute stailization wait time

Trials 1-7 show a pattern the way they are clustered, with slight deviations. The trendline behavior follows into the negative region. Also, its difficult to tell the effect of leakage regarding Trials 5-7, but Trial 8 definitely had a major impact on observed slope.   

  
---
## Empty 
### **Leakage Testing Plot**
<img width="987" alt="Screenshot 2025-05-13 at 1 35 29 PM" src="https://github.com/user-attachments/assets/5ff34958-9ff8-4aa1-b4d2-65709abfbecf" />

Trials 1-3 clearly created a group and the non-foam also created a grouping of the data. The effects of leakage can be largely attributed to the foam being removed 

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
### **Readings with no connections**
<img width="637" alt="Screenshot 2025-05-13 at 12 06 42 PM" src="https://github.com/user-attachments/assets/56662ab3-7b60-444a-9315-49536eac0a9d" />


