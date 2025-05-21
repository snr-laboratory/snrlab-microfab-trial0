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

<img width="678" alt="Screenshot 2025-05-16 at 7 00 17 PM" src="https://github.com/user-attachments/assets/d64e9c04-84df-4b1c-add3-c7d51be4ebdb" />

CCD detector design: 
- High-resistivity n-type silicon substrate.
- Metal contacts for controlling potential wells.
- A very thin layer of Al2O3 (optional reasearch: SiO2 or SiN) for achieving uniform and flat features at this specific interface.
- The metal electrodes create potential wells in the silicon that extend through the dielectric. Electric fields penetrate the thin dielectric, keeping electrons confined above in the LAr/LXe or in the high-resistivity silicon.

## **CCD Readout Ciruit**
<img width="1100" alt="Screenshot 2025-05-20 at 4 56 27 PM" src="https://github.com/user-attachments/assets/aaf8f65d-f268-4c69-8fc8-0d9ce0fcb926" />

- Sequential voltage changes on the metal contacts create moving potential wells that shuttle charges laterally
- The deep depletion region in the high-resistivity n-type silicon provides efficient charge collection and transfer.
- Skipper features to allow multiple non-destructive measurements of the same charge packet (While conventional CCDs measure charge packets only once before discarding them, Skipper CCDs incorporate a floating gate amplifier that enables multiple non-destructive measurements of the same charge packet)

---

## **"CCD Like" Operation**
1) Charge Injection: Electrons are injected into the structure via the source node. 
2) Non-Destructive Charge Transfer: Charge packets move between gate electrodes via controlled voltage sequences. Each transfer allows a measurement without destroying the charge.
3) Non-Destructive Readout: At the sense node, a floating gate amplifier measures the charge. The charge is then returned to the gate array for more measurements.

Advantages: 
- Sub-electron Noise Levels: Multiple sampling reduces noise by a factor of 1/√N (where N is the number of samples), allowing the device to reach extraordinary sensitivity.
- Single-electron Resolution: This technology enables "counting" individual electrons with high confidence, making it capable of detecting even the weakest signals.
- Smart Readout: The "skipper" capability allows selective multiple sampling of regions of interest while quickly reading the rest, optimizing both precision and speed.
- High Dynamic Range: Can accurately measure from single electrons to thousands of electrons simultaneously in different pixels.

[Skipper-CCDs: current applications and future](https://agenda.infn.it/event/22092/contributions/166721/attachments/91165/123549/Poster%20-%20Skipper-CCDs_%20current%20applications%20and%20future.pdf)

---

## **n-type High-Resistivity Silicon Substrates**
- Rationale: For weak-signal searches (WIMPs, neutrinos), n-type substrates are superior due to their deep depletion, back-illumination, and ultra-low noise. However, fabrication is more complex and can be costly.

---

### **Buried Channel Design**
This creates an electric field that confines electrons to the bulk silicon, away from the surface. 
- Created via phosphorus ion implantation to form an n-doped region within the p-type epitaxial layer[^1][^6].
- Advantages: Higher charge transfer efficiency (CTE > 0.99999) and reduced surface recombination compared to surface-channel designs[^1][^7].
- Implant: Phosphorus @ 150 keV (1e16 cm⁻³) to form n-type layer 1.5 μm below surface.
- Annealing: 900°C, N₂ ambient to activate dopants without oxidizing gates.
The n-type doped layer creates a buried channel where electrons flow. This keeps electrons ~1-2 μm away from the Si-SiO₂ interface, preventing interaction with oxide traps.
  
### **Reasoning** 
The n-type layer creates a potential minimum in the silicon bulk. Electrons are repelled from the surface by built-in electric fields from doping gradients and positive gate voltages that push electrons deeper into the silicon.
- Sub-electron Noise: BCCDs achieve 0.068 e⁻ rms/pixel with Skipper readout, enabling single-electron resolution critical for rare-event detection.
- Cryogenic Compatibility: BCCDs paired with ALD-grown Al₂O₃ passivation reduce dark current to <0.001 e⁻/pixel/hour at -100°C, essential for long-exposure dark matter searches.
- Radiation-Hardened Architectures: BCCDs using epitaxial silicon (10 kΩ·cm) and hydrogen annealing tolerate displacement damage from neutron/γ-ray backgrounds in underground labs.

- Advantages: Higher charge transfer efficiency (CTE > 0.99999) and reduced surface recombination compared to surface-channel designs[^1][^7].




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

