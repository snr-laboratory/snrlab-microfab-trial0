# **Charge-Coupled Devices (CCDs)**
The charge-coupled device (CCD) is part of a class of charge-transfer device structures widely used for imaging applications. CCDs are made of MOS capacitor arrays which technically have four main tasks that need to be preformed to generate an image: 1) charge generation, 2) charge collection, 3) charge transfer and 4) charge measurement. The basis of the CCD is the dynamic storage and withdrawal of charge in a series of MOS capacitors. 

<img width="351" alt="Screenshot 2025-05-21 at 11 22 34 AM" src="assets/89845d29-a779-444e-9b53-c65147cb8196.png" />

Figure 1. Bucket analogy used to describe CCD operation
(scientific coupled devices)

<img width="314" alt="Screenshot 2025-05-21 at 10 38 29 AM" src="assets/1dd93f92-0204-4774-816e-af5aa588f5c9.png" />

Figure 2. Section of CCD array showing the architecture of a cleverly designed charge coupled device


## **CCD Operation**
The  operation of a CCD is based on the storage and transfer of the minority carriers (know as the charge packet) between the potential wells created by the voltage pulses applied to the gate electrode of the MOS capacitors.  basic types of CCDs are surface channel (SCCD) and buried channel (BCCD). In the SCCD, charge is stored and transferred at the semiconductor surface. A potential loss mechanism identified in the early development of these devices, led to the buried gate channel design. Transfer efficiency improved by moving the charge transfer layer below the semiconductor/insulator interface. This shifts the maximum potential under each electrode into the semiconductor bulk, thus avoiding the semiconductor/insulator interface and loss of charge. This type of device is referred to as a BCCD shown below:

<img width="400" alt="image" src="https://github.com/user-attachments/assets/e7460804-861d-4800-8284-e82c6b886c75" />

Figure 3. Architecture of the BCCD designed to collect the signal charge away from the SiO2/Si interface.

It would be ill advised to assume that the story is this simple. An important aspect of this device operation is understanding why the electrons do not make their way up to the Si/SiO2 surface (assuming absorption and charge generation has already occurred).

Initially, at the metallurgical junction, there is a very large density gradient in both electron and hole concentrations. Majority carrier electrons in the n region will begin diffusing into the p region, and majority carrier holes in the p region will begin diffusing into the n region. 

<img src="https://github.com/user-attachments/assets/8d3caee3-b7af-46f7-bc0e-d7f6992442e6" width="300">

Figure 4. The metallurgical junction with a very large density gradient showing both electron and hole diffusion directions.

If we assume there are no external connections to the semiconductor, then this diffusion process cannot continue indefinitely. As electrons diffuse from the n region, positively charged donor atoms are left behind. Similarly, as holes diffuse from the p region, they uncover negatively charged acceptor atoms. The net positive and negative charges in the n and p regions induce an electric field in the region near the metallurgical junction, in the direction from the positive to the negative charge, or from the n to the p region.


<img src="https://github.com/user-attachments/assets/8966a2dd-b63f-4d3e-bf55-584cb34c9893" width="400">

Figure 5. Space charge region showing the different forces that exactly balance each other in thermal equilibrium.

The net positively and negatively charged regions are referred to as the space charge region. Essentially all electrons and holes are swept out of the space charge region by the electric field. Since the space charge region is depleted of any mobile charge, this region is also referred to as the depletion region; these two terms will be used interchangeably. Density gradients still exist in the majority carrier concentrations at each edge of the space charge region. We can think of a density gradient as producing a “diffusion force” that acts on the majority carriers. The electric field in the space charge region produces another force on the electrons and holes, which is in the opposite direction to the diffusion force for each type of particle. In thermal equilibrium, the diffusion force and the E-field force exactly balance each other.

Again, carrier transport of the mobile charge carriers is governed by two primary transport mechanisms:
1) diffusion due to concentration gradients and
2) drift caused by the electric field in the depletion region.
**Drift current being equal to diffusion current leads to a fixed delpetion width (no longer continues to expand)**

A closer look at the pn junction is helpful to fully appreciate the device operation and why the buried channel can assist with loss of charge:


<img src="https://github.com/user-attachments/assets/bf505f64-c12e-4487-a687-064205816e5b" width="400">

Figure 6. Top MOS structure: Electrons and holes diffuse across the junction due to concentration gradients (in this case a repulsive force action). The mobile charge carriers accumulate or "hover" at the respective edges of the depletion zone. Bottom MOS structure: potential well formed by applying a positive pulse to the gate electrode as well as the change in deletion region and direction of electric field at device interface of nSi/pSi. 

The potential well created is dependent on the applied voltage among many other things like doping and oxide thickness.

<img src="https://github.com/user-attachments/assets/bfa23129-f13e-4bf6-bd4e-47b356554109" width="400">


