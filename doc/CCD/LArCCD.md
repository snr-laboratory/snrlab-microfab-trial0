# Fab plan (Priority List) 
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

---

# Atomic Layer Deposition (ALD) Reactor System
In order to determine more about the feasibility of the desired LAr detector and its working priniciple regarding charge transfer, we must remove the "chokepoint," which in our case is the ALD system for the growth of 50nm of Al₂O₃. This key component of growing a high quality thin film of Al₂O₃ can allow us to study the effects of the behavior of the LAr and Al₂O₃ interface and hopefully provide information on the efficiency of measuring and transporting charge. 

## Design Approach
1) Hot-wall horizontal tube reactor
This design is simple and relatively cost effective. The general layout is outlined below:

<img width="1700" alt="image" src="https://github.com/user-attachments/assets/454e370d-ef92-4154-9cde-30939b1bb167" />

The hot-wall horizontal tube reactor will enable us to uniformly heat the quartz tube inside the 21100 tube furnace (still working on the diameter size of the tube in order to achieve a laminar vs a turbelent flow). The proper temperature control of the substrate and surroundings is needed in order to minimize any inconsistencies in the film growth. High uniformity is essential for testing the desired devices performance with respect to charge transfer efficiency and reproducability of high quality thin films. 

## Gas Flow Schematic
The key innovation of ALD is in its ability to carefully control the introduction of the desired precursor and coreactants and most importantly, the purging of these gases based on the sequence chemistry of growing a particular material. The sequence is based on a self-limiting surface reaction growth mechanism (i.e saturated surface-controlled reactions). The design outlined shows the unidirectional flow of gases. The gas flow shown below follows a single direction from the carrier/purging source all the way to the vacuum pump: 

<img width="1700" alt="image" src="https://github.com/user-attachments/assets/af238a8a-b2d4-46e4-910b-27dd67583e1f" />

   - 21100 Tube Furnace by Barnstead Thermolyne

N2 is used as the carrier and purging gas from the mass flow controllers (MC) to the deposition chamber and finally to the vacuum pump which will have an exhaust pipe leading into a fume hood or overhead ventillation. (still need to weight the benefits of redirecting the purge line (eg faster purge times, avoid contamination through sharing lines, etc...). For the trimethylaluminum precursor (TMA) and water coreactants, N2 will pass through the 1300 furnace and enter the injection valves carrying along with it the desired vapors ready to be introduced into the reaction chamber. In the case of water, a 50mL Schlenk flask (or similar) outside the furnace, will be heated in a sand bath to control the evaporation, then it will proceed as usual through the 1300 furnace. 

As precursor TMA and coreactant H2O leave the 1300 furnace and are injected into the tube furnace, the risk of vapor pressure fluctuations due to gasses condensing can results in unwanted results in regards to the quality of the films grown. To account for these issues, the high voltage ceramic (HVC)-150 feedthrough will ensure that the gas vapor pressure will be maintained by the HVC-150 feedthrough as well as prevent any condensation in the delivery lines. At this point, the gas flow will proceed by surface saturation by pulsing TMA, purging, self-limiting surface reaction by pulsing water, purging and then repeating each cycle for desired number for layers. The injection valve timing will need to be operated by some Adrunio setup that can synchronize the four-step cycle to ensure complete precursor delivery and purging between cycles. At the location of the HVC and entrance into the tube furnace, a pressure gauge will read the pressure and using the needle valve, on the end of the tube furnace leading to the vacuum pump, we can adjust the flow rate until we achieve the desired pressure. 

The flow squence will be later determined though recipe development for critical inforamtion as follows:
- Valve timing: How long each injection valve remains open
- Purge duration: How long between precursor pulses to ensure complete purging
- Flow rates: Specific carrier gas flow rates during each phase
- Pressure setpoints: Target pressures for each phase of the cycle









2) Precursor chamber
   - 1300 Furnace by Barnstead Thermolyne
     
<img width="200" alt="image" src="https://github.com/user-attachments/assets/3cfdc69b-89c2-40f0-955c-ded2dbba9771" />

3) Controlling Gas Flow
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

### Arduino/Python-Based Controller:
- The IGC100 lacks native support for rapid ALD cycle timing (e.g., 0.01–1 sec pulses). A dedicated timing controller ensures repeatable, automated cycles.
- Controls solenoid valves for millisecond-scale pulsing.
- Low-cost but requires custom programming.

### Pressure Controller?
- Maintain stable reactor pressure during ALD cycles.
- Pressure stability prevents precursor intermixing and ensures uniform film growth. The IGC100 measures pressure but does not actively control it.
   
4) Programmable Flow Rate Controllers
    1) TMA precursor line: 0-100 sccm range
    2) Water precursor line: 0-100 sccm range
    3) Nitrogen carrier/purge gas: 0-500 sccm range
       
