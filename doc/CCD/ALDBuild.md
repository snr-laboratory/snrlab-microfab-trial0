
## 4-Way Cross
- C-0275
DN35CF-DN40CF (2.75" OD) 

## CF Caps
- f0275n000nln
FLANGE,UHV,316LN,ESR,BLANK,FXD, 2.75"OD

- IFDGG091053
INSTRUMENTATION FEEDTHROUGH, DOUBLE ENDED SUBMINIATURE-D STYLE CONNECTOR, GROUNDED SHIELD, RECESSED CONDUCTOR(S), 9 PIN, 500V AND 5 AMP RATING PER PIN, MOUNTED ON A DN40CF (2.75" OD) FLANGE, NO CONNECTORS INCLUDED

## Adapters
- F0275XQF40LB
DN35CF-DN40CF (2.75" OD) 

## 275 Convectron Gauge Cable to Pirani IGC100 
- https://www.idealvac.com/en-us/MKS-Granville-Phillips-360-or-370-Dual-Convectron-Gauge-Cable-Connects-Two-275-Convectron-Gauge-Tubes-25-ft-PN:-303040-25/pp/P104668?srsltid=AfmBOorBvFmHigdXwOFWR4SES34BYbFNIfGOyTDny1WGDq5tvc9cSUQZ

## Mounting Setup
- Solid Aluminum Plate: .187" Thick
  - Part #: 2454
  - [6061-T6 aluminum alloy](https://8020.net/2454.html)

-  30mm X 30mm T-Slotted Profile - Four Open T-Slots
  - Part #: 30-3030
  - [30mm x 30mm metric 30 series square T-slot](https://8020.net/30-3030.html)

- BOM
  - []() 

## 2 Neck RBFs - TMA
- 10mL Schlenk Flask with PTFE Stopcock
  - [Synthware™ Schlenk Flasks, Modified, with PTFE Stopcock](https://www.fishersci.com/shop/products/synthware-schlenk-flasks-modified-ptfe-stopcock-13/31501342)

## Additional 
- Residual gas analyzer 
---

# Atomic Layer Deposition (ALD) Reactor System
In order to determine more about the feasibility of the desired LAr detector and its working priniciple regarding charge transfer, we must remove the "chokepoint," which in our case is the ALD system for the growth of 50nm of Al₂O₃. This key component of growing a high quality thin film of Al₂O₃ can allow us to study the effects of the behavior of the LAr and Al₂O₃ interface and hopefully provide information on the efficiency of measuring and transporting charge. 

## Design Approach - Hot-wall Horizontal Tube Reactor
This design is simple and relatively cost effective. The nitrogen gas flows throughout the system acting as carrier and purging gas. To the immediate right of the mass flow controllers, solenoid valves are included to minimize dead volume between the valves and the chamber, ensuring sharp precursor pulses and efficient purging (gas carrier lines will also be as short as possible for these same reasons). The controllers will be connected, monitored and regulated through the ion guage controller 100. It's main function is to regulate gas flow rates by interfacing with the mass flow controllers (MFCs), based on the pressure readings it receives from the system. An Arduino is in control of the solenoid and injection valves and their timing. Injection valves are placed outside the 1300 furnace where they lead directly into the entrance of a quartz tube with stainless steel custom ends. Inside and near the middle of the 21100 tube furnace is where the deposition will take place. The hot-wall horizontal tube reactor will enable us to uniformly heat the quartz tube inside the 21100 tube furnac. The proper temperature control of the substrate and surroundings is needed in order to minimize any inconsistencies in the film growth. High uniformity is essential for testing the desired devices performance with respect to charge transfer efficiency and reproducability of high quality thin films. From there the gasses flow over the substrate and continue to the vacuum pump and are expelled through the fume hood. 

- Nitrogen carrier gas is distributed via three mass flow controllers (MFCs) for TMA, H₂O, and purge.
- Solenoid valves immediately after each MFC enable sharp, programmable pulsing.
- Precursor and purge gases are routed through a 1300°C furnace and injection valves, then into the main reactor (21100 tube furnace).
- The system is monitored and controlled by Arduino/IGC100, with final exhaust through a vacuum line and fume hood.

## Gas Flow 
The key innovation of ALD is in its ability to carefully control the introduction of the desired precursor and coreactants; and more importantly, the purging of these gases based on the sequence chemistry of growing a particular material. The sequence is based on a self-limiting surface reaction growth mechanism (i.e saturated surface-controlled reactions). 

N2 is used as the carrier and purging gas starting from the mass flow controllers (MC) to the deposition chamber and finally to the vacuum pump which will have an exhaust pipe leading into a fume hood or overhead ventillation. The purge line is redirected for faster purge times and to avoid contamination through the sharing lines. For the trimethylaluminum precursor (TMA) and water coreactants, N2 will pass through the 1300 furnace and enter the injection valves carrying along with it the desired vapors ready to be introduced into the reaction chamber. In the case of water, a 1000mL Schlenk flask (or similar) outside the furnace, will be heated in a fabric heating mantle to control the evaporation using the Lakeshore 331. 

  - [100A O408 - 1000 mL, Fabric Heating Mantle, 115V]([https://www.labdepotinc.com/p-2-series-o-hemispherical-mantle-115-v-230-v?utm_term=&utm_campaign=Zombie+SKU+PMax&utm_source=adwords&utm_medium=ppc&hsa_acc=5326096552&hsa_cam=22295522342&hsa_grp=&hsa_ad=&hsa_src=x&hsa_tgt=&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=1&gad_campaignid=22299254812&gbraid=0AAAAADnVOIccciIEedHnwzFboH2VOzjbN&gclid=CjwKCAjwv5zEBhBwEiwAOg2YKJNLFVoFzUy-GgATPyhfZLV9GP1MFsqOqQKTmzFI-yT8zFbeIrtKUBoCnwsQAvD_BwE](https://www.labdepotinc.com/p-2-series-o-hemispherical-mantle-115-v-230-v?utm_term=&utm_campaign=Zombie+SKU+PMax&utm_source=adwords&utm_medium=ppc&hsa_acc=5326096552&hsa_cam=22295522342&hsa_grp=&hsa_ad=&hsa_src=x&hsa_tgt=&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=1&gad_campaignid=22299254812&gbraid=0AAAAADnVOIccciIEedHnwzFboH2VOzjbN&gclid=CjwKCAjwv5zEBhBwEiwAOg2YKJNLFVoFzUy-GgATPyhfZLV9GP1MFsqOqQKTmzFI-yT8zFbeIrtKUBoCnwsQAvD_BwE))

The gas flow will proceed follows: surface saturation by pulsing precursor TMA, purging, self-limiting surface reaction by pulsing coreactant water, purging and then repeating each cycle for desired number for layers. The injection valve timing will need to be operated by some Adrunio setup that can synchronize the four-step cycle to ensure complete precursor delivery and purging between cycles. At the location of the HVC and entrance into the tube furnace, a pressure gauge will monitor the gas pressure. Using the needle valve on the end of the tube furnace leading to the vacuum pump, we can adjust the flow rate until we achieve the desired pressure. 

The flow sequence will be later determined though recipe development for critical information as follows:
- Valve timing: How long each injection valve remains open
- Purge duration: How long between precursor pulses to ensure complete purging
- Flow rates: Specific carrier gas flow rates during each phase
- Pressure setpoints: Target pressures for each phase of the cycle

## Electrical Schematic

<img width="1900" height="649" alt="image" src="https://github.com/user-attachments/assets/c15a2fcf-e002-4ed2-b08a-138d84da2368" />


### ALD Operation
Process Pressure Range: 0.1–5 Torr
- Operating pressures for ALD reactors from 0.1 to 10 Torr, with 1–5 Torr being common for systems using carrier gas flow.
  - At lower pressures, gas flow is in the molecular or transitional regime, where wall interactions and flow uniformity become more important.
  - At higher pressures (several Torr and above), viscous flow dominates, and turbulence or mixing can be more pronounced.

Base Pressure: Below 500 mTorr
- It is standard to evacuate the ALD chamber to a base pressure as low as possible—ideally below 500 mTorr (0.5 Torr)—to remove contaminants and residual gases.

Turbulence vs Laminar Flow
    - Turbulence increases mixing and can cause non-uniform deposition or unwanted reactions.
    - **Laminar flow is preferred for controlled, predictable gas delivery and uniform film growth**

Wall Reactions
    - Gases reacting with the tube walls before reaching the substrate can lead to precursor depletion, byproduct formation, or contamination.
    - The thermalization region should be hot enough to prevent condensation but not so long that significant wall reactions occur before the gases reach the substrate.

Effect of Changing Inner Diameter (ID)
- Sudden changes in ID (from smaller to larger, or vice versa) can cause flow disturbances, eddies, or turbulence, especially at higher pressures. Lead to regions of stagnant flow (dead zones) where gases can mix or react with walls.
- Increase the risk of precursor condensation or byproduct accumulation in larger-diameter sections.
- **Keep inner diameter as consistent as possible throughout the gas path, especially from the gas inlet through the thermalization region and into the reaction zone.**
  - If a change in diameter is unavoidable, use smooth transitions (e.g., conical reducers) rather than abrupt steps to minimize turbulence and dead zones.

-Process operates at 0.1–5 Torr, with a base pressure target below 0.5 Torr for chamber evacuation. This is in the low-pressure (transitional to molecular) flow regime, where:
  - Laminar flow is easily maintained in a straight, matched-diameter path.
  - Wall interactions and dead volume become more important than turbulence.
  - The bellows must be vacuum-tight and rated for at least 10⁻³ Torr, which all standard 4-inch KF40 bellows meet.

Gas Flow and Precursor Mixing Considerations
- Research on spatial ALD systems demonstrates that transitional flow regimes can cause precursor intermixing even in temporal ALD systems. The key concern is that transitional flow creates:
  - Unsteady flow patterns that can cause precursor mixing
  - Residence time variations across the reactor cross-section
  - Non-uniform precursor concentration profiles
  - Increased risk of CVD-like reactions

[Operating pressure influences over micro trenches in exposure time
introduced atomic layer deposition](https://pdf.sciencedirectassets.com/271451/1-s2.0-S0017931020X00044/1-s2.0-S0017931019354043/main.pdf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEG8aCXVzLWVhc3QtMSJHMEUCIC0RbSRvmnk46%2BsfDgGRA497hLRFFTeJWHzZisOsAnn4AiEAxF0UB8BOwJhx2vOK9aMstmo0da0wvMgzoK1sq1DgX%2BAqsgUIeBAFGgwwNTkwMDM1NDY4NjUiDKiDw8mI1RideEC%2BCiqPBeF49Uw%2BtVUg%2F88Lx72wI14zYLA20lPQj%2Fd%2F2ytZYvIJiFGsfIzkEM7qp97RPD0iBl94netIIMbiOqLffHhiT1n1XxXfNObormffIKvWKIq6dY8jFY5AQnJNF6mj0sB1jfZwXYEWpYmf3VJNQn2rmUWDt2NhmUGd0xSmlLhVvaqJh6I7WnuvMenMREwWQLS9DHa3udB%2FdzrbQpECWbliBXDxyDfTBlC0fLhGPlb79gi41SL0YNX5GX8llFj16ozRueiL7PBdtBXwiFV8x8v9ajESd244k%2FIpp88S3ym5%2BQZPjFPvcD6O2xRfHF39HPSs%2FaHYv%2FY0jAiKMeIlJxumt%2FVcotsQtjp%2BTgBn50r6qKtWvh3rskSvudmKQIL05eyt6vtQTiEo1sMY7CtLnGQoTkxtxvR6hVoqSI%2FqUu5crAMq2IunCj8lsJmBpVSA0JDeLMjoi1OnyRV2YHnyHe7p2vBN1iBfkm0kh5xPFcw%2BwJE4IbgEWSUKHtj3Wu2RWlrAu0mMhRkKn2kWJPFg2CWfjLDoDYCZdDcgpIFh91Pv3aZV%2BTbaMsWGNzaSWffx4VX0QwrvCf%2BwKAsKHRDF54A3GVOqClvtuwwb%2F9T3yciqpvwdKv0c9aFOd%2F1V3xsAx9uhU1NmiiLsT4gPRYTYarrhO5wJYR748rvZS4dwv25IJFL5PNJQID10zSQ4FLeEE3X3gSx5FwkIHBe3W5ihIMp%2Bw2H7DSJ99M1TmzvDVo4EQ%2FLcgbxh7ivchluAtpaDty63KbzhO8nLg0yiYg%2BxTcM94qni87WVvNXyNpxjQ20ljkQgjiHhp%2FCkA8B5x5%2FlYwX7mQ4zy8AITkkgMaKBXIJXgP%2FO6Qp%2B3%2FDM38xq67HL%2FYIwkrOvwwY6sQGwz7l1XNldFfn5uh9Yp25vpo0lbwZ9iMUo9TSYnBulsI4rMvUOm6CgCR6hSIpTM%2FHNa6bFM5Gzkem%2FZQOo%2BlP8bmIJ8t92s7Z5nYQ2TI2yGLoiLzsHwITpTbJr9SVU9OyMD%2BA%2BK3z4tSWfB7q0xE31aaIPw8F2AXXdKSfxbHfAMCggxQkPo5AMS%2Fqx%2F7JaAGkNdQ5l7LZxnvv1mlFhWijxMTzvDwkHSBtvgggolkNdosE%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20250707T150833Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAQ3PHCVTYSLATPC2B%2F20250707%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=b74aa972bb2fc659b5f70ffd8f35f3f139b3a21152472c87ac8160cfc8b5bfde&hash=2caad05412f0fb396aee1b184406c0f51e443d29a7a99d4942106716385cd838&host=68042c943591013ac2b2430a89b270f6af2c76d8dfd086a07176afe7c76c2c61&pii=S0017931019354043&tid=spdf-2882168f-dcd7-4d39-94b2-0e2cd3350f03&sid=baf325c57fd1e84aa30a52d7dcb9769df314gxrqa&type=client&tsoh=d3d3LnNjaWVuY2VkaXJlY3QuY29t&rh=d3d3LnNjaWVuY2VkaXJlY3QuY29t&ua=0f1057540c565a5d5e58&rr=95b842077d926b15&cc=us)

[Vacuum requirements](https://www.pfeiffer-vacuum.com/global/en/markets/semiconductor/deposition/ald)

ALD Operating Temperature
- For Al₂O₃ (Aluminum Oxide) deposition using TMA (trimethylaluminum) and H₂O, the optimal temperature range is typically 150–300°C for thermal ALD, with growth-per-cycle (GPC) values around 1–1.2 Å/cycle
-  Al₂O₃ films grown at 200–300°C, studies show good stability and low impurity content, suitable for high-quality dielectric applications

[Low-Temperature ALD What’s Limiting?](https://discovery.ucl.ac.uk/id/eprint/10114889/1/SEPotts%20LT-ALD%20ALD%20Fundamentals%20Workshop.pdf)

[Investigation of abnormally high growth-per-cycle in atomic layer
deposition of Al2O3 using trimethylaluminum and water](https://pdf.sciencedirectassets.com/271533/1-s2.0-S0169433221X00281/1-s2.0-S0169433221023357/main.pdf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEG8aCXVzLWVhc3QtMSJHMEUCIBzXzWfcJB6HA7re1SuymBJQXCKE1%2Ff4%2BcTqcYYVhHjfAiEArXKOM%2FdUIVCsTwtNvWTU%2BTO0PezLlEwDIA17x%2FdQRloqswUIeBAFGgwwNTkwMDM1NDY4NjUiDCBBE1XuciK8ZnkbNyqQBbv2NB44aZ0ONvM562cHHiagN7pO2ujJJ6dXoimB8VnkSHaFyysT5JDA%2FXskiFTY2%2BhhsR%2FlnTZ1wg5T4WUu4Fk856N%2FbjlR1sCLlmPVFZVNO%2Fh8o58IGkZq7O4Wc4j%2Bu873annv%2BuHsi%2FCB%2B2Isrm4d3jFUqTNCBSNRsjc3VWa6gklZCYtVlKIgy%2F7B7WMneD2ZuUlIx7BzekIJJtVRZYxBDHYtfFaWk8lk0814wwUWK1iVNEtCB1LfjEoDwTu7o3P50HX8yd%2FYyABGzMKsgvc7nbBYcmnQTfUpnQY0nBSNqQSBdWEGbvMfPKbgZ3pbdb8TJRuMXz4sySAIaUGEzCuPQI4HVEFjhzZgGaMCOAgjnUZOibYbX%2FG0QykWNwJFjUWPwlgkEt4p6TRCaGlZccjnwXso1VmmOeGrU%2FxYhuz4oxrog8h3qZ0ym%2FN4WXa6JaiZZLk%2FCnsLSTlkf%2FFls9gLFjG7vJHfPxvbMpDK8Zjds7DNvHuXl8DOw2Cha5ouAnjzc0h9X4yEqfmkru7CrWykU4gLkCMM64xO7CUdpcUoFeBqLpATNCIgj57uUv53ryKcQZn%2F%2FEDdzwigE8SBGNfj7eearwYkf18qe%2F8KzO66SI2fYIGpEAgXc%2BJcs%2BwJwzbcSLtiBB99CsJilvwXeu7ay7nbV%2B5dlJkjM7RLMwACW9t%2BAZufV8DYyk%2BlrURHoMDgT%2FYAirD8tGjvwpUS5T4wgNgQbk%2F5IGew35mckasc8zeUHf6ZcTRRfIM338SIR694woLOoc5pc0Pb7%2B0PkmpRsiSu60O7P0JEDESKnayGi8pDW%2BRGVi77t4sWvLS3v4Sve9AD3HZO5FqyT9vMhAv0t%2F7g7fkjcXP%2FAsoaawopMI7Br8MGOrEB1u15D122lyDH2kzAROlVXsYznOIi8zuFGmsaTk3UKj2ATaH8TsgdyKv1FI%2BzIcDTp8oP6OlYrVSJ2twVDIKxWkTfThx0ItSf0QA%2Bogw669zcyz9pnggwx1r22oq%2BY9nkG05L5q6xC%2BvKkbWFwnVk4deDb2xmQlNYMl6YycA8Yr0ppJRInn9icZMJOmbxOiigNhBeYIGkHqkeqX45IZxoG1vOpbhdHUp2k9tjGgVL%2BLVS&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20250707T165133Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAQ3PHCVTYY6S6M4XA%2F20250707%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=a429a7d54231d37dc5b3e3db83806511f36d5b3ff630f46c42c9039688aab5b0&hash=26e35e67dd5345e549c3bb1ac2cff20918f1dc08af68c19a462233c755797291&host=68042c943591013ac2b2430a89b270f6af2c76d8dfd086a07176afe7c76c2c61&pii=S0169433221023357&tid=spdf-693dd172-34c9-4ba1-84ad-14cd8434abcb&sid=baf325c57fd1e84aa30a52d7dcb9769df314gxrqa&type=client&tsoh=d3d3LnNjaWVuY2VkaXJlY3QuY29t&rh=d3d3LnNjaWVuY2VkaXJlY3QuY29t&ua=0f1057540c560a570b58&rr=95b8d8e7cda5e781&cc=us)

---
## Reaction Chamber
  - 21100 Tube Furnace by Barnstead Thermolyne

<img width="200" alt="image" src="https://github.com/user-attachments/assets/a2504053-541a-4f34-aba9-59b5884fd618" />

[Type F21100 Tube Furnace OPERATION MANUAL](https://www.nist.gov/system/files/documents/ncnr/E133tubefurnace.pdf)
[Thermolyne F21100 Tube Furnace](https://www.nist.gov/laboratories/tools-instruments/thermolyne-f21100-tube-furnace)

## Precursor Chamber
   - 1300 Furnace by Barnstead Thermolyne
     
<img width="200" alt="image" src="https://github.com/user-attachments/assets/3cfdc69b-89c2-40f0-955c-ded2dbba9771" />

## Regulating Gas Flow Rates 
   - Ion guage controller Model IGC100 by Stanford Research Systems
      - IGC100 features four analog input/output ports (AN1–AN4)
        - voltage in the range of ±12 VDC
       
<img width="200" alt="image" src="https://github.com/user-attachments/assets/b58488e7-c097-4541-9982-d3a0f5b98689" />

- ### Wiring
  - Connect the IGC100’s analog output to the Alicat controller’s analog input (pin 4 of the 8-pin barrel connector, or equivalent).
  - Set the IGC100’s analog output to generate a voltage between 0–5 VDC, corresponding to your desired flow rate
  - Ensure proper grounding to avoid noise or ground loops
  - Program the IGC100 to change the output voltage as needed for your ALD pulse/purge sequences.
  - Monitor and adjust as needed using the IGC100’s touchscreen or remote interface.

- ### Configuration
  - In the IGC100 menu, configure the analog port as an output.
  - Set the output voltage to the desired value for the flow rate you want.
  - GC100 can be programmed to change the output voltage based on time, pressure, or other events, allowing for automated flow control sequences

[IGC100](https://www.gmp.ch/htmlarea/pdf/srs/IGC100c_intl.pdf)

## Arduino/Python-Based Controller
- The IGC100 lacks native support for rapid ALD cycle timing (e.g., 0.01–1 sec pulses). A dedicated timing controller ensures repeatable, automated cycles.
- Controls solenoid valves for millisecond-scale pulsing.
- Low-cost but requires custom programming.

## Pressure Controller?
- Maintain stable reactor pressure during ALD cycles.
- Pressure stability prevents precursor intermixing and ensures uniform film growth. The IGC100 measures pressure but does not actively control it.
   
## Programmable Mass Flow Rate Controllers (MC)
    1) TMA precursor line: 0-100 sccm range
    2) Water precursor line: 0-100 sccm range
    3) Nitrogen carrier/purge gas: 0-500 sccm range
       
[Exploring TMA and H2O Flow Rate Effects on Al2O3](https://www.mdpi.com/2079-6412/14/5/578)

[ALD Recipe](https://www.seas.upenn.edu/~nanosop/ALD_Recipes.htm)

[Investigation and Optimization of Process Parameters on Growth Rate in Al2O3 ](https://pmc.ncbi.nlm.nih.gov/articles/PMC12072700/)

---

## Precursors/Co-reactants
   - Trimethylaluminum (TMA)
   - Water
   - N2 for sweeping gas
  
[Atomic layer deposition of Al2O3 process
emissions](https://pubs.rsc.org/en/content/articlepdf/2015/ra/c4ra14568b)

--- 

## Characterization
- X-ray Diffraction (XRD) - crystal structure and unit cell dimensions 
- Energy Dispersive X-ray Spectroscopy (EDX) - elemental analysis 
- Scanning Electron Microscopy Backscattered Electron Imaging (SEM - BEI) - sample roughness 
- Filmetrics - sample thickness
- Ellipsometry - sample thickness
  
--- 

## Items in Need of Purchase:

### Flow Controllers and Valves
Flow Controllers
- N2	Elastomer	100 SCCM	KJLMCH4BAA1 $1,480.00 3-4 Weeks (x2)
- N2	Elastomer	1000 SCCM	KJLMCK4BAA1 $1,480.00 3-4 Weeks (x2)
    - [100SCCM and 1000SCCM](https://www.lesker.com/newweb/process_instruments/mass-flow-alicat-mc.cfm)
    - [Technical Data for MC-Series Mass Flow Controllers](https://www.lesker.com/newweb/process_instruments/pdf/kjlc-specsheet-mc-10-20.pdf)
 
### General Valves
  - [JFSV00068](https://ussolid.com/products/u-s-solid-electric-solenoid-valve-1-4-24v-dc-solenoid-valve-stainless-steel-body-normally-closed-viton-seal-html?srsltid=AfmBOopZIKPCtywSAE2vqqs5Sqyfi6Rtx4oVVjlZtFwsCVOxILQsX-oa)

  - [U.S. Solid 1/4inches Stainless Steel Electric Solenoid Valve 24VDC](https://www.amazon.com/Stainless-Electric-Solenoid-Normally-Closed/dp/B00APD8M2U?psc=1&smid=A20QEF2LEKCK8G&gQT=0&utm_source=Perplexity&utm_medium=referral)

  - [1/4" Solenoid Valve - 24V DC Stainless Steel Electric Solenoid Valve](https://ussolid.com/products/u-s-solid-electric-solenoid-valve-1-4-24v-dc-solenoid-valve-stainless-steel-body-normally-closed-viton-seal-html?_pos=19&_sid=23a033fbd&_ss=r)

### Injection/ALD Valves
- Swagelok ALD3 (6LVV-ALD3TC333P-C) is an ultrahigh-purity (UHP) diaphragm valve specifically designed for atomic layer deposition (ALD) applications.

  - ALD3 with Thermal Actuator, Normally Closed
      - Thermal isolation coupling: Limits conductive heat transfer from valve body to actuator, essential when heating your ALD reactor
      - Extended actuator life: Prevents thermal degradation during heated ALD processes
      - Uniform temperature distribution: Reduces cold spots that could affect Al₂O₃ deposition uniformity
      - Lower power consumption: Significantly reduces electrical power required for valve heating
    - Normally Closed Configuration:
      - Fail-safe operation: Valve closes if air pressure is lost, protecting your Al₂O₃ deposition process from contamination
      - Process control: Better suited for precise precursor dosing typical in ALD applications
      - Technical Specifications Alignment:
      - Operating pressure: Vacuum to 145 psig (10.0 bar) - suitable for your ALD chamber
  
[Ordering Information and Dimensions (ALD3 and ALD6)](https://www.swagelok.com/downloads/webcatalogs/en/ms-02-301.pdf)

- 6LVV-ALD3BW4-P-C Swagelok 6LVV-ALD3BW4-P-C valve is a robust, high-purity, and industry-proven choice for your ALD precursor injection needs. Its materials, actuation, connection type, and temperature rating align perfectly with the requirements for delivering TMA and water vapor in Al₂O₃ ALD process, ensuring precise, contamination-free, and reliable operation.

### Needle Nose Valve
Stainless Steel Integral Bonnet Needle Valve, 0.37 Cv, 1/4 in. Swagelok Tube Fitting, Regulating Stem
- Part #: SS-1RS4
- [Stainless Steel Integral Bonnet Needle Valve](https://products.swagelok.com/en/c/straight-pattern-regulating-stem/p/SS-1RS4)

  - VIVO HOME Pump Fitting
    - Stainless Steel Swagelok Tube Fitting, Union, 1/4 in. Tube OD x 1/4 in. AN Tube Flare
    - Part #: SS-400-6-4AN
    - [Tube Fitting, Union, 1/4 in. Tube OD x 1/4 in. AN Tube Flare](https://products.swagelok.com/en/c/straights/p/SS-400-6-4AN)


### Flow Controllers Cont.
  - [Alicat - Alicat Mass Flow Controller - Standard Configuration
100 SCCM](https://store.alicat.com/checkouts/cn/Z2NwLXVzLWNlbnRyYWwxOjAxSlhOM0FOSlNDSDRTVEtaMzNaSzdGUEtB?auto_redirect=false&edge_redirect=true&locale=en-US&skip_shop_pay=true)

- [Mass Flow Controller 200SCCM - ebay 750.00](https://www.ebay.com/itm/224696824012?_skw=Alicat+MC-100SCCM-D%2F5M&itmmeta=01JXNAY7PYA123DKX735MXJF9Q&hash=item3450f970cc:g:IWIAAOSwTMNhlI4c&itmprp=enc%3AAQAKAAAA8FkggFvd1GGDu0w3yXCmi1dv5ftEkM4DvjiGLqPDECaDN9qsfmHbuElA5t0vVd%2FhvQH2%2BGzne6xJvAW642DW%2BEKi%2BKbFY1GQzox4CIexX4QAwYjxARi8ramSmCgnUEdGKMoxUaR3VmO1OccJU06kGREOAtw%2FRMAUhuFs7IxAlz9eL9cSHqCQuxH0xSziPMLYKEvWzcovgIT3TTeaYl2Iw0ZCWlwoa0REnkAla7%2Fu90Wn4dEoRLeGXpN7B%2BxkOecL6yJzi%2FxjFVN4QqPE6dKQw4NQW0EITX2vlkATzWuFLkEHQ13XK5EB7W18zpapXzrKWA%3D%3D%7Ctkp%3ABk9SR8r7-KrtZQ)
    
  - [CO2 HC Mass Flow Controller 699.00 - ebay - purge](https://www.ebay.com/itm/396331121681?_trkparms=amclksrc%3DITM%26aid%3D1110006%26algo%3DHOMESPLICE.SIM%26ao%3D1%26asc%3D264183%26meid%3De149730541c2478d8e99ba6e83e8068b%26pid%3D101429%26rk%3D10%26rkt%3D12%26sd%3D297271799704%26itm%3D396331121681%26pmt%3D1%26noa%3D0%26pg%3D2332490%26algv%3DSimPLMWebV1EmbeddedAuctionsCPCAutoManualWithCIIXAIEbertEmbRecallsUpdatedRanker0424NoIMA&_trksid=p2332490.c101429.m2460&itmprp=cksum%3A396331121681e149730541c2478d8e99ba6e83e8068b%7Cenc%3AAQAKAAABQKxsCgy5i7ztWhjg%252FVuODCBGFXnymLLtCQPw0Pb%252BAnnUrEh3Uicx%252BzponjKRRstuhNepgyA9zsxxm9WkU4eJhJNc0FnE3sWn9QNPQ9BsfycWHf4xsNkj50TMSN%252FYu8xkfDn%252Bw3ECNPKF2t0SHPE4%252BQO59tOZXlgaorUPO71sKfwDRh2VdQqxVNPdvUaWYxE4F3MqjykjhKOGO45N%252FYndLIOJXXUA%252BnS5eIsysqEVlw%252Bo1uBsS8VmPrulO%252F9X7CPEFd4FQHewc%252BYbwh%252FsTGFddCFrc5uh%252FPFwCaUXCY%252FWiuZh1wCTJzbnNfHCIwuJ1FUJmrSqrHw99IFpxG7vHu%252F2ELY%252FqgbvXw1AmpuHogYdQpxO4rxm0b1uLl8FjfkndBJ0EA1Veynb4bGWymtHrS402T52Vb3cGICF3ezXQKpDM--H%7Campid%3APL_CLK%7Cclp%3A2332490&itmmeta=01JXNB9F4W9857W8XDQMWC3ARQ)
    
  - [GAS O2 DS Mass Flow Controller 500SCCM - ebay (x4)](https://www.ebay.com/itm/226610185945?_trkparms=amclksrc%3DITM%26aid%3D1110006%26algo%3DHOMESPLICE.SIM%26ao%3D1%26asc%3D264183%26meid%3D27bf10683ee049b98980d371e7613afa%26pid%3D101429%26rk%3D7%26rkt%3D12%26sd%3D126697791403%26itm%3D226610185945%26pmt%3D1%26noa%3D0%26pg%3D2332490%26algv%3DSimPLMWebV1EmbeddedAuctionsCPCAutoManualWithCIIXAIEbertEmbRecallsUpdatedRanker0424NoIMA&_trksid=p2332490.c101429.m2460&itmprp=cksum%3A22661018594527bf10683ee049b98980d371e7613afa%7Cenc%3AAQAKAAABQKxsCgy5i7ztWhjg%252FVuODCBGFXnymLLtCQPw0Pb%252BAnnUrEh3Uicx%252BzponjKRRstuhNepgyA9zsxxm9WkU4eJhJNc0FnE3sWn9QNPQ9BsfycWHf4xsNkj50TMSN%252FYu8xkfAOPdl3GMvCFjhGIyqIQRgbhjJsu1leWkMUieCZPVK4ww94HP3VROkz9G%252BFB5mVdvcChj8EyqFVjA8J46v%252FkebvrfMry4UrlxoOC3PR1gE2a60eYXx4DTHbl%252BFU6P3iHyOGUCT7S%252BrlzNyXaZ%252Fhorra7HC%252FzRNpJxZuWrSgNo%252BFw6kBrskmgK2GBBkbdgh5OpFVponqdjyZDisMkXFI%252FO8vnYJaEKCLcxiFF1V09v9MPd95mRK9IcZG4%252BFRRZ6Mmj58lqbPJ--SB7ktAucJzOhxfIN63qw67kBqSJ%252BIctRrY%7Campid%3APL_CLK%7Cclp%3A2332490&itmmeta=01JXNBN0EHGWZQHY81TGWAYDTA)

- Mass flow controller [Omega, FMA5414A-ST]

### Valves Cont. 
- Solenoid valves [SMC, NVZ5120-5LZ-01T]
- ALD valves [Swagelok, 6LVV-ALD3TC333P-C,6LVV-A31V222P-AA]


### Pressure Sensor 

Granville-Phillips Convectron Gauge (Catalog No. 275185). The 275185 Convection-enhanced Pirani Vacuum Gauge provides reliable measurement from 10-4 Torr to atmosphere using a gold plated tungsten sensor, and features a 1/4 inch female VCR fitting.
- Convectron Pirani gauge (thermal conductivity gauge)
  - 1 × 10⁻⁴ Torr to atmosphere
  - [MKS Granville Phillips 275 Convectron Gauge Vacuum Pressure Measurement Sensor, 1/4 inch Female 4 VCR Fitting](https://www.idealvac.com/en-us/MKS-Granville-Phillips-275-Convectron-Gauge-Vacuum-Pressure-Measurement-Sensor-4-VCR-14-inch-PN:-275185/pp/P102686?srsltid=AfmBOop73eAyvhYH-7F-2SPT6Qgsy4iYLRUoBEDt8UVAGOaAF0LlQbGq)

    - 1/4" Swagelok Tube to 1/4" Male VCR Face Seal Adapter
      -  Part Number: SS-4-WVCR-6-400

      - Cable: use SRS 0105C4 Dual Pirani Gauge cable [CABLE-PIRANI-C-PIRANI-3M](https://www.vacom.net/en/cable-pirani-c-pirani-3m.html)
      - Adapter: use SRS 0105CA1 [DB15-ADAPTOR](https://www.gentec-eo.com/products/db15-adaptor)
      - Port: plug DB-15 into PIRANI port

      - Hastings-Raydist Vacuum Gauge Tube. A sensor element used in vacuum gauges to measure the pressure within a vacuum system. Specifically, designed for use in a thermal conductivity gauge (Pirani or convection gauge), which measures vacuum pressure by detecting changes in heat loss from a heated filament inside the tube.
      - The Hastings-Raydist tube serves as the sensor element for the   Convectron gauge, meaning it is the part inside the gauge that actually senses the vacuum pressure through thermal conductivity and convection effects. 

- Pirani Sensor for Chamber Pressure Monitoring  
  - InstruTech, CVG101GF

### Temperature Sensor 
- PT100 Sensor for Chamber Temperature Monitoring (Class A) 
  - Middle of furnace 
  - [RTD PT100 Thermocouple Sensor](https://www.aavadinstrument.com/product/rtd-pt100-thermocouple-sensor/)
    - Part Number: APES-6×80  

 - [Class B PT-100 Aavad](https://www.aavadinstrument.com/product/3-wire-rtd-sensor/)

  
### Gas Handling and Delivery 
- Nitrogen (N₂), high purity (99.999% or better), cylinder with appropriate regulator
- Trimethylaluminum (TMA), ALD grade
- Deionized Water (DI H₂O)
  
- Tygon Tubing to Alicat MFCs and Carrier Gas Cylinder
  - Tygon F-4040-A or Tygon 2375
    - Tygon 2375 is specifically engineered for ultra-high chemical resistance and purity. It is plasticizer-free, minimizing contamination risks, and is suitable for aggressive chemicals, including acids, bases, and organic solvents. The tubing is also clear, allowing for better visual inspection of flow and cleanliness. Its smooth inner surface reduces the risk of particulate buildup and cross-contamination

    - [Tygon® formula 2375 laboratory tubing](https://www.sigmaaldrich.com/US/en/product/aldrich/z685631)

    - [Masterflex® Transfer Tubing, Tygon® 2375, 5/16" ID x 7/16" OD; 50 FtCatalog # MFLX95630-17](https://www.avantorsciences.com/us/en/product/NA5144177/masterflex-transfer-tubing-tygon-2375-avantor)

- MFCs
  - Inlet: 1/8" NPT Male to 1/4" Hose Barb Adapter (Stainless Steel). Swagelok SS-2-HC-6 or equivalent 
  - Outlet: 1/8" NPT Male to 1/4" Hose Barb Adapter (Stainless Steel)
  - In/Outlet: [Stainless Steel Hose Connector, 1/8 in. Male NPT, 1/4 in. Hose ID](https://products.swagelok.com/en/c/connectors-plastic-tubing/p/SS-4-HC-1-2)
      - Part Number: SS-4-HC-1-2
        
- Gas Carrier
  - NPT Outlet: 1/4" NPT Male to 1/4" Hose Barb Adapter (for 1/4" NPT) or a 1/8" NPT Male to 1/4" Hose Barb Adapter (for 1/8" NPT).
  - Swagelok Compression Outlet: Swagelok 1/4" Tube to 1/4" Hose Barb Adapter
      - Part Number: SS-2-HC-6 (Swagelok), SS-4-HC-6 )

- Solenoid General Valves
  - Inlets: 1/4" Hose Barb Adapter to 1/4" NPT Male  
      - Part Number: SS-4-HC-1-4
      - [Stainless Steel Hose Connector, 1/4 in. Male NPT, 1/4 in. Hose ID](https://products.swagelok.com/en/search/?text=SS-4-HC-1-4)

  - Outlet: 1/4" NPT male to 1/4" Swagelok SS tube adapter.
      - Part Number: SS-4-TA-1-4
      - [Stainless Steel Swagelok Tube Fitting, Male Tube Adapter, 1/4 in. Tube OD x 1/4 in. Male NPT](https://products.swagelok.com/en/search/?text=SS-4-TA-1-4)
      
  

- ALD Valves
  - Inlet: Swagelok 1/4" Tube to 1/4" Male VCR® Face Seal Adapter
      - Part Number: SS-4-WVCR-6-400
      - [316 Stainless Steel Welded VCR Face Seal Fitting, Swagelok Tube Fitting Connector, 1/4 in. WVCR x 1/4 in. Tube Fitting](https://products.swagelok.com/en/c/straights/p/SS-4-WVCR-6-400)

  - Outlet:SS-4-WVCR-6-400
 
  
- Stainless Steel Tubing 
  - 1/4" OD x 0.035" wall 316/316L Stainless Steel Tubing Electropolished
      - Part Number: SS-T4-S-035-20
      - [Stainless Steel Seamless Tubing and
Tube Support Systems](https://www.swagelok.com/-/media/distributor-media/l-n/michigan/webinars/tvp/catalog--stainless-steel-seamless-tubing-and-tube-supports-ms01181-revg.ashx)

### Vacuum Fittings
Vacuum-Grade Stainless Steel Feedthrough Cap
- Feedthrough Type: 1/4" Tube OD Bulkhead Union (Swagelok SS-400-61 or equivalent)1/4" Tube OD Bulkhead Union (Swagelok SS-400-61 or equivalent)
- The cap should have three holes (one for each gas line), each sized for the bulkhead union (typically 7/16" diameter per hole for SS-400-61)

Component: Custom Entrance Cap - KF40 to Quartz Tube Transition
Application: ALD Vacuum System

Materials:
- Body: 316L stainless steel per ASTM A276
- O-rings: Viton (FKM) for high-temperature operation
- Surface finish: 32 μin Ra or better on sealing surfaces

Dimensions:
- KF40 flange side: Standard ISO-KF 40mm nominal diameter
- Quartz tube side: 50mm ± 0.1mm internal diameter accommodation
- Transition angle: 15° half-angle for optimal flow characteristics
- Overall length: 60-80mm (to be optimized for thermal expansion)

Operating Conditions:
- Vacuum level: 10⁻⁹ Torr
- Temperature range: Ambient to 300°C
- Pressure differential: Full atmospheric to vacuum
- Gas compatibility: N₂, Ar, TMA, H₂O (ALD precursors)

Sealing Requirements:
- Leak rate: < 10⁻¹⁰ Torr·L/s
- Thermal cycling: 100 cycles minimum without degradation
- Dual O-ring design preferred for redundancy

### Glassware
- 50mL Schlenk flask 
- 10 mL two-neck round-bottom flask 
  - 40 mL electro-polished stainless steel sample cylinder with top and bottom openings could be used ($200, Swagelok).
- Heating tape (precursor flasks, valves, and associated tubing)
- Glass wool 
- Aluminum foil 

### Rxn Chamber
- Quartz tube (5.08cm or 2inches) with stainless steel end connectors
  - [Quartz Tube: 50ODx44 IDx 600 L, mm (2"Dx24"L) for DIY Tube Furnace - TQ50D610](https://mtixtl.com/products/tq50d610)
  - Having 6 inches (15 cm) or more of tube extending beyond each end allows for:
    - Gas mixing and thermalization before the substrate
    - Placement of feedthroughs and sensors outside the hot zone to avoid overheating
    - Safe sealing and handling
      - Part Number: TQ50D610

- Ceramic boat for Sample 
- Quartz crystal 
  - [INFICON ALD sensors](https://www.inficon.com/en/products/thin-film-technology/ald-sensor)   




- Relay
  - [Omega SSRL240DC10 SOLID STATE RELAYS](https://rspsupply.com/p-782675-omega-ssrl240dc10-solid-state-relays.aspx)

  - Welch 1400 dual seal rotary vane pump ($3,000). 
  - Pressure monitor - Hastings dual sensor vacuum gauge model 2002 $1,200, capable of monitoring pressures between 2 Torr and 1 X 10-4 Torr.
  - To protect the vacuum pump, a liquid nitrogen trap from A&N Corp. $685
  
<img width="784" alt="image" src="https://github.com/user-attachments/assets/d8bc2839-9378-4985-8f51-45ef8371d1f5" />


--- 

## References
1) [Atomic Layer Deposition of copper - setup](https://www.youtube.com/watch?v=ih_D6OLzqo4)
2) [Cost-Effective Systems for Atomic Layer Deposition](https://pubs.acs.org/doi/full/10.1021/ed4007698)
3) [Homebuilt Reactor Design and Atomic
Layer Deposition of Metal Oxide Thin
Films](https://www.diva-portal.org/smash/get/diva2:1567530/FULLTEXT01.pdf)
4) [Design and Construction of an ALD Reactor](https://www.ecorfan.org/taiwan/research_journals/Ingenieria_Tecnologica/vol5num16/Journal_of_Technological_Engineering_V5_N16_3.pdf)
5) [The Design and Construction of a Cost-Effective Atomic Layer Deposition System for Thin Film Growth](https://ir.library.oregonstate.edu/concern/graduate_thesis_or_dissertations/zg64tt67k)
6) [The Design and Fabrication of an Atomic Layer Deposition Reactor for Coating Powders](https://digitalcommons.library.umaine.edu/cgi/viewcontent.cgi?article=1285&context=honors)
7) [Development of a powder atomic layer deposition reactor for research purposes](https://aaltodoc.aalto.fi/items/da057807-ba67-4c89-8d88-f828a46bc56b)
8) [OPERATING MANUAL FOR MASS FLOW CONTROLLERS](https://www.lesker.com/newweb/process_instruments/pdf/kjlc-manual-alicat-mc.pdf)
9) [Controling a Solenoid Valve With an Arduino](https://www.instructables.com/Controling-a-solenoid-valve-with-an-Arduino/)
10) [SNS VACUUM CONTROL SYSTEM: SOFTWARE DESIGN STRATEGY
AND COMMISSIONING EXPERIENCE*](https://accelconf.web.cern.ch/ica03/papers/WP567.pdf)
11) [A GENERAL SOLUTION FOR
COMPLEX VACUUM SYSTEM CONTROLS](https://inspirehep.net/files/c96cc3526c4c41a05b809dc187458c6e)


# Priority List
1) Atomic Layer Deposition (ALD) Tool
    - Draw schematic for tool design
      - Gas flow
      - Electrical
2) Fully understand the physical measurement process 
    - CV and how it’s related to the microphysics of the surface  
3) Detailed diagram of the surface of Al2O3 
    - Thickness and layer details 
4) Device mask (no overlapping gates)
    - Check later with simulation for  satisfactory electric field penetration and integrity. 
5) Test plan for readout schematic 
    - Exact device shape  with details  
    - Special test structure that is a separate from the device 
6) Liquid argon system
    - Argon recirculation 
    - LAr coffee brewer inspired recirculation device
7) We need mobile charge carriers in the semiconductor (LAr)
    - Create a method for generating carriers needed for CV measurements 

## Notes

# 07/14-07/18
PTFE (Polytetrafluoroethylene, known by brand names like Teflon®) is a high-performance polymer with extremely low thermal conductivity (~0.25 W/m·K), excellent chemical resistance, non-stick properties, and the ability to tolerate vacuum and mild heating environments. As a thermal barrier, PTFE is extremely effective in reducing heat flow between metal parts.

- Clean the mating surfaces (cross and collar) to remove oils/dust.
- Wrap the PTFE around the region of the vacuum cross where the collar will clamp. Ensure there is no folding or creasing, which could cause uneven pressure.
- Install the shaft collar over the PTFE barrier, tightening as specified but not excessive, PTFE is soft and may deform under very high compression.
- For best practice, slightly chamfer or smooth any sharp collar edges; PTFE is tough but prone to cold-flow under repeated high pressure.

PTFE is rated for continuous use up to ~250°C, and is stable in high vacuum. If extra thermal isolation is needed, stack two layers or consider using a thin mica washer instead.

  - PTFE Sheet: McMaster-Carr #8734K11 (6" × 6", 0.5 mm thick)
  - PTFE Tape: McMaster-Carr #7644A74 (1" wide, 0.5 mm, adhesive-backed)
    
Limit unwanted heat transfer between your support system and the critical temperature zone of your vacuum cross fitting, helping maintain stable gas/process temperatures.

DB-15 - 3-wire RTD sensor
Bolt the DB-15 feedthrough into port cap (F0275NOOONLN), and pass RTD wires through using 3 pins creating a vacuum-sealed signal path.

  - Kurt J. Lesker DB-15 feedthrough (IFDGG091053)
    - Vacuum side	Solder or crimp your RTD wires (3 for 3-wire RTD) to the inside DB-15 connector pins; insulate as needed for safety.
    - Air side	Plug a standard DB-15 matching cable into the external connector, running to your temperature controller, DAQ, or display.
    - https://www.lesker.com/feedthroughs/instrument-feedthroughs-mpdt-subd/part/ifdgg091053

4 Way Cross Parameter	Values:
- Flange size/OD	DN35CF-DN40CF (2.75" OD / 69.85 mm)
- Flange bolt circle	2.16" (54.86 mm)
- Bolt hole diameter	~0.265" (6.7 mm, accept 1/4-28 bolts)
- Number of bolts	6
- Flange style	Non-rotatable or rotatable (depending on order)
- Flange thickness	~0.5" (12.7 mm)
- Tube OD per port	1.5" (38.1 mm)
- Material	304L Stainless Steel
- UHV rating	Yes
- Nominal bore	1.32" (33.5 mm, matches 1.5" tube ID)d
- https://www.lesker.com/newweb/flanges/fittings_cf_crosses.cfm?pgid=4waystd&highlight=c-0275

CF/KF Adapter for 4 Way Cross 
- F0275XQF40 Adapter
- OD: 1.50" (38.1 mm)
- Typically built on 1.5" tube, matching CF275 cross standard
- The actual inner diameter for 1.5" tube is typically around 1.32" (33.5 mm), which is the standard for vacuum-grade 1.5" OD tubing.
- https://www.lesker.com/newweb/flanges/adapters_flanged_1.cfm?pgid=cfkf&highlight=F0275XQF40

# 07/07-07/11 
 - Remove Bellow (unwanted turbulence)
   
<img width="1000" height="540" alt="image" src="https://github.com/user-attachments/assets/2ae6380a-fd3a-4a94-bdf0-5d7db2c5c0f3" />

 - Include Emergency Shutoff

<img width="800" height="700" alt="image" src="https://github.com/user-attachments/assets/767746e8-3f11-4ec3-99bf-1968010a3956" />


 - Aluminum Support
 - Custom SS caps for quartz tube ends
    - They are available to fit work tubes with the following outside diameters: 32, 46, 60, 86, 100, 150 and 200 mm. Other sizes are available at additional cost.
    - https://www.carbolite-gero.com/products/modified-atmosphere/work-tube-accessories/
  
  - 46 OD Quartz tube (contacting company to see how much it will cost to have the 50OD custom ends made)
      - https://almathcrucibles.com/product/qua4642/

<img width="1000" height="578" alt="image" src="https://github.com/user-attachments/assets/d7d0f0b4-3b83-4d09-abe4-0ce148c12b88" />

# 07/07-07/11
- Milestone 1: Present progress and if approved (ask about emergency shutoff), revise gas flow to match electrical schematic.
    - Include part numbers to electrical schematic
    - Flexible adapter for quartz tube
    - PT100 sensor  
    - Include Emergency Shutoff
    - Adaptable for SiO2 - Si/SiO2/Si device to test if electrons behavior in LAr (preliminary test)
    - Aim to have hole-free by July 10  **not met**
- Milestone 2: Finalize a comprehensive materials list by July 10 **not met**
- Milestone 3: Place order for materials by July 11. **not met**

# Recap from Previous Week and New Deadlines (pending)
- Electrical schematic now includes liquid bubbler for the prevention of blackflow gases. The temperature range and pressure range of the tube furnace have been identified. Need verification on how the HVC150 electrical connections were represented. **HVC electrical feedthrough with boat is not necessary at this time - maybe later down the road we can revisit for the deposition of SiO2**

<img width="700" alt="image" src="https://github.com/user-attachments/assets/37d197aa-a793-4a92-8dcd-ec7f7a03ae7f" />

# 06/30-07/03
- Milestone 1: Finish gas flow design along with description by Jun 24th
  - HVC / stainless steel ends / Quartz tube still pending (moving on to electrical to get a better idea of the remaining materials) - HVC flange is 6.7cm in diameter and tube furnace diameter inlet (not quartz tube) is 4.9cm
- Milestone 2: Electrial design by Jun 27
  - **Milestone 2: Electrial design timeline was not met**
      - **Arduino Connections are taking longer than anticipated. Once this is resolved progress should move more quickly**
- Milestone 3: Material list ready to submit by Jun 30
  - **Deadline delayed a day or two - July 1 or 2**  
- Milestone 4: Order materials by Jul 1
  - **Deadline delayed - July 3**  
    - Bottleneck items:
      - high-quality MFCs
      - quartz tube with custom stainless steel ends for attaching the gas lines

<img width="900" alt="image" src="https://github.com/user-attachments/assets/1e538b04-5110-443d-ae96-7a2ad3bd4349" />

      - mechanical fitting issue and a potential gas flow/sealing problem


## Modified
### General layout is outlined below:

<img width="1000" alt="image" src="https://github.com/user-attachments/assets/77bb7023-7185-47d0-b0bc-a84bdd4a2a53" />

- Nitrogen carrier gas is distributed via three mass flow controllers (MFCs) for TMA, H₂O, and purge.
- Solenoid valves immediately after each MFC enable sharp, programmable pulsing.
- Precursor and purge gases are routed through a 1300°C furnace and injection valves, then into the main reactor (21100 tube furnace) via heated lines (HVC 150) to prevent condensation.
- The system is monitored and controlled by Arduino/IGC100, with final exhaust through a vacuum line and fume hood.

## Gas Flow 
The key innovation of ALD is in its ability to carefully control the introduction of the desired precursor and coreactants; and more importantly, the purging of these gases based on the sequence chemistry of growing a particular material. The sequence is based on a self-limiting surface reaction growth mechanism (i.e saturated surface-controlled reactions). The design outlined shows the unidirectional flow of gases. The gas flow shown below follows a single direction from the carrier/purging source all the way to the vacuum pump: 

<img width="1600" alt="image" src="https://github.com/user-attachments/assets/38c9e26a-c805-41da-98e2-ddaecbf9a2c3" />


N2 is used as the carrier and purging gas starting from the mass flow controllers (MC) to the deposition chamber and finally to the vacuum pump which will have an exhaust pipe leading into a fume hood or overhead ventillation. The purge line is redirected for faster purge times and to avoid contamination through the sharing lines. For the trimethylaluminum precursor (TMA) and water coreactants, N2 will pass through the 1300 furnace and enter the injection valves carrying along with it the desired vapors ready to be introduced into the reaction chamber. In the case of water, a 50mL Schlenk flask (or similar) outside the furnace, will be heated in a sand bath to control the evaporation, then it will proceed as usual through the 1300 furnace. 

**As precursor TMA and coreactant H2O leave the 1300 furnace and are injected into the tube furnace, the risk of vapor pressure fluctuations due to gasses condensing can result in unwanted lower quality grown films. To account for these issues, the high voltage ceramic (HVC)-150 feedthrough will ensure that the gas vapor pressure will be maintained by the HVC-150 feedthrough as well as prevent any condensation in the delivery lines. HVC IS AN ELECTRICAL FEEDTHROUGH NOT INTENDED FOR VAPOR PRESSURE CONTROL** At this point, the gas flow will proceed follows: surface saturation by pulsing precursor TMA, purging, self-limiting surface reaction by pulsing coreactant water, purging and then repeating each cycle for desired number for layers. The injection valve timing will need to be operated by some Adrunio setup that can synchronize the four-step cycle to ensure complete precursor delivery and purging between cycles. At the location of the HVC and entrance into the tube furnace, a pressure gauge will monitor the gas pressure. Using the needle valve on the end of the tube furnace leading to the vacuum pump, we can adjust the flow rate until we achieve the desired pressure. 

The flow sequence will be later determined though recipe development for critical information as follows:
- Valve timing: How long each injection valve remains open
- Purge duration: How long between precursor pulses to ensure complete purging
- Flow rates: Specific carrier gas flow rates during each phase
- Pressure setpoints: Target pressures for each phase of the cycle

## Electrical Schematic Overview
The block diagrams provide an overview of the control and power infrastructure and identifies all devices and subsystems that need electrical power, control signals, or monitoring. These include: 
- Mass Flow Controllers (MFCs) for precise gas delivery
- Solenoid and injection valves for sharp, programmable gas pulses
- Two furnaces (1300°C and 21100°C tube furnaces) for precursor vaporization and deposition
- Pressure and temperature sensors for real-time monitoring
- Vacuum pump and heat sources
- Microcontroller (Arduino) and Ion Gauge Controller (IGC100) for automation and feedback

### Components Requiring Electrical Control or Connection
<img width="500" alt="image" src="https://github.com/user-attachments/assets/dc3a087c-e022-42e9-b54e-204697789d07" />

### Block Diagram

<img width="500" alt="image" src="https://github.com/user-attachments/assets/6aeec247-d932-4730-a84f-2f59a9551f14" />

This diagram organizes these components into logical power and control “buses”:
- 120V AC Bus: Supplies high-power devices (furnaces, vacuum pump, heat source)
- 24V DC Bus: Powers solenoid valves, MFCs, and certain sensors/actuators
- 5V DC Bus: Feeds microcontrollers and low-voltage sensors

The diagram visually clarifies how each device connects to its respective power supply. The schematic ensures that all electrical requirements are mapped out before construction, highlighting the need for multiple, isolated power supplies to safely operate both high-power and sensitive control electronics ( helps identify potential overloads, grounding issues, or points of failure).  

### Essential Symbols for Electrical Schematic 

<img width="300" alt="image" src="https://github.com/user-attachments/assets/bc4eea9b-17a9-45f1-a6b2-793bdabcb26f" />






## Discarded

### Bellow
### MH-QF-C12 (Kurt J. Lesker) — Key Features

**Part Number:** MH-QF-C12
- **Vendor:** Kurt J. Lesker Company
- **Length:** 12 inches (304.8 mm)
- **Flange Type:** KF40 (NW40, ISO-KF 40)
- **Material:** 304/316L stainless steel (bellows and flanges)
- **Spring Rate:** ~6.5 N/mm (typical for this size)
- **Compression at 127 N (vacuum):** ~19.6 mm (~6.5% of length)
- **Vacuum Rating:** UHV compatible (≤10⁻⁸ Torr)
- **Temperature Rating:** Suitable for ALD (up to 200–300°C)
- **Stroke Capability:** ±24 mm (ample for thermal cycling)
- **Chemical Compatibility:** Handles N₂, TMA, H₂O, and other ALD gases
- **Connection:** Standard KF40 centering ring and clamp (no special adapters needed)
- **Lead Time:** Typically 2–3 weeks
- **Cost:** ~$161 (as of last check)

- Provides robust mechanical and thermal decoupling between rigid vacuum components and the quartz tube entrance.
- Ensures vacuum integrity and reliability during repeated ALD cycles and thermal cycling.
- Readily available, industry-standard part with proven performance in similar ALD and vacuum systems.
- Directly fits your existing CF/KF40 adapter and supports modular upgrades or maintenance.

### Ordering Information
- **Kurt J. Lesker Company**
  - Website: lesker.com
  - Phone: 1-800-245-1656
  - Request: MH-QF-C12, KF40 bellows, 12-inch

[Hydraulically (Hydro) Formed Bellows - KF (QF) Flanged (Standard Unbraided Wall)](https://www.lesker.com/newweb/flanges/bellows_kf_hydraulicallyformed.cfm?pgid=standard)