### 1) Charge Generation
- The CCD consists of an array of pixels etched onto a silicon surface. When photons hit these pixels, they generate electron-hole pairs via the photoelectric effect. 

<img width="300" alt="Screenshot 2025-05-21 at 10 43 30 AM" src="assets/0ead6180-86b6-4e81-ab36-20416ed72a52.png" />

Figure 4. BCCD showing the ability of a CCD to intercept an incoming photon. 

<img width="300" alt="Screenshot 2025-05-21 at 11 18 45 AM" src="assets/6235add2-41cc-48e8-a91f-a493e41b3c14.png" />

Figure 5. Charge generation takes place in the silicon body of the CCD inside the potential well. 

- Each pixel acts as a MOS capacitor. An applied voltage on the gate creates a depletion region, forming a potential well, to trap electrons.
- Charge generation efficiency (CGE) is described by a function called quantum efficiency (QE), which is the fraction  of incident photons that produces a useful charge in the silicon chip.

### 2) Dynamic Storage
If a large positive pulse is applied to the MOS gate electrode, a deep potential well is first created. This transient condition is sometimes called deep depletion. If we can inject electrons into this potential well, they will be stored there.

**Note: a few msec after charge pairs have been generated, they will recombine if there is no electric field in the semiconductor substrate.**

If there is an electric field in the semiconductor substrate, electrons and holes will be moved in opposite directions by the electrostatic force of the electric field.

<img width="300" alt="image" src="https://github.com/user-attachments/assets/07e14dc5-dda9-4186-86b8-7b74ff8cb11c" />

Figure 5. A positive potential is applied to the metal electrode resulting the creation of a potential well.
(Streetman)



### 2) Charge Transfer
After exposure, the accumulated charge in each pixel is systematically shifted across the array. There are three basic charge transfer mechanisms in a CCD: thermal diffusion, self-induced drift and the fringing field effect. 
   
<img width="250" alt="Screenshot 2025-05-21 at 10 59 10 AM" src="assets/fbee74f1-be8e-476d-80f7-42b00a83c429.png" />

- By sequentially clocking voltages on adjacent gates, electrons are shifted from one pixel to the next.
- This process, called charge coupling, moves the charge from pixel to pixel until it reaches the output node

### 3) Readout
The charge is then amplified and converted into a voltage, which is digitized to form an image.
<img width="300" alt="Screenshot 2025-05-21 at 12 30 49 PM" src="assets/b821e755-a178-4762-9503-946d7b2714ab.png" />


---

## **LAr-CCD Detector**
Design a skipper "CCD Like" device for detecting low energy processes (eg. Neutrinoless double beta decay). The device operates on the fundamental charge-coupling principle similar to standard CCDs, but with a critical difference. While traditional CCDs convert light photons into electric signals, this device detects ionization events in liquid argon (LAr). When a particle interaction occurs, it creates electron-hole pairs through ionization in the noble liquid similar to Si in a standard CCD. 

The proposed detector employs a layered architecture consisting of a silicon substrate base, metal gate electrodes, a 50 nm aluminum oxide (Al₂O₃) layer deposited via atomic layer deposition (ALD), and liquid argon as the detection medium. There is an external electric field being applied to this detector so if ionization in LAr creates free electrons they will drift towards the Al2O3 surface/interface. This configuration creates a series of controlled interfaces, with the LAr/Al₂O₃ boundary being particularly critical for charge transfer efficiency.

The use of ALD for the aluminum oxide layer is especially significant, as this deposition technique produces exceptionally uniform with precisely controlled thickness and surface properties. The 50 nm thickness specification suggests a careful balance between dielectric strength and field penetration requirements, while the emphasis on "extreme flatness and uniformity" indicates the importance of interface quality for device performance.


<img width="600" alt="Screenshot 2025-05-16 at 7 00 17 PM" src="assets/d64e9c04-84df-4b1c-add3-c7d51be4ebdb.png" />

Operation: A fundamental operating principle of the device involves using the gate electrodes to establish and manipulate potential wells within the liquid argon volume. When a potential is applied to one gate electrode, a capacitive effect generates a potential well in the LAr that attracts and confines negative charges. By modulating the potentials on adjacent electrodes, you create penetrating electric fringing fields that allow for controlled lateral charge transfer between wells.

This charge-coupled device (CCD) approach adapted for cryogenic particle detection represents an innovative application of well-established semiconductor principles to liquid argon detector technology. The success of this approach depends critically on the quality of the LAr/Al₂O₃ interface, as this boundary mediates the coupling between the electric fields generated by the gate electrodes and the charges within the liquid argon.


Critical difference: A very thin layer of Al2O3 for achieving uniform and flat features at this specific interface. Resembles the CCD architecture but flipped upside down. 
  - When ionization electrons are created in the LAr/LXe by particle interactions, they drift toward the Al₂O₃ interface but remain physically in the noble liquid. 

