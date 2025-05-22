# **Charge-Coupled Devices (CCDs)**
Charge-coupled devices (CCDs) are a highly sensitive light-detecting integrated circuit widely used in imaging applications. Its primary function is to capture light (photons), convert it into electrical charge (electrons), and then transfer this charge across the device to be read out and digitized as an image. 

<img width="551" alt="Screenshot 2025-05-21 at 11 22 34 AM" src="https://github.com/user-attachments/assets/89845d29-a779-444e-9b53-c65147cb8196" />

<img width="514" alt="Screenshot 2025-05-21 at 10 38 29 AM" src="https://github.com/user-attachments/assets/1dd93f92-0204-4774-816e-af5aa588f5c9" />

## **CCD Operation**

### 1) Charge Generation/Storage
- The CCD consists of an array of pixels etched onto a silicon surface. When photons hit these pixels, they generate electron-hole pairs via the photoelectric effect. The number of electrons generated in each pixel is proportional to the intensity of the incoming light

<img width="548" alt="Screenshot 2025-05-21 at 10 43 30 AM" src="https://github.com/user-attachments/assets/0ead6180-86b6-4e81-ab36-20416ed72a52" />

<img width="390" alt="Screenshot 2025-05-21 at 11 18 45 AM" src="https://github.com/user-attachments/assets/6235add2-41cc-48e8-a91f-a493e41b3c14" />

- Each pixel acts as a MOS capacitor. An applied voltage on the gate creates a depletion region, forming a potential well, to trap electrons.

### 2) Charge Transfer
After exposure, the accumulated charge in each pixel is systematically shifted across the array
   
<img width="350" alt="Screenshot 2025-05-21 at 10 59 10 AM" src="https://github.com/user-attachments/assets/fbee74f1-be8e-476d-80f7-42b00a83c429" />

- By sequentially clocking voltages on adjacent gates, electrons are shifted from one pixel to the next.
- This process, called charge coupling, moves the charge from pixel to pixel until it reaches the output node

### 3) Readout
The charge is then amplified and converted into a voltage, which is digitized to form an image.
<img width="524" alt="Screenshot 2025-05-21 at 12 30 49 PM" src="https://github.com/user-attachments/assets/b821e755-a178-4762-9503-946d7b2714ab" />


---

## **Fabrication Plan**
Design a Skipper "CCD Like" device for detecting low energy processes (eg. Coherent Elastic Neutrino-Nucleus Scattering or Weakly Interacting Massive Particles (WIMPS)). The device operates on the fundamental charge-coupling principle similar to standard CCDs, but with a critical difference. While traditional CCDs convert light photons into electric signals, this device detects ionization events in liquid argon (LAr) or liquid xenon (LXe). When a particle interaction occurs in the noble liquid, it creates electron-hole pairs through ionization.

<img width="678" alt="Screenshot 2025-05-16 at 7 00 17 PM" src="https://github.com/user-attachments/assets/d64e9c04-84df-4b1c-add3-c7d51be4ebdb" />

Critical difference: A very thin layer of Al2O3 for achieving uniform and flat features at this specific interface (optional reasearch: SiO2 or SiN).
  - When ionization electrons are created in the LAr/LXe by particle interactions, they drift toward the Al₂O₃ interface but remain physically in the noble liquid. The non-wetting property of the interface is crucial, as it creates a natural barrier that keeps electrons mobile in the liquid rather than becoming trapped at surface defects.
  
## **CCD Readout**
<img width="1100" alt="Screenshot 2025-05-20 at 4 56 27 PM" src="https://github.com/user-attachments/assets/aaf8f65d-f268-4c69-8fc8-0d9ce0fcb926" />

- Skipper features allow multiple non-destructive measurements of the same charge packet 
- Sensing Node Architecture: When charges reach the output stage, they encounter a specialized structure with:
  - A summing gate/well (SG/SW) that holds the charge packet (Temporarily holds the charge packet before measurement, ensuring controlled and sequential transfer)
  - A sensing node (SN) that measures the charge (The charge is sensed here, typically using a floating gate amplifier, which allows for non-destructive, repeated measurements of the same charge packet)
  - A Output Gate (OG) - Acts as a gatekeeper, regulating the movement of charge from SW to SN so that the measurement can be performed accurately and repeatedly


