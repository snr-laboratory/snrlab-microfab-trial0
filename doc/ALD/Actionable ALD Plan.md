# In-House Horizontal Tube Atomic Layer Deposition System for Al2O3 Thin Film Growth and Interface Characterization

## Motivation   
In order to determine more about the idea of the LAr skipper CCD detector and its charge transfer performance, we must remove the bottleneck, which in our case is atomic layer deposition (ALD) of 50nm of Al₂O₃ on silicon substrate. The aim is to produce thin films of Al₂O₃ to probe the interface response of LAr and Al₂O₃ interface trap behavior and extract information on the efficiency of measuring and transporting charge. In hopes of advancing or contributing to exceptionally sensitive devices needed for next generation high energy particle detectors.  

## Introduction   
Alumina or Aluminum Oxide (Al2O3) is a very well known and studied material. Al2O3 is classified as a high-k dielectric material and in regards to semiconductor devices it is defined as being a good insulator and charge storage material. \[Experimental Yuxi Wang Al2O3\]. Many of its properties like large band gap or theoretical breakdown strength make Al2O3 a desirable and promising candidate for further research studies in many different fields, especially for uses in microelectronic applications \[Experimental Yuxi Wang Al2O3; Characterization of electrical traps Md. Mamunur Rahman\].   

The advantages of ALD lie in the chemistry of self-limiting reactions. In ALD, select reactants are carefully controlled and introduced into the system. The fine amounts and programmable sequencing of reactants is capable of producing high quality films with excellent uniformity, conformality and thickness control. Marking this vapor deposition technique as one of the most utilized methods for tackling the issues in thin film defects and impurities for achieving enhanced ultrathin films needed for pushing the boundaries on new and innovative technologies \[ADV Zhang 2022 \]. Among the many atomic layer deposition recipes, Al2O3 stands out among the rest due to its robust and highly effective half reactions producing high purity films at low temperatures with ease \[ALT TMA/H2O Sperling \].  

The purpose of this document is to propose how to construct a flow-type hot-walled horizontal tube reactor and utilize existing ALD recipes from others previous work to study the growth and quality of 50nm of Al2O3 on a silicon substrate. By fluctating the precursor delivery times, gas flow management, and temperature and pressure synergy, the interface trap density, fixed charges and border traps present in the growth of alumina can be manilpulated and measured. The use of C/V measurements can be used to determine this and charaterization of the deposited films can be done quickly using scanning electron microscopy and energy dispersive x-ray spectroscopy. 

Figure 1. Onshape 3D model

<img width="1920" height="969" alt="image" src="https://github.com/user-attachments/assets/f67354b6-1f78-4f90-803d-bbcf9ab31917" />

<img width="1920" height="968" alt="image" src="https://github.com/user-attachments/assets/0ed9d89e-afbd-440f-a7e9-564e506e77d8" />

Diagram 1. Gas Flow Schematic

<img width="2000" height="900" alt="image" src="https://github.com/user-attachments/assets/9f4b3fac-f492-4f49-b923-b3a5a84ec2b6" />

Diagram 2. Electrical Schematic 

<img width="1920" height="939" alt="image" src="https://github.com/user-attachments/assets/42150ebe-0afb-46da-8512-053451ce1c69" />

## Tool Operation  
The system begins at the source nitrogen tank which acts as a carrier and purging gas source. The tank has a stainless steel pipe fitting immediately after the gas regulator outlet that has three lines directly connected to mass flow controllers (MFCs). These MFCs are connected to a breakout box which is capable of distributing power to all three controllers from a single power source as well as serving as the method for communicating, controlling and monitoring from a single computer interface. Each reactant has is own dedicated MFC (trimethylaluminum (TMA), H₂O, and N2 purge) to better control the actual mass flow rate (100SCCM (TMA and H2O) and 1000SCCM (N2)) and gas flow managament through the system. 

Downstream of the MFCs are solenoid valves which function as squencing and emergency shutoff valves controlled by the Arduino. The Ardunino has an 8 channel 5V relay module which make the connections to the solenoid and ALD3 valves. ALD3 valves precisely inject (delivery) and pulse (timing) TMA and H2O through control and programming of the (given) software and Arduino. After the solenoid valves, the gas flow can either follow through the TMA cylinder, H2O housing or nitrogen purge stainles steel lines. The tubing up to the inlet of the solenoid valves used is tygon tubing for all three routes. After the oulet of the solenoid valves, the gas flows through stainless steel tubing until it arrives at the inlet port cap leading into the entrance of the reaction chamber. 