[Exploring TMA and H2O Flow Rate Effects on Al2O3](https://www.mdpi.com/2079-6412/14/5/578)
[ALD Recipe](https://www.seas.upenn.edu/~nanosop/ALD_Recipes.htm)
[Investigation and Optimization of Process Parameters on Growth Rate in Al2O3 ](https://pmc.ncbi.nlm.nih.gov/articles/PMC12072700/)

### Vendor Kurt J. Lesker Company
  - N2	Elastomer	100 SCCM	KJLMCH4BAA1 $1,480.00 3-4 Weeks (x2)
  - N2	Elastomer	1000 SCCM	KJLMCK4BAA1 $1,480.00 3-4 Weeks (x2)
    - [100SCCM and 1000SCCM](https://www.lesker.com/newweb/process_instruments/mass-flow-alicat-mc.cfm)
    - [Alicat - Alicat Mass Flow Controller - Standard Configuration
100 SCCM](https://store.alicat.com/checkouts/cn/Z2NwLXVzLWNlbnRyYWwxOjAxSlhOM0FOSlNDSDRTVEtaMzNaSzdGUEtB?auto_redirect=false&edge_redirect=true&locale=en-US&skip_shop_pay=true)

  - [Mass Flow Controller 200SCCM - ebay 750.00](https://www.ebay.com/itm/224696824012?_skw=Alicat+MC-100SCCM-D%2F5M&itmmeta=01JXNAY7PYA123DKX735MXJF9Q&hash=item3450f970cc:g:IWIAAOSwTMNhlI4c&itmprp=enc%3AAQAKAAAA8FkggFvd1GGDu0w3yXCmi1dv5ftEkM4DvjiGLqPDECaDN9qsfmHbuElA5t0vVd%2FhvQH2%2BGzne6xJvAW642DW%2BEKi%2BKbFY1GQzox4CIexX4QAwYjxARi8ramSmCgnUEdGKMoxUaR3VmO1OccJU06kGREOAtw%2FRMAUhuFs7IxAlz9eL9cSHqCQuxH0xSziPMLYKEvWzcovgIT3TTeaYl2Iw0ZCWlwoa0REnkAla7%2Fu90Wn4dEoRLeGXpN7B%2BxkOecL6yJzi%2FxjFVN4QqPE6dKQw4NQW0EITX2vlkATzWuFLkEHQ13XK5EB7W18zpapXzrKWA%3D%3D%7Ctkp%3ABk9SR8r7-KrtZQ)
    
  - [CO2 HC Mass Flow Controller 699.00 - ebay - purge](https://www.ebay.com/itm/396331121681?_trkparms=amclksrc%3DITM%26aid%3D1110006%26algo%3DHOMESPLICE.SIM%26ao%3D1%26asc%3D264183%26meid%3De149730541c2478d8e99ba6e83e8068b%26pid%3D101429%26rk%3D10%26rkt%3D12%26sd%3D297271799704%26itm%3D396331121681%26pmt%3D1%26noa%3D0%26pg%3D2332490%26algv%3DSimPLMWebV1EmbeddedAuctionsCPCAutoManualWithCIIXAIEbertEmbRecallsUpdatedRanker0424NoIMA&_trksid=p2332490.c101429.m2460&itmprp=cksum%3A396331121681e149730541c2478d8e99ba6e83e8068b%7Cenc%3AAQAKAAABQKxsCgy5i7ztWhjg%252FVuODCBGFXnymLLtCQPw0Pb%252BAnnUrEh3Uicx%252BzponjKRRstuhNepgyA9zsxxm9WkU4eJhJNc0FnE3sWn9QNPQ9BsfycWHf4xsNkj50TMSN%252FYu8xkfDn%252Bw3ECNPKF2t0SHPE4%252BQO59tOZXlgaorUPO71sKfwDRh2VdQqxVNPdvUaWYxE4F3MqjykjhKOGO45N%252FYndLIOJXXUA%252BnS5eIsysqEVlw%252Bo1uBsS8VmPrulO%252F9X7CPEFd4FQHewc%252BYbwh%252FsTGFddCFrc5uh%252FPFwCaUXCY%252FWiuZh1wCTJzbnNfHCIwuJ1FUJmrSqrHw99IFpxG7vHu%252F2ELY%252FqgbvXw1AmpuHogYdQpxO4rxm0b1uLl8FjfkndBJ0EA1Veynb4bGWymtHrS402T52Vb3cGICF3ezXQKpDM--H%7Campid%3APL_CLK%7Cclp%3A2332490&itmmeta=01JXNB9F4W9857W8XDQMWC3ARQ)
    
  - [GAS O2 DS Mass Flow Controller 500SCCM - ebay (x4)](https://www.ebay.com/itm/226610185945?_trkparms=amclksrc%3DITM%26aid%3D1110006%26algo%3DHOMESPLICE.SIM%26ao%3D1%26asc%3D264183%26meid%3D27bf10683ee049b98980d371e7613afa%26pid%3D101429%26rk%3D7%26rkt%3D12%26sd%3D126697791403%26itm%3D226610185945%26pmt%3D1%26noa%3D0%26pg%3D2332490%26algv%3DSimPLMWebV1EmbeddedAuctionsCPCAutoManualWithCIIXAIEbertEmbRecallsUpdatedRanker0424NoIMA&_trksid=p2332490.c101429.m2460&itmprp=cksum%3A22661018594527bf10683ee049b98980d371e7613afa%7Cenc%3AAQAKAAABQKxsCgy5i7ztWhjg%252FVuODCBGFXnymLLtCQPw0Pb%252BAnnUrEh3Uicx%252BzponjKRRstuhNepgyA9zsxxm9WkU4eJhJNc0FnE3sWn9QNPQ9BsfycWHf4xsNkj50TMSN%252FYu8xkfAOPdl3GMvCFjhGIyqIQRgbhjJsu1leWkMUieCZPVK4ww94HP3VROkz9G%252BFB5mVdvcChj8EyqFVjA8J46v%252FkebvrfMry4UrlxoOC3PR1gE2a60eYXx4DTHbl%252BFU6P3iHyOGUCT7S%252BrlzNyXaZ%252Fhorra7HC%252FzRNpJxZuWrSgNo%252BFw6kBrskmgK2GBBkbdgh5OpFVponqdjyZDisMkXFI%252FO8vnYJaEKCLcxiFF1V09v9MPd95mRK9IcZG4%252BFRRZ6Mmj58lqbPJ--SB7ktAucJzOhxfIN63qw67kBqSJ%252BIctRrY%7Campid%3APL_CLK%7Cclp%3A2332490&itmmeta=01JXNBN0EHGWZQHY81TGWAYDTA)

5) Precursors/Co-reactants
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
- Mass Flow Controllers (x3)
- Solenoid valves/injection ports/Control valves 
- Nitrogen Gas
- Trimethylaluminum
- DI H2O
- Quartz tube (5.08cm or 2inches) with stainless steel end connectors
  - Ace Glass and A&N Corp., respectively; $600
- Temperature monitor  
  - Middle of furnace 
  - Entry
- Ceramic boat (x2 Sample and Al2O3)
- 50mL Schlenk flask 
- 10 mL two-neck round-bottom flask 
  - 40 mL electro-polished stainless steel sample cylinder with top and bottom openings could be used ($200, Swagelok).  
- Heating tape (precursor flasks, valves, and associated tubing)
- Welch 1400 dual seal rotary vane pump ($3,000). 
- Pressure monitor - Hastings dual sensor vacuum gauge model 2002 $1,200, capable of monitoring pressures between 2 Torr and 1 X 10-4 Torr. 
- To protect the vacuum pump, a liquid nitrogen trap from A&N Corp. $685
- Heating tape
- Glass wool 
- Aluminum foil 
- Tygon tubing
  
<img width="784" alt="image" src="https://github.com/user-attachments/assets/d8bc2839-9378-4985-8f51-45ef8371d1f5" />

 
--- 

## Additional Considerations
Consider the need for a load-lock or system that can transport susbtrate without the risk of contamination

--- 

## References
1) [Atomic Layer Deposition of copper - setup](https://www.youtube.com/watch?v=ih_D6OLzqo4)
2) [Cost-Effective Systems for Atomic Layer Deposition](https://pubs.acs.org/doi/full/10.1021/ed4007698)
3) [Homebuilt Reactor Design and Atomic
Layer Deposition of Metal Oxide Thin
Films](https://www.diva-portal.org/smash/get/diva2:1567530/FULLTEXT01.pdf)
4) [Design and Construction of an ALD Reactor](https://www.ecorfan.org/taiwan/research_journals/Ingenieria_Tecnologica/vol5num16/Journal_of_Technological_Engineering_V5_N16_3.pdf)
5) [OPERATING MANUAL FOR MASS FLOW CONTROLLERS](https://www.lesker.com/newweb/process_instruments/pdf/kjlc-manual-alicat-mc.pdf)
6) 

---

## **LAr-CCD Detector**

The proposed detector layered architecture consists of a silicon substrate base, metal gate electrodes, a 50 nm aluminum oxide (Al₂O₃) layer deposited via atomic layer deposition (ALD), and liquid argon as the detection medium. There is an external electric field being applied to this detector so if ionization in LAr creates free electrons they will drift towards the Al₂O₃ surface/interface. This device is inspired and mimics the charge coupled device operation.

<img width="576" alt="image" src="https://github.com/user-attachments/assets/18399874-a637-46dd-b09c-d9c7c1116cf0" />

Figure 1. Architecture of the proposed detector inspired by the operation and design of the charge coupled device (CCD). In this configuration, LAr is acting as the semiconductor resembling a standard CCD but with an inverted design as can be seen by the positioning of the oxide layer.

<img width="1000" alt="image" src="https://github.com/user-attachments/assets/3092b04a-0a29-4dab-bf99-92ff81f00a73" />

Figure 2. Close up of the LAr/Al₂O₃ interface with two different possible cases for interface behavior. Case 2 shows an exaggerated situation in which the LAr is extremely hydrophobic to the Al₂O₃ surface. 

Although ALD is considered the gold standard for producing high quality thin films, especially in thickness control and uniformity, we can expect there to be some surface roughness resulting in void spaces. This difference in contact will have an effect on the efficiency of charge transfer. The 50nm thickness for the Al₂O₃ is to ensure we have sufficient capacitive coupling between the electrodes and the LAr, better charge transfer efficiency, desirable interface properties and reproducability. 

Research on CCD gate oxides confirms that there exists an optimal thickness range for maintaining both electrical performance and reliability, with 50 nm falling within this optimized range for cryogenic liquid applications. The mechanical stress from thermal contraction is manageable at this thickness, avoiding cracking or delamination issues that could occur with thicker films. The 50 nm Al₂O₃ thickness thus represents a carefully optimized choice that balances electrical performance, reliability, manufacturability, and providing the necessary capacitive coupling while maintaining robust breakdown characteristics under cryogenic operating conditions.

<img width="900" alt="image" src="https://github.com/user-attachments/assets/df1f7508-97a5-4eba-819c-c9552a318de0" />

Figure 3. CCD readout parallel shift register with three phase device with parallel gate electrodes to move charge packets simultaneously along defined channels.

---

## **Operation**

A fundamental operating principle of the device involves using the gate electrodes to establish and manipulate “potential wells” within the liquid argon volume. When a potential is applied to one gate electrode, capacitive coupling generates a “potential well” in the LAr that attracts and confines negative charges. By modulating the potentials on adjacent electrodes, you create penetrating electric fringing fields that allow for controlled lateral charge transfer between wells. The success of this approach depends critically on the quality of the LAr/Al₂O₃ interface, as this boundary mediates the coupling between the electric fields generated by the gate electrodes and the charges within the liquid argon.

---

## **Basic Device Fabrication Plan**
Material Selection and Process Flow:
1) Substrate should be Si since it is the industry standard.
- Consider buying SiO₂ on Si wafer to isolate the metal from the bulk Si. Without SiO₂, applying voltage to a metal electrode with direct contact with silicon will result in having to driving current flow through the substrate (ie limited voltage handling and possible device breakdown). 

- **The silicon’s main role is to to proivde mechanical integrity.** 

- Wafer Diameter: 2-inch or 4-inch/50–100 mm diameter
  - Thickness: 500um: Industry standard and mechanical integrity [High-voltage-compatible, fully depleted CCDs](https://www.osti.gov/servlets/purl/923446)
    
2) Surface Substrate Preparation - Standard wafer cleaning
- RCA clean (NH₄OH/H₂O₂ followed by HCl/H₂O₂) and HF dip to remove native oxide
- Removes native oxide and organic contamination
  - Surface Passivation?
  - Backside Metallization: For biasing the substrate and ensuring full depletion we need a reliable ohmic contact to be formed on the back of the wafer?

3) Gate Electrode Material

- Aluminum (Al): most common choice for CCD gate electrodes due to its high conductivity, ease of deposition, compatibility with standard microfabrication, and proven performance in both conventional and advanced CCDs [Electrical properties of aluminum for cryogenic electromagnets](https://nvlpubs.nist.gov/nistpubs/Legacy/TN/nbstechnicalnote218.pdf)
- Gate Electrode Pattern
  - Inter-Gate Spacing: Charge transfer between phases depends on the spacing of polysilicon gate edges and resulting electric fringing fields between them. A desirable thickness that produces efficient charge transfer is about 0.2 microns between gates.  [US20080096373A1 - Fabrication of ccd image sensors using single layer polysilicon - Google Patents](https://patents.google.com/patent/US20080096373A1/en)
  - Gate Width: direction of charge transfer (how wide each gate is in the transfer direction). Wider gates = more ionization electrons collected. Must be optimized for potential well depth in LAr
  - Gate Length: Dimension perpendicular to charge transfer (how far the gate spans across the device width)
  - Pitch: 100um

  - **Channel Stop/Isolation Barriers?**

4) Dielectric Layer Deposition

- Material: Aluminum oxide (Al₂O₃) deposited using Atomic Layer Deposition (ALD) aiming for a target thickness of 50 nm. 

  - Thin enough for high capacitance per unit area (strong field penetration into LAr/LXe)
  - Thick enough to prevent dielectric breakdown at the required operating voltages (breakdown field for ALD Al₂O₃ is typically 4–5 MV/cm, so 50 nm supports up to 200–250 V safely) [Electrical Conduction and Dielectric Breakdown in Aluminum Oxide Insulators on Silicon](https://tsapps.nist.gov/publication/get_pdf.cfm?pub_id=30168)
  - ALD provides atomic-scale control over thickness and produces extremely uniform, pinhole-free films, which is critical for minimizing charge leakage and ensuring uniform electric fields across the device [Parameter Space of Atomic Layer Deposition of Ultrathin Oxides on Graphene | ACS Applied Materials & Interfaces](https://pubs.acs.org/doi/10.1021/acsami.6b09596)
  - High-quality Al₂O₃/Si interfaces have demonstrated low interface trap densities (Dit < 10¹¹ cm⁻²eV⁻¹) and low fixed charge, both essential for high charge transfer efficiency and low noise [Characterization of Electrical Traps Formed in Al2O3 under Various ALD Conditions - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7767157/)
  - ​​Al₂O₃ is chemically robust and remains stable at cryogenic temperatures, making it suitable for LAr/LXe environments

5) Liquid Argon Integration
   A crucial step is first to develop a liquid Ar system for recirculation inspired by moving-part-free coffee machine.The coffee machine utilizes a thermal siphon, or bubble pump, mechanism. When the heating element is activated, it rapidly heats water at the base of a vertical tube. Once the local temperature exceeds the boiling point, phase transition occurs and steam bubbles nucleate. The lower density and higher pressure of the vapor phase cause the bubbles to rise, displacing the water column above them in a slug flow regime. The upward movement is facilitated by a one-way valve that prevents backflow. This system efficiently converts thermal energy into mechanical work (water transport) without the need for mechanical pumps, relying on the interplay of phase transitions, buoyancy, and pressure gradients.
[Bubble Pumps and Taylor Flow](https://sites.psu.edu/mtfe/bubble-pumps-and-taylor-flow/)

The LAr system would leverage the same thermal siphon or bubble-pump effect: a localized heater at the base of a vertical tube vaporizes a small amount of liquid argon, forming bubbles that rise due to buoyancy and push the LAr column upward. This upward flow is guided into the detector region, while cooled argon condenses and returns to the reservoir via gravity, completing the cycle. The process is regulated by a one-way check valve to prevent backflow, ensuring passive, continuous recirculation without mechanical pumps. The design relies on controlled phase transitions, buoyancy-driven fluid dynamics, and cryogenic-compatible materials to achieve efficient, contamination-free circulation. 

---

## **Measurement Strategy**

In principle, this device should work. However, the issue lies in the charge transfer efficiency (CTE) which is heavily dependent on the charge trapping due to defects on the Al₂O₃ surface. The wetting behavior also plays a role in CTE. The wetting characteristics of any liquid-solid system are quantified through contact angle measurements, where angles below 90° indicate favorable wetting conditions and angles above 90° suggest poor wetting behavior. The theoretical foundation for understanding argon wetting behavior rests on Young's equation, which describes the equilibrium contact angle as a balance between solid-vapor, liquid-vapor, and solid-liquid interfacial tensions.

Measurement Plan: 
- Multifrequency C–V characterization to distinguish between border and interface traps.
- Hysteresis analysis for quantifying trapped charge density.
- Cryogenic contact angle measurements to assess wetting

[Gate Dielectric Capacitance-Voltage Characterization Using the Model 4200 Semiconductor Characterization System](https://scientific-devices.com.au/wp-content/uploads/2017/10/Gate-Dielectric-Capacitance-Voltage-Characterisation.pdf)

Techniques to detect and quantify surface charge trapping at the LAr/Al₂O₃ interface:

1) Multifrequency C-V Characterization

When charges get trapped, they can't follow rapid voltage changes. At high frequencies, trapped charges appear "frozen" and don't contribute to capacitance. At low frequencies, they have time to respond, creating measurable differences in capacitance values. Frequency-dependent capacitance changes indicate trap presence  and larger differences between high and low frequency measurements mean more trapping.

- Interface Traps: High Dit (interface trap density) suggests poor ALD surface passivation or contamination during fabrication.
  - Mitigation: Refine pre-ALD cleaning (e.g., UV ozone treatment) or post-deposition annealing.
- Border Traps: Elevated Nbt (border trap density) indicates bulk oxide defects.
  - Mitigation: Adjust ALD parameters (e.g., precursor purge time, temperature) to improve film quality.

Use frequency sweeps from 10 kHz to 1 MHz at cryogenic temperatures (87K). This technique effectively separates different trap types:

1) Border traps: Respond at lower frequencies, cause accumulation region dispersion
2) Interface traps: Respond at higher frequencies, affect inversion/depletion regions

- Extract the frequency-dependent capacitance values from the accumulation region
- Dispersion in these values indicates border trap presence
- Numerical Fitting Process (equation is solved numerically by guessing an initial Nbt value)
- Calculate the theoretical capacitance using the differential equation for each measured frequency
- Compare calculated vs. measured capacitance across frequency range; iteratively adjusting Nbt until the best fit is achieved
- Use the distributive border trap model to extract border trap density (equation 1):

<img width="245" alt="image" src="https://github.com/user-attachments/assets/974646af-5ed5-43df-b353-e9cf87337d73" />

First Term (γ²/jωE_ox): Represents the pure oxide capacitance contribution - how the electric field propagates through the dielectric without trapping effects.

Second Term (q²N_bt ln(1+jωτ)/τ): Represents the border trap contribution - how trapped charges affect the total admittance. The logarithmic term captures the frequency-dependent response of traps at different depths.

<img width="626" alt="image" src="https://github.com/user-attachments/assets/0b781030-ee42-4a6d-b9dc-d16e422e2753" />

[A Distributed Model for Border Traps in Al2O3 − InGaAs MOS Devices](https://web.ece.ucsb.edu/Faculty/rodwell/publications_and_presentations/publications/2011_4_april_yuan_EDL.pdf)

2) Hysteresis Analysis for Trap Quantification
Quantify net trapped charge density (Nit) via flat-band voltage shifts (ΔVFB) during gate voltage sweeps. Sweep voltage from negative to positive, then back again, while measuring capacitance to measure charge trapping/release. If there were no trapping, the forward and reverse sweeps would perfectly overlap. The separation between these curves (hysteresis) directly indicates how many charges got trapped. Equation (2) converts the voltage shift into actual trapped charge density:

- Apply voltage sweeps from accumulation to depletion and reverse
- Calculate trapped charge density from hysteresis magnitude (equation 2):

<img width="141" alt="image" src="https://github.com/user-attachments/assets/cf563aa0-7177-4636-9c91-b4e263a315be" />

- Nit = Trapped charge density (cm−2)
- Cox = Oxide capacitance per unit area (F/cm2)
- ΔVFB = Flat-band voltage shift (V)
- q = Elementary charge (1.6×10−19 C)

Voltage Sweep:
- Forward sweep: Accumulation (-V) → Inversion (+V)
- Reverse sweep: Inversion (+V) → Accumulation (-V)
- Rate: 0.1–0.5 V/s (slow enough for traps to respond)
- Temperature: 87K (cryogenic conditions mimic operational environment)

Trap Type Discrimination
- Border Traps: Cause symmetric hysteresis (similar ΔV_FB in both sweep directions)
- Interface Traps: Lead to asymmetric hysteresis (larger ΔV_FB in forward sweeps)

## **Recent studies**
On Oscura skipper-CCDs have revealed that trap characteristics are more closely linked to fabrication batch rather than specific gettering methods, suggesting that process control and equipment contamination play crucial roles in determining final device performance.
  
[An investigation of capacitance-voltage hysteresis in metal/high-k/In0.53Ga0.47As metal-oxide-semiconductor capacitors | Journal of Applied Physics | AIP Publishing](https://pubs.aip.org/aip/jap/article/114/14/144105/345009/An-investigation-of-capacitance-voltage-hysteresis)

[Advanced Electrical Characterization of Charge Trapping in MOS Transistors — Capacitance-Voltage Measurements](https://www.iue.tuwien.ac.at/phd/stampfer/node-Capacitance-Voltage-Measurements.html)

[Variable-temperature, wafer-level capacitance measurements](https://www.lakeshore.com/docs/default-source/product-downloads/application-notes/variable-temperature-wafer-level-capacitance-measurements.pdf?sfvrsn=4250d2d9_1)

[Characterization of Electrical Traps Formed in Al2O3 under Various ALD Conditions - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7767157/)

3) Wetting/Non Wetting - Cryogenic Sessile Drop Contact Angle Measurement
Quantify the contact angle of liquid argon (LAr) on Al₂O₃ to assess interfacial wetting quality, which directly impacts electric field uniformity and charge transfer efficiency (CTE). Fabricate Al₂O₃ coated silicon substrates using identical ALD conditions as the detector.
- Place the substrate in a temperature-controlled cryostat filled with purified liquid argon/xenon.
- Use a piezoelectric picoliter dispenser to deposit a  noble liquid droplet onto the Al₂O₃ surface.
- Capture droplet profile via high-speed camera with backlit illumination through a cryostat viewport.
- Calculate contact angle using Young-Laplace equation fitting.

Field Uniformity
- θ <30° (full wetting) ensures uniform electric field penetration into LAr, critical for stable potential well formation.
- θ >90° (non-wetting) creates field distortions, increasing charge trapping and CTE loss.
Interface Quality
- Low θ correlates with minimal interfacial defects (e.g., voids, contaminants)
  
Deviations from θ targets indicate ALD process issues (e.g., carbon contamination, non-uniform growth).
Post-annealing (300–500°C) can improve θ by 5–10° via hydroxyl group removal.

Table 1. Summary of the measurement techniques being considered

<img width="630" alt="image" src="https://github.com/user-attachments/assets/dd462607-baf6-4932-9a51-8ec2376b3567" />

Table 2. Summary of measurement relevance

<img width="589" alt="image" src="https://github.com/user-attachments/assets/301bea29-9971-4585-8c53-cc14e0343c8c" />

---

## **Electrical Interface Considerations**

The efficiency of charge transfer depends critically on the quality of the electrical interface between the liquid argon and the aluminum oxide surface. When liquid argon completely wets the alumina surface, it forms intimate molecular-level contact across the entire interface area, eliminating air gaps or void spaces that could act as electrical barriers or field distortion sources

Non-wetting conditions, conversely, would result in the formation of contact line discontinuities, trapped gas regions, and potentially unstable interface geometries. These features introduce several mechanisms that degrade charge transfer efficiency: increased interface resistance due to reduced contact area, field distortions caused by dielectric discontinuities, and potential charge trapping sites.

## **Field Uniformity and Distribution**

Uniform electric field distribution is essential for predictable and efficient charge transfer operations. The electric field lines must penetrate consistently into the liquid argon to create well-defined potential wells and enable controlled charge movement between adjacent gate electrodes. Wetting conditions support uniform field distribution by maintaining a constant dielectric interface without geometric discontinuities that could distort field lines

Designing the device to promote and maintain wetting conditions at the liquid argon/alumina interface can be achieved through several approaches: ensuring that the aluminum oxide surface is clean and properly prepared before assembly, maintaining high purity in the liquid argon to prevent contamination that could alter wetting properties, and potentially applying surface treatments to the alumina layer that enhance wetting without compromising electrical properties.

## **Cryogenic Liquid Wetting Characteristics**

Research on cryogenic liquid wetting indicates that most cryogenic fluids, including liquid argon, exhibit strong wetting tendencies on solid surfaces. Experimental measurements have shown that cryogenic liquids typically produce contact angles well below 90° on most surfaces, with the highest measured contact angles being approximately 30°. This natural wetting tendency results from the low surface tension of cryogenic liquids relative to the surface energy of most solids.

---

## Notes
MOS-Capacitor C-V Measurements
The most commonly used tool for studying gate-oxide quality in detail is the Capacitance-Voltage (C-V)
technique. C-V test results offer a wealth of device and process information, including bulk and interface charges and many MOS-device parameters.
[Keithley CV](https://scientific-devices.com.au/wp-content/uploads/2017/10/Gate-Dielectric-Capacitance-Voltage-Characterisation.pdf)

### Multifrequency C–V Characterization: Probing Interface and Border Traps

- A semiconductor characterization system applies a DC bias to the gate electrode while superimposing a small AC signal (10 kHz–1 MHz). Capacitance is measured as a function of gate voltage at multiple frequencies under cryogenic conditions (87 K).
  - "superimposing" means that the semiconductor characterization system applies both a DC voltage and a small AC voltage signal to the gate electrode at the same time. The DC bias sets the steady-state operating point or condition for the device, while the small AC signal is added on top of this DC voltage to probe the device’s response to small, dynamic changes
  - The purpose is to measure how the device responds to small perturbations (AC signal) at different operating points (DC bias)

---

### Hysteresis Analysis: Quantifying Trapped Charge Dynamics
- Reversible trapping: Symmetric hysteresis → Border traps dominate (charge release matches capture)
- Asymmetric hysteresis: Interface traps preferentially capture carriers in one sweep direction
- Batch-dependent variations: Observed in Oscura CCDs, linking trap densities to fabrication contamination

---

### Microphysics 

**Traps disrupt band bending by introducing localized charges, modifying the electric field.**
**Connect the CVU HI to the gate electrode and CVU LO to the LAr bulk**

LAr as a "Pseudosubstrate":
- Unlike traditional MOS capacitors (where capacitance is between gate and silicon), your LAr-CCD measures capacitance between the gate and LAr. This requires redefining "accumulation" and "depletion" in terms of LAr’s quasi-free electrons.

Interface Trap Response:
- The AC signal at CVU HI excites interface traps at the Al₂O₃/LAr boundary. The CVU LO detects their delayed response (phase shift), allowing extraction of trap density (Dit)

Interface traps (Dit) 
- Arise from defects at the LAr/Al₂O₃ interface (e.g., dangling bonds, impurities).
- Act as recombination centers, reducing charge transfer efficiency (CTE)
- Quantified using the Terman method
[Comparison of methods to quantify interface trap densities at dielectric/III-
V semiconductor interfaces](https://escholarship.org/content/qt0nf6t24x/qt0nf6t24x.pdf)

Border traps
- Located within the Al₂O₃ bulk, these traps exchange charge with LAr via tunneling.
- Modeled by a distributed RC network (eq 1)

**Energy Band Diagram**

The band diagram for Vg = 0

<img width="436" alt="image" src="https://github.com/user-attachments/assets/be5d30f0-9924-4f50-9b14-2e9d99e5771e" />

(a) Polysilicon-gate/oxide/semiconductor capacitor and (b) its energy band
diagram with no applied voltage.

-**Flat-band condition** 
<img width="451" alt="image" src="https://github.com/user-attachments/assets/641f6272-409b-48f8-a39d-4ed9157d5c65" />

This condition is achieved by applying a negative voltage to the gate which  raises the band diagram on the left-hand side. 
    - surface electric field in the substrate is zero.
    - Electric field in the oxide is also zero

- **Accumulation**: $V_g < 0$ (holes accumulate at interface).
  
<img width="485" alt="image" src="https://github.com/user-attachments/assets/9d2c1092-3ee1-4aa3-a9cc-02a5d7c7ca8d" />

This MOS capacitor is biased into surface accumulation (ps > p0= Na).
(a) Types of charge present. ⊕ represents holes and – represents negative charge. (b) Energy
band diagram.

<img width="132" alt="image" src="https://github.com/user-attachments/assets/ad99ed58-9739-46df-a995-59c6c45a42c2" />

- Observed when negative voltages are applied to the gate.
- The negative polarity causes majority carriers (holes) to be attracted toward the gate.
- Form an accumulation layer and these holes are called the accumulation-layer holes, and their charge the accumulation charge, Qacc. This condition is known as surface accumulation.
- If the substrate were N type, the accumulation layer would hold electrons.

- **Depletion**: $V_g > 0$ (holes repelled, depletion region forms)
  
<img width="486" alt="image" src="https://github.com/user-attachments/assets/f14f969b-ea8c-4dca-ae96-b28809646c31" />

This MOS capacitor is biased into surface depletion. (a) Types of charge
present; (b) energy band diagram.

- There is now a depletion region at the surface because EF is far from both Ec and Ev
- Electron and hole densities are both small

<img width="375" alt="image" src="https://github.com/user-attachments/assets/bdfee0f8-7e25-4663-b6de-00d3bdf7bf47" />

This equation can be solved to yield Wdep as a function of Vg. With Wdep
determined, Vox and φ s become known.

- **Inversion**: $V_g \gg 0$ (electrons form inversion layer).

<img width="394" alt="image" src="https://github.com/user-attachments/assets/13b205e2-7b2f-41c3-9011-a4336cb237c8" />

- At some Vg, EF will be close enough to Ec at the Si–SiO2 interface
that the surface is no longer in depletion but at the threshold of inversion
- Inversion means that the surface is inverted from P type to N type, or
electron rich.

Notes
- E0,the vacuum level, is the energy state of electrons outside the material
- The differencebetween E0 and Ec is called the electron affinity
- φs (surface voltage)
- Vox (oxide voltage)
- qφs is the band bending in the substrate.
- ps is the surface hole concentration
[MOS Capacitor](http://sam.zeloof.xyz/wp-content/uploads/2021/01/CV-resource1.pdf)

---

### C-V Measurements
The C-V measurements are widely used to quantitatively study the MOS structures. There are three important parameters in evaluating high-k dielectrics on novel channel materials:
- The first is the amount of C-V hysteresis when the MOS capacitor is biased well into accumulation and
inversion region.
- The second is the interface trap density Dit showing the quality of surface passivation and dielectric formation.
- The third is the frequency dispersion on accumulation capacitances and the subsequent flat-
band shifts.

[Capacitance-voltage Characterization of Atomic-Layer-Deposited
Al2O3/InGaAs and Al2O3/GaAs Metal –Oxide-Semiconductor Structures](https://engineering.purdue.edu/~yep/Papers/ECS_Transaction_Review_Cancun_Mexico_2006.pdf)


---

### **Fundamentals of MOS C–V Measurements**

#### Capacitance in MOS Structures

- Capacitance ($C$) measures charge storage per unit voltage ($C = Q/V$).
- MOS Structure:
    - Gate Electrode (Al) → Dielectric (Al₂O₃) → Semiconductor (LAr).

#### **Key Equations**

- Oxide Capacitance:

$$
C_{ox} = \frac{\varepsilon_{Al_2O_3} \cdot A}{t_{ox}}
$$

($\varepsilon_{Al_2O_3}$: permittivity, $A$: gate area, $t_{ox}$: oxide thickness).
- Depletion Capacitance:

$$
C_{dep} = \frac{\varepsilon_{LAr} \cdot A}{W_{dep}}
$$

($W_{dep}$: depletion width in LAr).
- Total Capacitance (Depletion):

$$
\frac{1}{C} = \frac{1}{C_{ox}} + \frac{1}{C_{dep}}
$$

---

### LAr 
Short-range order (SRO) refers to the regular, predictable arrangement of atoms over short distances (1-2 atomic spacings) without long-range crystalline periodicity. The SRO in LAr creates transient, localized potential minima where electrons can become temporarily trapped?

[Evolution of short range order in Ar](https://pubs.aip.org/aip/adv/article/8/4/045215/1031043/Evolution-of-short-range-order-in-Ar-Liquid-to)

### Modified Measurement Configuration
The measurement setup requires a specialized three-terminal configuration where the gate electrode (Al) forms the one contact, the Al₂O₃ serves as the dielectric, and liquid argon acts as the semiconductor medium . The "bulk contact" must be established through a submerged electrode in the LAr volume, creating a pseudo-substrate condition.  