## **"CCD Like" Operation**
Conventional CCDs measure charge packets only once before discarding them, Skipper CCDs incorporate a floating gate amplifier that enables multiple non-destructive measurements of the same charge packet. The unique layered structure allows these ionization electrons to be:

1) Generated in the noble liquid (LAr/LXe)
2) Drifted toward the Al₂O₃ interface, but remain in the noble liquid
3) Transported laterally via potential wells created by the metal electrodes
4) Read out through a skipper circuit design

Note: Noble liquids naturally exhibit poor wetting on oxide surfaces. This is actually beneficial for this detector because:
- Poor wetting prevents strong adhesion forces that would trap electrons at the interface
- The electrons remain mobile in the liquid rather than "sticking" to the surface
- Electric fields can effectively manipulate these mobile electrons
- The non-wetting condition creates a situation where electrons remain in the noble liquid but close enough to the interface to be trapped while allowing their controlled movement through the potential wells.

Advantages: 
- Sub-electron Noise Levels: Multiple sampling reduces noise by a factor of 1/√N (where N is the number of samples)

[Skipper-CCDs: current applications and future](https://agenda.infn.it/event/22092/contributions/166721/attachments/91165/123549/Poster%20-%20Skipper-CCDs_%20current%20applications%20and%20future.pdf)

This unique combination of features (ie Skipper readout, engineered interfaces, and noble liquid interaction) could enable detection sensitivity at the very low levels; critical levels for next-generation dark matter searches and neutrino physics.

---

## Measurement Approach
- Wetting/Non Wetting 


- Surface Charge Trapping and Release
  - C-V curves for MOS capacitor
    - Procedure:
      - Fabricate MOS capacitors (Al or TiN/Al₂O₃/n-Si).
      - Apply a voltage sweep (-15V → +15V → -15V) at 1 kHz–1 MHz.
      - Measure capacitance hysteresis width between forward/reverse sweeps.
    - Interpretation: Hysteresis width is proportional to trapped charge density in dielectrics 
    - [Characterization of Electrical Traps Formed in Al2O3 under Various ALD Conditions](https://pmc.ncbi.nlm.nih.gov/articles/PMC7767157/) - authors show how hysteresis and flatband voltage shifts in the C-V curves directly quantify trap densities and their dependence on ALD process parameters.
    - [Charge trapping analysis of Al2O3 films deposited by atomic layer deposition
using H2O or O3 as oxidant](https://digital.csic.es/bitstream/10261/378620/1/1_2013-jvstb_31_1_01a101-2013_digital_1_.pdf)

___

## **n-type High-Resistivity Silicon Substrates**
For weak-signal searches (WIMPs, neutrinos), n-type substrates are superior due to their deep depletion, back-illumination, and ultra-low noise. However, fabrication is more complex and can be costly.

- n-type substrate enables full depletion with reasonable bias voltages (50-100V) while allowing deep collection depths (200-300 μm)
  - Fully depleted means that the entire thickness of the silicon substrate is free of mobile charge carriers (electrons and holes), except those generated by an external event (like a photon or particle interaction).
  - This is achieved by applying a sufficient reverse bias voltage so that the electric field extends from the front surface all the way to the back surface of the device.

- Float-Zone Silicon Growth?: FZ silicon offers ultra-high purity necessary for low dark current and high sensitivity. Lower defect density and better resistivity uniformity.
  
---

### **Buried Channel Design**
Buried Channel (BCCDs) keep charge away from the Si/SiO₂ interface (0.2-0.3 μm below surface), minimizing interaction with surface defects.The buried channel structure (p-type buried channel in high-resistivity silicon) remains essential because:

1) Noise Reduction: This structure has the advantages of higher transfer efficiency and lower dark current, from reduced surface recombination
2) Charge Confinement: The buried channel confines charge in a plane away from the interface, thus avoiding surface states


## **Channel Doping**
p-channel CCDs on n-type substrates show superior radiation tolerance compared to conventional n-channel devices

- Better radiation hardness for long-term operation in particle physics environments
- Applying negative voltage to metal electrodes above n-type silicon strengthens potential barriers, creating deeper potential wells
  
## **Metal Electrodes**
- TiN electrodes offer better thermal matching (CTE) with silicon for cryogenic operation compared to aluminum

---

## **Possible Sequence**
1. Substrate Preparation
- Starting Material:
Float-zone, high-resistivity n-type silicon (10,000 Ω·cm - full depletion), **200 mm diameter**, (100) orientation, 200-300 μm thickness
- Initial Cleaning:
RCA clean (NH₄OH/H₂O₂ followed by HCl/H₂O₂) and HF dip to remove native oxide
- Equipment:
RCA cleaning station and acid wet bench with HF handling capabilities
2. Gate Dielectric Formation
- Thermal Oxidation:
50 nm SiO₂ growth at 900°C in dry O₂
- Silicon Nitride Deposition:
50 nm Si₃N₄ via LPCVD at 780°C (LPCVD produces more uniform Si₃N₄ films with fewer defects and higher step coverage than alternative methods). Si₃N₄ layer serves as a high-quality etch stop during subsequent processing and provides excellent electrical isolation
- Equipment:
Thermal oxidation furnace and Low-Pressure Chemical Vapor Deposition (LPCVD) system
3. p-Channel Formation
- Photolithography:
Channel definition using stepper lithography (2.5 μm minimum feature) (Enables feature sizes below 1 micron by exposing small sections of the wafer at a time)
- Ion Implantation:
Boron implant (50-70 keV, 1-5×10¹² cm⁻²) to form p-channel
- Annealing:
900°C, 30 min in N₂ ambient to activate dopants
- Equipment:
Stepper lithography system, ion implanter and annealing furnace
4. Gate Structure Formation
- Polysilicon Deposition:
Triple-level polysilicon gate structure (3-phase CCD). Each layer 0.5 μm thick, in-situ phosphorus doped
- Etching:
Plasma etching with Cl₂/HBr chemistry for high selectivity to Si₃N₄
- Equipment:
LPCVD system, Plasma etcher and Stepper lithography system
5. Backside Processing
- Thinning:
Mechanical grinding to target thickness (200-300 μm) and chemical-mechanical polishing for surface smoothing
- Backside Contact:
In-situ doped polysilicon (ISDP) layer (20-25 nm) deposited at 650°C (Forms the critical n+ contact (20-25 nm thick) on the back side of fully-depleted CCDs and thin, uniform ISDP layer enables excellent blue/UV response while providing low-resistance electrical contact)
- Equipment:
Wafer grinding tool, chemical mechanical polishing (CMP) system and LPCVD system
6. Al₂O₃ Interface Layer (Key Innovation)
- Atomic Layer Deposition:
50 nm Al₂O₃ using trimethylaluminum (TMA) and H₂O precursors at 150°C
0.97 Å/cycle growth rate for precise thickness control
- Post-Deposition Annealing:
400°C in N₂ ambient to optimize interface states and create controlled defect density
- Equipment:
ALD system and Annealing furnace
7. Metal Electrode Fabrication
- Metal Deposition:
TiN via reactive sputtering at 400°C (100 μm pitch)
- Patterning:
Stepper lithography and plasma etching
- Equipment:
Sputter deposition system and Plasma etcher
8. Device Integration
- Metallization:
Al-Si (1%) for interconnects and bond pads
- Passivation:
PECVD SiO₂/Si₃N₄ bilayer (Lower temperature deposition (350°C) than LPCVD, preserving underlying structures while providing excellent step coverage)
- Equipment:
Sputter deposition system, PECVD system

9. Characterization and Testing Tools
- Electrical Characterization
  - Probe Station: For I-V and C-V measurements of test structures
  - Parameter Analyzer: Keithley 4200A-SCS for detailed electrical characterization
  - Pulse Generator: For CCD gate timing control
  - Oscilloscope: High-speed digital oscilloscope for timing analysis
- Material Characterization
  - Scanning Electron Microscope (SEM): For structural analysis and layer thickness measurements
  - Transmission Electron Microscope (TEM): For atomic-scale interface analysis
  - Atomic Force Microscope (AFM): For surface roughness measurement of Al₂O₃ layer (<1 nm RMS target)
  - X-ray Photoelectron Spectroscopy (XPS): For interface chemistry analysis
- CCD Performance Testing
  - Cryogenic Test Chamber: For operation at LAr/LXe temperatures (87K/165K)
  - Readout Electronics: Specialized low-noise amplifiers and ADCs
  - Light Sources: Calibrated LEDs and laser systems for sensitivity testing
  - Radiation Sources: Alpha, beta, and gamma sources for detection validation

---

## **Skipper CCD Technology for Neutrinoless Double Beta Decay Detection**
Neutrinoless double beta decay (0νββ) is a hypothetical nuclear process where:

- A nucleus simultaneously converts two neutrons into two protons
- Two electrons are emitted
- No neutrinos are produced (unlike standard double beta decay)
- Total energy of the electrons equals the Q-value of the decay (typically 2-3 MeV)
  
This process, if observed, would prove neutrinos are Majorana particles (their own antiparticles) and demonstrate lepton number violation.

Whats needed: 
- Superior Energy Resolution
  - The sub-electron noise levels achieved through multiple sampling could provide exceptional energy resolution (σ = σ₁/√N)
  - Distinguishing the characteristic 0νββ peak from background requires precisely measuring the sharp energy peak of the two emitted electrons
  - The 0.15e⁻ RMS noise levels demonstrated in existing Skipper-CCDs would enable precise energy discrimination
- Single-Electron Sensitivity
- Noble Liquid Medium Integration
  - Using LXe as detection medium is particularly advantageous as ¹³⁶Xe is a prime 0νββ candidate isotope
  - The detector becomes both the source and detection medium, improving efficiency
  - The design's interface between noble liquids and detection electronics addresses a key challenge in LXe-based 0νββ experiments

Ionization Detection Mechanism
- 0νββ decay produces high-energy electrons that create ionization tracks in the detection medium
- The spatial resolution of the CCD-like design may enable tracking capabilities that could distinguish 0νββ events (two electron tracks from same vertex) from background events
- The buried channel design with n-type substrate enables deep depletion, reducing surface-related backgrounds



---


---

**Buried Channel Design**- Created via phosphorus ion implantation to form an n-doped region within the p-type epitaxial layer[^1][^6].
- Advantages: Higher charge transfer efficiency (CTE > 0.99999) and reduced surface recombination compared to surface-channel designs[^1][^7].
- Implant: Phosphorus @ 150 keV (1e16 cm⁻³) to form n-type layer 1.5 μm below surface.
- Annealing: 900°C, N₂ ambient to activate dopants without oxidizing gates.
The n-type doped layer creates a buried channel where electrons flow. This keeps electrons ~1-2 μm away from the Si-SiO₂ interface, preventing interaction with oxide traps.
  

---
## **Materials and Substrate Preparation**

Below is a virtual tutorial of CCD fabrication:
[CCD Virtual Digital Imaging Tutorial](https://micro.magnet.fsu.edu/primer/java/digitalimaging/ccd/virtual2/index.html)

CCDs are typically fabricated on **high-resistivity silicon substrates** (10,000–12,000 Ω·cm) to enable deep depletion regions (200–300 μm) for improved near-infrared response[^2][^7]. Two primary approaches exist:

- **p-type substrates**: Used for traditional front-illuminated devices with epitaxial silicon layers (≈20 µm thick)[^1][^8].
- **n-type substrates**: Enable back-illuminated, fully depleted CCDs by applying bias voltages to deplete the entire wafer thickness[^2][^6].

Key steps include:

- **Epitaxial growth**: A lightly doped p-type or n-type layer is grown to form the photoactive region[^1][^6].
- **Gettering**: In-situ doped polysilicon layers on the wafer backside reduce impurities and dark current[^2][^9].

### **Substrate and Passivation**
- Material: Float-zone Si (200 mm, 10 kΩ·cm, p-type) for deep depletion (~300 μm).
- ALD Passivation: 50 nm Al₂O₃ on backside + SiO₂/SiN frontside stack for QE >90% (UV/VIS) .

---


### **Gate Architecture**

- **Triple polysilicon gates**: Patterned using plasma etching (Cl₂/HBr) to create phase-shifted electrodes for charge transfer[^2][^6].
- **Gate insulator**: 500 Å SiO₂ + 500 Å Si₃N₄ for improved dielectric properties[^2][^7].


### **Channel Isolation**

- **LOCOS process**: Creates oxide-based channel stops to prevent cross-talk between pixels[^1][^6].
- **p+ implants**: Underlie channel stops to further confine charge packets[^1].

---

## **Fabrication Process Steps**

1. **Wafer preparation**: High-resistivity silicon wafers are cleaned and polished[^2][^7].
2. **Ion implantation**: Defines buried channels and transistor regions[^6][^9].
3. **Gate oxide growth**: Thermal SiO₂ combined with LPCVD Si₃N₄[^2].
4. **Polysilicon deposition**: Three layers deposited and etched to form transfer gates[^6][^8].
5. **Metallization**: Aluminum-silicon contacts for interconnects[^2].
6. **Backside processing** (for back-illuminated devices):
    - Thin doped polysilicon layer + indium tin oxide (ITO) for ohmic contact[^2][^7].
    - Bonding to glass support wafers followed by silicon handle removal[^5][^6].

---

## **Back-Illumination Techniques**

- **Thinning**: Traditional CCDs are thinned to ≈20 µm but suffer from fringing at near-IR wavelengths[^2][^3].
- **Full depletion**: Achieved via backside bias (≈40 V) on high-resistivity substrates, enabling:
    - **Broadband QE**: >80% from 400–900 nm[^2][^6].
    - **Reduced fringing**: Thick (200–300 µm) depletion minimizes interference[^2][^7].
- **Anti-reflection coatings**: Optimized for specific wavelength ranges (e.g., SiO₂/Si₃N₄ stacks)[^5][^7].


## **Resources**

- [Weak Interactions of Leptons and Quarks Commins & Bucksbaum](https://www.google.com/books/edition/Weak_Interactions_of_Leptons_and_Quarks/A15OvAvA7HAC?hl=en&gbpv=1&printsec=frontcover)

- [Dark Matter](https://pdg.lbl.gov/2020/reviews/rpp2020-rev-dark-matter.pdf)

- [CCD Manufacturing and Operation](https://www.higp.hawaii.edu/~gillis/GG671b/Week02/Readings/Handbook%20of%20CCD%20astronomy%20Ch%202.pdf)

- [Signal-to-Noise in Optical Astronomy](https://www.ucolick.org/~bolte/AY257/s_n.pdf)

---

---

## **Performance Challenges and Solutions**

- **Dark current**: Mitigated via gettering, substrate bias, and cooling[^2][^6].
- **Charge diffusion**: Controlled through fully depleted operation and lateral electric fields[^7][^9].
- **Radiation hardness**: Critical for space applications; mitigated via epitaxial design and process hardening[^1][^7].


<div style="text-align: center">⁂</div>

[^1]: https://en.wikipedia.org/wiki/Charge-coupled_device

[^2]: https://www.osti.gov/servlets/purl/838066

[^3]: https://www.teledynevisionsolutions.com/learn/learning-center/imaging-fundamentals/ccd-vs-cmos/

[^4]: https://www.rigility.com/ccd-cameras-an-overview/

[^5]: https://www.techbriefs.com/component/content/article/13450-npo-41190

[^6]: https://www.sciencedirect.com/science/article/abs/pii/S0168900207011564

[^7]: https://onlinelibrary.wiley.com/doi/10.1002/asna.20230072

[^8]: https://www.higp.hawaii.edu/~gillis/GG671b/Week02/Readings/Handbook of CCD astronomy Ch 2.pdf

[^9]: https://www.imagesensors.org/Past Workshops/2013 Workshop/2013 Papers/08-4_081_holland_paper.pdf