The TMA path first encouters one of three manual ball valves and then a tee joint adapter that leads into the TMA cylinder after passing through the second ball valve specifically included for the safe tranport and installation of the TMA precursor. Continuing with the TMA route, there is a third manual ball valve that is included downstream before the ALD3 valves. After the ALD3 valves, the gasses flow into the vacuum assembley that lead to the entrance of a 2 inch/50.8 mm diameter quartz tube 24 inches/ 610 mm in length. The initial vacuum assembly begins with a 4way cross that has connections for pressure and temperature sensors with the appropriate CF caps to ensure proper connections and vacuum integrity. 

The Pirani vacuum pressure sensor (Granville-Phillips 275 convectron guage) is capable of measuring pressure from atmosphere to 10^-4 Torr. This guage connects to the ion guage 100 that measures pressure through an ionization gauge of Bayard-Alpert within the 10^-11 and 10^-1 Torr pressure range. This controller is fully programmable and is capable of data logging and pressure vs time plots to monitor process activity. 

There will be two platinum resistance temperature detectors inside the vacuum assembly that are capable of measuring temperature in the range of roughly -50C-600C drawing a current of 1.4 mA. The first will be inside the 4way cross lower entrance, but not obstructing gas flow and the second will be near the center of the tube furnace where the hot zone should be the most consistent and where the sample is situated. These sensors will be connected to the Lakeshore 331S temperature controller which will monitor the temperature starting from the vac assembly up to the sample in the center of the furnace. The RTD range and accuracy plus the use of the temperature controller allow for +/- 0.1 K at room temperature with good calibration and wiring.  

All gasses, are drawn into the vac assembly region then proceed to the tube furance and then continue to make their way to the fume hood exhaust. The pump in this setup is a VIVO VP125 3.5 CFM oil pump capable of achieving an ultimate vacuum of 5 Pa/0.03 Torr. 

DI H20 is housed in a three neck round bottom flask with a fabric 1L heating mantle at its base. The heating mantle temperature is controlled using a basic PL120 (5-100% range) temperature controller that can regulate the input voltage providing gentle heating capable of stable control in the range of 25-100C. 

The 8 relay module has the solenoid valves for TMA, H2O and N2 connected to channels K1-K3 with 18 awg wires connected from the DIN 43650B to NO and COM on the relay. 

## System Parameters

1. System Media  
   * Trimethylaluminum (TMA) \- Metal precursor (ALD Grade)  
   * DI Water (H₂O)   
   * Nitrogen (N₂) \- Alternative purge gas (N₂, ≥99.999%) 