Question: how severe is recombination in LAr and if significant how to overcome recombination losses in LAr?

## **CCD Readout**

<img width="700" alt="Screenshot 2025-05-20 at 4 56 27 PM" src="assets/aaf8f65d-f268-4c69-8fc8-0d9ce0fcb926.png" />

- Skipper features allow multiple non-destructive measurements of the same charge packet 
- Sensing Node Architecture: When charges reach the output stage, they encounter a specialized structure with:
  - A summing gate/well (SG/SW): Temporarily holds the charge packet before measurement, ensuring controlled and sequential transfer
  - A sensing node (SN): The charge is sensed here, typically using a floating gate amplifier, which allows for non-destructive, repeated measurements of the same charge packet
  - A Output Gate (OG) - Acts as a gatekeeper, regulating the movement of charge from SW to SN so that the measurement can be performed accurately and repeatedly


## **Operation Concerns/Issues**
Conventional CCDs measure charge packets only once before discarding them, Skipper CCDs incorporate a floating gate amplifier that enables multiple non-destructive measurements of the same charge packet. 

**Case for Wetting:**

**Electrical Interface Considerations:**

The efficiency of charge transfer in the proposed device depends critically on the quality of the electrical interface between the liquid argon and the aluminum oxide surface. Wetting conditions provide several fundamental advantages for electrical contact and charge transfer efficiency. When liquid argon completely wets the alumina surface, it forms intimate molecular-level contact across the entire interface area, eliminating air gaps or void spaces that could act as electrical barriers or field distortion sources. Non-wetting conditions, conversely, would result in the formation of contact line discontinuities, trapped gas regions, and potentially unstable interface geometries. These features introduce several mechanisms that degrade charge transfer efficiency: increased interface resistance due to reduced contact area, field distortions caused by dielectric discontinuities, and potential charge trapping sites at the three-phase contact lines

**Field Uniformity and Distribution:**

Uniform electric field distribution is essential for predictable and efficient charge transfer operations in your device. The electric field lines must penetrate consistently into the liquid argon to create well-defined potential wells and enable controlled charge movement between adjacent gate electrodes. Wetting conditions support uniform field distribution by maintaining a constant dielectric interface without geometric discontinuities that could distort field lines

Designing the device to promote and maintain wetting conditions at the liquid argon/alumina interface. This can be achieved through several approaches: ensuring that the aluminum oxide surface is clean and properly prepared before assembly, maintaining high purity in the liquid argon to prevent contamination that could alter wetting properties, and potentially applying surface treatments to the alumina layer that enhance wetting without compromising electrical properties.

**Cryogenic Liquid Wetting Characteristics:** 

Research on cryogenic liquid wetting indicates that most cryogenic fluids, including liquid argon, exhibit strong wetting tendencies on solid surfaces. Experimental measurements have shown that cryogenic liquids typically produce contact angles well below 90° on most surfaces, with the highest measured contact angles being approximately 30°. This natural wetting tendency results from the low surface tension of cryogenic liquids relative to the surface energy of most solids.

The unique layered structure allows these ionization electrons to be:

1) Generated in the noble liquid (LAr/LXe)
2) Drifted toward the Al₂O₃ interface, but remain in the noble liquid (if not lost to traps)
3) Transported laterally via potential wells created by the metal electrodes
4) Read out through a skipper circuit design

Advantages: 
- Sub-electron Noise Levels: Multiple sampling reduces noise by a factor of 1/√N (where N is the number of samples)

This unique combination of features (ie Skipper readout, engineered interfaces, and noble liquid interaction) could enable detection sensitivity at the very low levels; critical levels for next-generation dark matter searches and neutrino physics.

---

## Measurement Approach
So up unitl now, I can confidently state that this device in principle should work. However, the issues lies in the charge transfer efficiency. This will be determined by the wetting behavior between the LAr and Al2O3 interface. The wetting characteristics of any liquid-solid system are quantified through contact angle measurements, where angles below 90° indicate favorable wetting conditions and angles above 90° suggest poor wetting behavior. The theoretical foundation for understanding argon wetting behavior rests on Young's equation, which describes the equilibrium contact angle as a balance between solid-vapor, liquid-vapor, and solid-liquid interfacial tensions. 

1) Wetting/Non Wetting 
  - Cryogenic Sessile Drop Contact Angle Measurement
    - Method:
      - Sample preparation: Fabricate Al₂O₃ coated silicon substrates using identical ALD conditions as the detector.
      - Cryostat setup: Place the substrate in a temperature-controlled cryostat filled with purified liquid argon/xenon.
      - Droplet injection: Use a piezoelectric picoliter dispenser to deposit a 50–100 pl noble liquid droplet onto the Al₂O₃ surface.
      - Imaging: Capture droplet profile via high-speed camera with backlit illumination through a cryostat viewport.
      - Analysis: Calculate contact angle using Young-Laplace equation fitting.
      - Key advantages:
Directly measures wettability under operational conditions (cryogenic temps, noble liquids).
Sub-1° precision achievable with nanodroplets.
Validates interfacial energy models predicting electron mobility.


  - Capacitive Coupling Monitor
    - Measures the electrical capacitance between the noble liquid and silicon substrate, which differs depending on how the liquid interacts with the Al₂O₃ surface. Capacitance is measured using a precision LCR meter, applying a small AC signal across the metal contacts and the silicon substrate.
      - Non-wetting interfaces show low capacitance
      - Wetting interfaces show higher capacitance
        - Uses the main device structure itself as the measurement platform
        - Applies a small AC bias (1 kHz, 1 V) to the interface
        - Measures the resulting capacitance between liquid and substrate 

2) Surface Charge Trapping and Release
  - C-V curves for MOS capacitor
    - Procedure:
      - Fabricate MOS capacitors (Al or TiN/Al₂O₃/n-Si).
      - Apply a voltage sweep 
      - Measure capacitance hysteresis width between forward/reverse sweeps.
    - Interpretation: Hysteresis width is proportional to trapped charge density in dielectrics 
    - [Characterization of Electrical Traps Formed in Al2O3 under Various ALD Conditions](https://pmc.ncbi.nlm.nih.gov/articles/PMC7767157/) - authors show how hysteresis and flatband voltage shifts in the C-V curves directly quantify trap densities and their dependence on ALD process parameters.
    - [Charge trapping analysis of Al2O3 films deposited by atomic layer deposition
using H2O or O3 as oxidant](https://digital.csic.es/bitstream/10261/378620/1/1_2013-jvstb_31_1_01a101-2013_digital_1_.pdf)

___



---

## **Possible Sequence**
1. Substrate Preparation
- Starting Material:
Float-zone, high-resistivity n-type silicon (10,000 Ω·cm - full depletion), **200 mm diameter**, (100) orientation, 200-300 μm thickness
- Initial Cleaning:
RCA clean (NH₄OH/H₂O₂ followed by HCl/H₂O₂) and HF dip to remove native oxide
- Equipment:
RCA cleaning station and acid wet bench with HF handling capabilities
- Silicon Nitride Deposition:
50 nm Si₃N₄ via LPCVD at 780°C (LPCVD produces more uniform Si₃N₄ films with fewer defects and higher step coverage than alternative methods). Si₃N₄ layer serves as a high-quality etch stop during subsequent processing and provides excellent electrical isolation
- Equipment:
Thermal oxidation furnace and Low-Pressure Chemical Vapor Deposition (LPCVD) system
2. Gate Structure Formation
- Polysilicon Deposition:
Triple-level polysilicon gate structure (3-phase CCD). Each layer 0.5 μm thick, in-situ phosphorus doped
- Etching:
Plasma etching with Cl₂/HBr chemistry for high selectivity to Si₃N₄
- Equipment:
LPCVD system, Plasma etcher and Stepper lithography system
3. Backside Processing
- Thinning:
Mechanical grinding to target thickness (200-300 μm) and chemical-mechanical polishing for surface smoothing
- Backside Contact:
In-situ doped polysilicon (ISDP) layer (20-25 nm) deposited at 650°C (Forms the critical n+ contact (20-25 nm thick) on the back side of fully-depleted CCDs and thin, uniform ISDP layer enables excellent blue/UV response while providing low-resistance electrical contact)
- Equipment:
Wafer grinding tool, chemical mechanical polishing (CMP) system and LPCVD system
4. Al₂O₃ Interface Layer (Key Innovation)
- Atomic Layer Deposition:
50 nm Al₂O₃ using trimethylaluminum (TMA) and H₂O precursors at 150°C
0.97 Å/cycle growth rate for precise thickness control
- Post-Deposition Annealing:
400°C in N₂ ambient to optimize interface states and create controlled defect density
- Equipment:
ALD system and Annealing furnace
5. Metal Electrode Fabrication
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

## **Resources**

- [Weak Interactions of Leptons and Quarks Commins & Bucksbaum](https://www.google.com/books/edition/Weak_Interactions_of_Leptons_and_Quarks/A15OvAvA7HAC?hl=en&gbpv=1&printsec=frontcover)

- [Dark Matter](https://pdg.lbl.gov/2020/reviews/rpp2020-rev-dark-matter.pdf)

- [CCD Manufacturing and Operation](https://www.higp.hawaii.edu/~gillis/GG671b/Week02/Readings/Handbook%20of%20CCD%20astronomy%20Ch%202.pdf)

- [Signal-to-Noise in Optical Astronomy](https://www.ucolick.org/~bolte/AY257/s_n.pdf)