\[[https://www.umass.edu/ials/sites/default/files/msds/Trimethylaluminum.pdf](https://www.umass.edu/ials/sites/default/files/msds/Trimethylaluminum.pdf)\]

2. System Design Pressure  
   * Low pressure (flow-type): \~100 Pa   (0.75 Torr)   
   * Oregon State system: 300 mTorr base to 3.75 Torr with gas flow  
   * Typical process: 75 mTorr to 7.5 Torr typical \[Hong 2022\]  
   * Process operates at 0.1–5 Torr with a base pressure below 0.5 Torr prior to 

precursor dosing.

* Operating safety consideration: Most systems designed for \<10 Torr operation

![][image1]  
\[Development of a powder atomic layer deposition reactor for research purposes  
Simon Andsten\]  
\[[Conformality in atomic layer deposition: Current status overview of analysis and modelling](https://pubs.aip.org/aip/apr/article/6/2/021302/570185/Conformality-in-atomic-layer-deposition-Current)\]

3. System Design Temp (various reported ranges)  
* TMA:   
  * TMA: 25-200°C  
  * Lines maintained at \~115-120°C; avoids condensation.  
* Water flask: \~50–100°C controlled via mantle.  
* Optimal Al₂O₃ ALD temperature: 150-300°C  
  * TMA/H₂O ALD window: 269-384°C (optimal range)  
* Oregon State system: 25-350°C capability 

Figure 2\. ALD processing window and how growth per cycle can be influenced by temperature.   
   
\[[https://www.umass.edu/ials/sites/default/files/msds/Trimethylaluminum.pdf](https://www.umass.edu/ials/sites/default/files/msds/Trimethylaluminum.pdf)\]

\[The Design and Fabrication of an Atomic Layer Deposition Reactor for Coating Powders Natalie Altvater University of Maine\]

\[Development of a powder atomic layer deposition reactor for research purposes  
Simon Andsten\]

4. System Flow Rate  
   * Process gas flow (TMA and H2O): 5 \- 75 sccm commonly used  
   * TMA/H₂O gas lines: 0–100 sccm MFC range.  
   * Nitrogen carrier: 20-800 mL/min   
   * Oregon State optimal (N2): 150 mL/min  
   * Purge line: Up to 500 sccm, flexible for rapid purging.  
   * Carrier N₂: 20–800 mL/min practical operation; can adjust for recipes.

\[[Development of an Atomic Layer Deposition System for Deposition of Alumina as a Hydrogen Permeation Barrier](https://arxiv.org/pdf/2507.00958)\]  
\[[https://engineering.oregonstate.edu/sites/engineering.oregonstate.edu/files/2023-03/silsbycarson\_6095338\_75501011\_expo\_poster\_ald\_final-1.pdf](https://engineering.oregonstate.edu/sites/engineering.oregonstate.edu/files/2023-03/silsbycarson_6095338_75501011_expo_poster_ald_final-1.pdf)\]  
	\[Hong 2022\]   
\[[Conformality in atomic layer deposition: Current status overview of analysis and modelling](https://pubs.aip.org/aip/apr/article/6/2/021302/570185/Conformality-in-atomic-layer-deposition-Current)\]

5. Base Pressure   
* Design: Evacuate to as low as possible before dosing, target below 0.5 Torr   
* Flow-type reactors: \~100 Pa (0.75 Torr)  
  * Oregon State system: 300 mTorr 

\[Hong 2022\]   
\[[Conformality in atomic layer deposition: Current status overview of analysis and modelling](https://pubs.aip.org/aip/apr/article/6/2/021302/570185/Conformality-in-atomic-layer-deposition-Current)\]

6. TMA \+  1300 Furnace Hazards 

TMA Loading into 10mL Schlenk Flask  
Method 1: Glovebox Transfer 

* Equipment: N₂-filled glovebox (\<1 ppm O₂, H₂O)  
* Procedure: TMA transferred using syringe techniques under inert atmosphere  
* Safety: Gold standard for pyrophoric liquids \- zero air exposure  
* Volume control: Precise measurement possible with graduated syringes  
* TMA: Pyrophoric, flash point \-17°C, spontaneous ignition in air, violently water-reactive.  
* Hot zones exceeding 200°C \- TMA decomposition  
* Connection points \- Potential leaks to atmosphere  
* Valve seats and seals \- Corrosion/degradation  
* Precursor lines \- Condensation if too cool, decomposition if too hot  
* Reactor inlet \- Direct exposure to high temperatures  
* Water contact points: Any moisture ingress  
* Pump oil

\[[https://www.mdpi.com/2227-9717/1/2/128](https://www.mdpi.com/2227-9717/1/2/128) Dynamic Modeling for the Design and Cyclic Operation of an Atomic Layer Deposition (ALD) Reactor\]  
\[[https://www.forgenano.com/wp-content/uploads/2012/02/2004-Groner-Low-temp-Al2O3-ALD.pdf](https://www.forgenano.com/wp-content/uploads/2012/02/2004-Groner-Low-temp-Al2O3-ALD.pdf) Low-Temperature Al2O3 Atomic Layer Deposition\]  
\[[https://www.sciencedirect.com/science/article/abs/pii/S0022024817303767](https://www.sciencedirect.com/science/article/abs/pii/S0022024817303767) Experimental study of trimethyl aluminum decomposition\]

7. Temperature and Vapor Pressures of TMA and Water   
* TMA: Heated to 120°C for vaporization (may adjust between 90–120°C; keep below \~150°C).  
* Water: Typically 50–100°C via mantle or sand bath; warm enough to produce sufficient vapor pressure.  
* TMA bubbler: 10-20°C for controlled vapor pressure  
* Water bubbler: 20°C (vapor pressure \~17.5 Torr)

\[The Design and Fabrication of an Atomic Layer DepositionReactor for Coating Powders \-  Natalie Altvater University of Maine\]

* TMA bubbler: 120°C  
* TMA delivery lines: 140°C (prevent condensation)  
* Water: Room temperature (adequate vapor pressure)

\[Linköping paper\]  
\[[Exploring TMA and H2O Flow Rate Effects on Al2O3 Thin Film Deposition by Thermal ALD: Insights from Zero-Dimensional Modeling](https://www.mdpi.com/2079-6412/14/5/578)\]  
\[[https://pdfs.semanticscholar.org/a303/a54b45be1f323ff84b20ab3a62069230c343.pdf](https://pdfs.semanticscholar.org/a303/a54b45be1f323ff84b20ab3a62069230c343.pdf)\]  
\[[Estimating the thermochemical properties of trimethylaluminum for thin-film processing applications | Journal of Vacuum Science & Technology A | AIP Publishing](https://pubs.aip.org/avs/jva/article/36/5/050602/287/Estimating-the-thermochemical-properties-of)\]  
\[[Investigating the Trimethylaluminium/Water ALD Process on Mesoporous Silica by In Situ Gravimetric Monitoring \- PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC6027410/)\]

## TMA Temperature Selection (AI)

Target vapor pressure: 0.1-1 Torr for  chamber pressure (0.1-5 Torr)  
Temperature calculation using Antoine equation:

log₁₀(P\_Torr) \= 4.67984 \- 1724.231/(T\_K \- 31.398)

For P \= 0.5 Torr (middle of range):

* Solving: T \= 94°C  
* Conservative choice: 100°C (provides 0.4 Torr)

## Water Temperature Selection (AI)

Target: Sufficient vapor pressure without overwhelming the system  
Using Antoine equation for water:

log₁₀(P\_mmHg) \= 8.07131 \- 1730.63/(233.426 \+ T\_C)

At 60°C: 149 Torr \- Excellent choice as it provides:

* Adequate vapor pressure for saturation  
* Manageable pressure in your low-pressure system  
* Safe operating margin below boiling

## How much TMA and water needed (AI)

Precisely calculated above:

* Research scale (4-inch wafer): 2.36 mL TMA, 0.67 mL water  
* Your flask capacities are adequate for multiple runs

## Parameter settings for your setup? (AI)

Recommended operating conditions:

* TMA temperature: 100-110°C (conservative, safe)  
* Water temperature: 60-80°C (using Lakeshore 331\)  
* Chamber pressure: 1-3 Torr  
* Carrier gas flow: 100-200 sccm N₂

How easily adaptable is this for silicon oxide?  
Switching between different ALD chemistries (Al₂O₃ → SiO₂) requires separate precursor delivery systems to prevent cross-contamination and ensure process reliability.  
Precursor changes:

* Replace TMA with silicon precursors: BDEAS, 3DMAS, or SiCl₄  
* Keep H₂O as oxygen source  
* Add NH₃ catalyst for room temperature SiO₂ processes  
  * Separate Feedthroughs  
  * Additional Mass Flow Controllers  
  * Process temperature: 300-600°C (higher than Al₂O₃)

\[[https://pmc.ncbi.nlm.nih.gov/articles/PMC9053598/](https://pmc.ncbi.nlm.nih.gov/articles/PMC9053598/) SiO2thin film growth through a pure atomic layer deposition technique at room temperature\]		\[[https://www.scholars.northwestern.edu/en/publications/atomic-layer-deposition-of-sio-sub2sub-using-catalyzed-and-uncata](https://www.scholars.northwestern.edu/en/publications/atomic-layer-deposition-of-sio-sub2sub-using-catalyzed-and-uncata)\]

Electrical Schematic  
Figure 3\. Electrical layout scheme and connections using existing parts and planned purchases. 

Materials in Stock

* 21100 Tube Furnace by Barnstead Thermolyne  
  * Reaction chamber  
  * Manual: [https://www.nist.gov/system/files/documents/ncnr/E133tubefurnace.pdf](https://www.nist.gov/system/files/documents/ncnr/E133tubefurnace.pdf)

* Ion Gauge Controller Model IGC100 by Stanford Research Systems  
  * Mass flow controller feedback  
  * Manual: [https://www.thinksrs.com/products/igc100.html](https://www.thinksrs.com/products/igc100.html)  
  * Datasheet: [https://www.thinksrs.com/downloads/pdfs/catalog/IGC100c.pdf](https://www.thinksrs.com/downloads/pdfs/catalog/IGC100c.pdf)

* Lakeshore 331 Temperature Controller  
  * PT100   
  * Control the fabric heating mantle  
  * Manual: [https://www.lakeshore.com/docs/default-source/product-downloads/catalog/lstc\_331\_l.pdf?sfvrsn=5d8525f8\_1\&srsltid=AfmBOorZMPvuMUcx2dyIiymXVAslL-Lwq\_07ACq6VLINwqweCGV0sqxV](https://www.lakeshore.com/docs/default-source/product-downloads/catalog/lstc_331_l.pdf?sfvrsn=5d8525f8_1&srsltid=AfmBOorZMPvuMUcx2dyIiymXVAslL-Lwq_07ACq6VLINwqweCGV0sqxV)

* Arduino Mega 2560 with Analog Shield and 8 Module Relay   
  * Solenoid valve and ALD valve control 

* Granville-Phillips Convectron Gauge (Catalog No. 275185\)  
  * Monitor pressure  
  * [https://www.mks.com/p/275185](https://www.mks.com/p/275185)

* CF to KF (QF)-40 Adapte  
  * Connect the 4-way cross to the work tube seal (pending) 

* 1000mL Schlenk Flask and Fabric Heating Mantle 100A O408 \- 1000 mL, 115V  
  * For H20  
  * [https://www.labdepotinc.com/p-2-series-o-hemispherical-mantle-115-v-230-v?utm\_term=\&utm\_campaign=Zombie+SKU+PMax\&utm\_source=adwords\&utm\_medium=ppc\&hsa\_acc=5326096552\&hsa\_cam=22295522342\&hsa\_grp=\&hsa\_ad=\&hsa\_src=x\&hsa\_tgt=\&hsa\_kw=\&hsa\_mt=\&hsa\_net=adwords\&hsa\_ver=3\&gad\_source=1\&gad\_campaignid=22299254812\&gbraid=0AAAAADnVOIccciIEedHnwzFboH2VOzjbN\&gclid=CjwKCAjwv5zEBhBwEiwAOg2YKJNLFVoFzUy-GgATPyhfZLV9GP1MFsqOqQKTmzFI-yT8zFbeIrtKUBoCnwsQAvD\_BwE](https://www.labdepotinc.com/p-2-series-o-hemispherical-mantle-115-v-230-v?utm_term=&utm_campaign=Zombie+SKU+PMax&utm_source=adwords&utm_medium=ppc&hsa_acc=5326096552&hsa_cam=22295522342&hsa_grp=&hsa_ad=&hsa_src=x&hsa_tgt=&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=1&gad_campaignid=22299254812&gbraid=0AAAAADnVOIccciIEedHnwzFboH2VOzjbN&gclid=CjwKCAjwv5zEBhBwEiwAOg2YKJNLFVoFzUy-GgATPyhfZLV9GP1MFsqOqQKTmzFI-yT8zFbeIrtKUBoCnwsQAvD_BwE)  
  * [https://www.precisionlabware.com/three-neck/303238-1000ml-29-42-angled-three-neck-flask.html?srsltid=AfmBOooLlnciyNSl3O3SmJneDOZTVio5dLBlU2IvYlT\_qHCpmxMSUW7s](https://www.precisionlabware.com/three-neck/303238-1000ml-29-42-angled-three-neck-flask.html?srsltid=AfmBOooLlnciyNSl3O3SmJneDOZTVio5dLBlU2IvYlT_qHCpmxMSUW7s)

* VIVOHOME Rotary Vane Vacuum Pump Model VP125  
  * Ultimate Vacuum: 5 Pa (0.037 Torr)  
  * [https://vivohome.com/vivohome-rotary-vane-air-vacuum-pump-with-oil-bottle-etl-listed-p152378156871773425-v152378156871773382](https://vivohome.com/vivohome-rotary-vane-air-vacuum-pump-with-oil-bottle-etl-listed-p152378156871773425-v152378156871773382)

* 1300 Furnace by Barnstead Thermolyne (Reconsidering)   
  *  TMA chamber  
  * Manual: [https://pim-resources.coleparmer.com/instruction-manual/33900-00-05-10-15manual.pdf](https://pim-resources.coleparmer.com/instruction-manual/33900-00-05-10-15manual.pdf)

Materials in Need of Purchase

* TMA ALD Grade  
* DI H20  
* N2 Carrier Gas

* 100 SCCM MFC (x2)  
  * Part number: KJLMCH4BAA1  
  * Vendor: [https://www.lesker.com/newweb/process\_instruments/mass-flow-alicat-mc.cfm](https://www.lesker.com/newweb/process_instruments/mass-flow-alicat-mc.cfm)  
  * Unit Price: $1480.00

* 1000 SCCM MFC  
  * Part number: KJLMCK4BAA1  
  * Vendor: [https://www.swagelok.com/downloads/webcatalogs/en/ms-02-301.pdf](https://www.swagelok.com/downloads/webcatalogs/en/ms-02-301.pdf)  
  * Unit Price: $1480.00

* ALD Valves  
  * Part number: 6LVV-ALD3TMR4-P-CV  
  * Vendor: [https://www.swagelok.com/downloads/webcatalogs/en/ms-02-301.pdf](https://www.swagelok.com/downloads/webcatalogs/en/ms-02-301.pdf)  
  * Unit Price: 

* Solenoid Valves (x4)  
  * Part number:  JFSV00068  
  * Vendor: [https://ussolid.com/products/u-s-solid-electric-solenoid-valve-1-4-24v-dc-solenoid-valve-stainless-steel-body-normally-closed-viton-seal-html?srsltid=AfmBOopZIKPCtywSAE2vqqs5Sqyfi6Rtx4oVVjlZtFwsCVOxILQsX-oa](https://ussolid.com/products/u-s-solid-electric-solenoid-valve-1-4-24v-dc-solenoid-valve-stainless-steel-body-normally-closed-viton-seal-html?srsltid=AfmBOopZIKPCtywSAE2vqqs5Sqyfi6Rtx4oVVjlZtFwsCVOxILQsX-oa)  
  * Unit Price: $29.59

* PT100 Temperature Sensor PT APES-6×80  
  * Part number:  APES-6×80  
  * Vendor:[https://www.aavadinstrument.com/product/rtd-pt100-thermocouple-sensor/](https://www.aavadinstrument.com/product/rtd-pt100-thermocouple-sensor/)  
  * Unit Price: 

* 

* Bellow  
  * Part number:  
  * Vendor:[https://www.lesker.com/newweb/flanges/bellows\_kf\_hydraulicallyformed.cfm?pgid=standard](https://www.lesker.com/newweb/flanges/bellows_kf_hydraulicallyformed.cfm?pgid=standard)  
  * Unit Price:  
      
* ALD Sensor  
  * Quartz crystal microbalance (QCM)   
  * Datasheet: [https://www.inficon.com/media/3755/download/ALD-Sensor-(English).pdf?v=1\&inline=true\&language=en](https://www.inficon.com/media/3755/download/ALD-Sensor-\(English\).pdf?v=1&inline=true&language=en)  
  * [https://www.inficon.com/media/3530/download/ALD-Sensor-and-High-Temperature-Crystals(English).pdf?v=1\&inline=true\&language=en](https://www.inficon.com/media/3530/download/ALD-Sensor-and-High-Temperature-Crystals\(English\).pdf?v=1&inline=true&language=en)

* 4-Way Cross (2.75" OD)  
  * Part number: C-0275  
  * Vendore: [https://www.lesker.com/flanges/fittings-cf-crosses/part/c-0275](https://www.lesker.com/flanges/fittings-cf-crosses/part/c-0275)  
  * Unit Price: $175.00

* Shaft Collar With OD Flats And Holes, Black Oxide Steel, Two-Piece Clamp Style  
  * Part number: Ruland OF-SP-24-F  
  * Vendor: [https://www.ruland.com/of-sp-24-f.html\#](https://www.ruland.com/of-sp-24-f.html#)  
  * Unit Price: $18.95 a piece (2 needed)

* PTFE SEALING TAPE  
  * Part number: 5490 25MM  
  * Vendor: [https://www.newark.com/3m/5490-25mm/sealing-tape-ptfe-32-9m-x-25-4mm/dp/43Y4598?cfm=true](https://www.newark.com/3m/5490-25mm/sealing-tape-ptfe-32-9m-x-25-4mm/dp/43Y4598?cfm=true)  
  * Unit Price: $244.56

* CF Caps for 4-Way Cross  
  * Part number: f0275n000nln   
  * Vendor: [https://www.lesker.com/flanges/flanges-cf-316ss/part/f0275n000nln](https://www.lesker.com/flanges/flanges-cf-316ss/part/f0275n000nln)  
  * Unit Price: $67.10

  * Part number: IFDGG091053   
  * Vendor: [https://www.lesker.com/feedthroughs/instrument-feedthroughs-mpdt-subd/part/ifdgg091053](https://www.lesker.com/feedthroughs/instrument-feedthroughs-mpdt-subd/part/ifdgg091053)  
  * Unit Price: $377.50

* ## Mounting Setup

  * Solid Aluminum Plate: .187" Thick  
    * Part number:  2454  
    * Vendor: [https://8020.net/2454.html](https://8020.net/2454.html)  
  * 30mm X 30mm T-Slotted Profile \- Four Open T-Slots  
    * Part number:  30-3030  
    * Vendor: [https://8020.net/30-3030.html](https://8020.net/30-3030.html)  
  * T-Slot Sliders  
    * Part number:   
    * Vendor: [https://8020.net/30-3030.html](https://www.modularcomponents.com.au/building-blocks/sliding-and-lifting-mechanisms/t-slot-sliding-inserts/)  
  * Total: $166.44 (not including T-Slot Sliders)

* 46 OD Quartz Tube  
  * Part number:  QUA4642  
  * Vendor:  [https://almathcrucibles.com/product/qua4642/](https://almathcrucibles.com/product/qua4642/)	  
    	[https://www.advaluetech.com/products/fused-quartz/clear-quartz-tubing-open-ends](https://www.advaluetech.com/products/fused-quartz/clear-quartz-tubing-open-ends)

* Work Tube End Seal with NW-40 Flange (Still in contact)  
  * Part number:   
  * Vendor: [https://www.carbolite-gero.com/products/modified-atmosphere/work-tube-accessories/](https://www.carbolite-gero.com/products/modified-atmosphere/work-tube-accessories/)

Fittings

* Z685631 Tygon 2375 represented by black dashed line (1/4" OD)  
* Stainless steel tubing (1/4" OD) represented by blue dotted line  
* SS-4-HC-1-2  
* SS-4-HC-1-4  
* SS-4-TA-1-4  
* SS-4-WVCR-6-400  
* Feedthroughs SS-400-61 

* Ceramic Boat and Arm  
    
* Heating Tape  
    
* Glass Wool   
  




References 

1 Y. Wang, Y. Chen, Y. Zhang, Z. Zhu, T. Wu, X. Kou, P. Ding, R. Corcolle, and J. Kim, “  
Experimental Characterization of ALD Grown Al\&lt;SUB\&gt;2\&lt;/SUB\&gt;O\&lt;SUB\&gt;3\&lt;/SUB\&gt; Film for Microelectronic Applications,” AMPC 11(01), 7–19 (2021).

2 Md.M. Rahman, K.-Y. Shin, and T.-W. Kim, “Characterization of Electrical Traps Formed in Al2O3 under Various ALD Conditions,” Materials 13(24), 5809 (2020).

3 J. Zhang, Y. Li, K. Cao, and R. Chen, “Advances in Atomic Layer Deposition,” Nanomanuf Metrol 5(3), 191–208 (2022).

4 B.A. Sperling, B. Kalanyan, and J.E. Maslar, “Atomic Layer Deposition of Al2 O3 Using Trimethylaluminum and H2 O: The Kinetics of the H2 O Half-Cycle,” J. Phys. Chem. C 124(5), 3410–3420 (2020).

5 M. Lubitz, P.A. Medina, A. Antic, J.T. Rosin, and B.D. Fahlman, “Cost-Effective Systems for Atomic Layer Deposition,” J. Chem. Educ. 91(7), 1022–1027 (2014).

[image1]: <data:image/png;base64,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>
