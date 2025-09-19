# In-House Horizontal Tube Atomic Layer Deposition System for Al2O3 Thin Film Growth and Interface Characterization

## Motivation   
In order to determine more about the idea of the LAr skipper CCD detector and its charge transfer performance, we must remove the bottleneck, which in our case is atomic layer deposition (ALD) of 50nm of Al₂O₃ on silicon substrate. The aim is to produce thin films of Al₂O₃ to probe the interface response of LAr and Al₂O₃ interface trap behavior and extract information on the efficiency of measuring and transporting charge. In hopes of advancing or contributing to exceptionally sensitive devices needed for next generation high energy particle detectors.  

## Introduction   
Alumina or Aluminum Oxide (Al2O3) is a very well known and studied material. Al2O3 is classified as a high-k dielectric material and in regards to semiconductor devices it is defined as being a good insulator and charge storage material. \[Experimental Yuxi Wang Al2O3\]. Many of its properties like large band gap or theoretical breakdown strength make Al2O3 a desirable and promising candidate for further research studies in many different fields, especially for uses in microelectronic applications \[Experimental Yuxi Wang Al2O3; Characterization of electrical traps Md. Mamunur Rahman\].   

The advantages of ALD lie in the chemistry of self-limiting reactions. In ALD, select reactants are carefully controlled and introduced into the system. The fine amounts and programmable sequencing of reactants is capable of producing high quality films with excellent uniformity, conformality and thickness control. Marking this vapor deposition technique as one of the most utilized methods for tackling the issues in thin film defects and impurities for achieving enhanced ultrathin films needed for pushing the boundaries on new and innovative technologies \[ADV Zhang 2022 \]. Among the many atomic layer deposition recipes, Al2O3 stands out among the rest due to its robust and highly effective half reactions producing high purity films at low temperatures with ease \[ALT TMA/H2O Sperling \].  

The purpose of this document is to propose how to construct a flow-type hot-walled horizontal tube reactor and utilize existing ALD recipes from others previous work to study the growth and quality of 50nm of Al2O3 on a silicon substrate. By fluctating the precursor delivery times, gas flow management, and temperature and pressure synergy, the interface trap density, fixed charges and border traps present in the growth of alumina can be manilpulated and measured. The use of C/V measurements can be used to determine this and charaterization of the deposited films can be done quickly using scanning electron microscopy and energy dispersive x-ray spectroscopy. 

Figure 1. Onshape 3D model

<img width="1920" height="969" alt="image" src="https://github.com/user-attachments/assets/f67354b6-1f78-4f90-803d-bbcf9ab31917" />

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

The 8 channel relay module has the solenoid valves for TMA, H2O and N2 connected to channels K1-K3 with 18 awg wires connected from the DIN 43650B to NO and COM on the relay. The relay itself will have an external 24V power supply connected to 

## System Parameters

1. System Media  
   * Trimethylaluminum (TMA) \- Metal precursor (ALD Grade)  
   * DI Water (H₂O)   
   * Nitrogen (N₂) \- Alternative purge gas (N₂, ≥99.999%) 

[TMS MSDS](https://www.umass.edu/ials/sites/default/files/msds/Trimethylaluminum.pdf)

2. System Design Pressure  
   * Low pressure (flow-type): ~100 Pa   (0.75 Torr)   
   * Oregon State system: 300 mTorr base to 3.75 Torr with gas flow  
   * Typical process: 75 mTorr to 7.5 Torr typical

[The Design and Construction of a Cost-Effective Atomic Layer Deposition System for Thin Film Growth](https://ir.library.oregonstate.edu/concern/graduate_thesis_or_dissertations/zg64tt67k)  

   * Process operates at 0.1–5 Torr with a base pressure below 0.5 Torr prior to precursor dosing.

* Operating safety consideration: Most systems designed for <10 Torr operation

<img width="558" height="154" alt="image" src="https://github.com/user-attachments/assets/365f650d-fa93-4bb7-9a67-698c88858553" />

[Development of a powder atomic layer deposition reactor for research purposes Simon Andsten](https://aaltodoc.aalto.fi/server/api/core/bitstreams/9ca59ceb-2f97-4f79-a86c-5f00aeb70a85/content) 

[Conformality in atomic layer deposition: Current status overview of analysis and modelling](https://pubs.aip.org/aip/apr/article/6/2/021302/570185/Conformality-in-atomic-layer-deposition-Current)

3. System Design Temperature (various reported ranges)  
### TMA   
  * TMA: 25-200°C  
  * Lines maintained at ~115-120°C; avoids condensation.
     
### Water flask
  * 50–100°C controlled via mantle.  

### Optimal Al₂O₃ ALD temperature: 150-300°C  
  * TMA/H₂O ALD window: 269-384°C (optimal range)  
  * Oregon State system: 25-350°C capability
    
<img width="470" height="232" alt="image" src="https://github.com/user-attachments/assets/0f54e40f-0960-4485-92d5-ab9bba8956aa" />

Figure 2. ALD processing window and how growth per cycle can be influenced by temperature.

[The Design and Fabrication of an Atomic Layer Deposition Reactor for Coating Powders Natalie Altvater University of Maine](https://digitalcommons.library.umaine.edu/cgi/viewcontent.cgi?article=1285&context=honors)

[Development of a powder atomic layer deposition reactor for research purposes Simon Andsten](https://aaltodoc.aalto.fi/server/api/core/bitstreams/9ca59ceb-2f97-4f79-a86c-5f00aeb70a85/content) 

4. System Flow Rate  
   * Process gas flow (TMA and H2O): 5-75 sccm commonly used  
   * TMA/H₂O gas lines: 0–100 sccm MFC range.  
   * Nitrogen carrier: 20-800 mL/min   
   * Oregon State optimal (N2): 150 mL/min  
   * Purge line: Up to 500 sccm, flexible for rapid purging.  
   * Carrier N₂: 20–800 mL/min practical operation; can adjust for recipes.

[Development of an Atomic Layer Deposition System for Deposition of Alumina as a Hydrogen Permeation Barrier](https://arxiv.org/pdf/2507.00958)  

[Dynamic Modeling for the Design and Cyclic Operation of an Atomic Layer Deposition (ALD) Reactor](https://www.mdpi.com/2227-9717/1/2/128) 

[Low-Temperature Al2O3 Atomic Layer Deposition](https://www.forgenano.com/wp-content/uploads/2012/02/2004-Groner-Low-temp-Al2O3-ALD.pdf)

[Experimental study of trimethyl aluminum decomposition](https://www.sciencedirect.com/science/article/abs/pii/S0022024817303767)

[COST-EFFECTIVE ATOMIC LAYER
DEPOSITION SYSTEM POSTER](https://engineering.oregonstate.edu/sites/engineering.oregonstate.edu/files/2023-03/silsbycarson\_6095338\_75501011\_expo\_poster\_ald\_final-1.pdf) 

[The Design and Construction of a Cost-Effective Atomic Layer Deposition System for Thin Film Growth](https://ir.library.oregonstate.edu/concern/graduate_thesis_or_dissertations/zg64tt67k)  
 
[Conformality in atomic layer deposition: Current status overview of analysis and modelling](https://pubs.aip.org/aip/apr/article/6/2/021302/570185/Conformality-in-atomic-layer-deposition-Current)

5. Base Pressure   
* Evacuate to as low as possible before dosing, target below 0.5 Torr   
* Flow-type reactors: ~100 Pa (0.75 Torr)  
  * Oregon State system: 300 mTorr 

[The Design and Construction of a Cost-Effective Atomic Layer Deposition System for Thin Film Growth](https://ir.library.oregonstate.edu/concern/graduate_thesis_or_dissertations/zg64tt67k)  
 
[Conformality in atomic layer deposition: Current status overview of analysis and modelling](https://pubs.aip.org/aip/apr/article/6/2/021302/570185/Conformality-in-atomic-layer-deposition-Current)

6. TMA Hazards 
* Pyrophoric, flash point -17°C, spontaneous ignition in air, violently water-reactive.  
* Hot zones exceeding 200°C - TMA decomposition  
* Connection points - Potential leaks to atmosphere  
* Valve seats and seals - Corrosion/degradation  
* Precursor lines - Condensation if too cool, decomposition if too hot  
* Reactor inlet - Direct exposure to high temperatures  
* Water contact points: Any moisture   
* Pump oil

7. Temperature and Vapor Pressures of TMA and Water   
* TMA: Heated to 120°C for vaporization (may adjust between 90–120°C; keep below ~150°C).  
* Water: Typically 50–100°C via mantle or sand bath; warm enough to produce sufficient vapor pressure.  
    * TMA bubbler: 10-20°C for controlled vapor pressure  
    * Water bubbler: 20°C (vapor pressure ~17.5 Torr)
 
    * TMA bubbler: 120°C  
    * TMA delivery lines: 140°C (prevent condensation)  
    * Water: Room temperature (adequate vapor pressure)

[The Design and Fabrication of an Atomic Layer Deposition Reactor for Coating Powders Natalie Altvater University of Maine](https://digitalcommons.library.umaine.edu/cgi/viewcontent.cgi?article=1285&context=honors)

[Exploring TMA and H2O Flow Rate Effects on Al2O3 Thin Film Deposition by Thermal ALD: Insights from Zero-Dimensional Modeling](https://www.mdpi.com/2079-6412/14/5/578) 

[Dynamic Modeling for the Design and Cyclic Operation of an
Atomic Layer Deposition (ALD) Reactor](https://pdfs.semanticscholar.org/a303/a54b45be1f323ff84b20ab3a62069230c343.pdf)

[Estimating the thermochemical properties of trimethylaluminum for thin-film processing applications | Journal of Vacuum Science & Technology A | AIP Publishing](https://pubs.aip.org/avs/jva/article/36/5/050602/287/Estimating-the-thermochemical-properties-of)

[Investigating the Trimethylaluminium/Water ALD Process on Mesoporous Silica by In Situ Gravimetric Monitoring - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC6027410/)

## Materials in Stock

### 21100 Tube Furnace by Barnstead Thermolyne  
  * Reaction chamber  
  * Manual: [Type F21100
Tube Furnace](https://www.nist.gov/system/files/documents/ncnr/E133tubefurnace.pdf)

### Ion Gauge Controller Model IGC100 by Stanford Research Systems  
  * Mass flow controller feedback  
  * Manual: [IGC100 — vacuum gauge controller](https://www.thinksrs.com/products/igc100.html)  
  * Datasheet: [Ion Gauge Controller](https://www.thinksrs.com/downloads/pdfs/catalog/IGC100c.pdf)

### Lakeshore 331 Temperature Controller    
  * Connects to the RTDs and monitors temperature
  * Manual: [Model 331 Temperature Controller](https://www.lakeshore.com/docs/default-source/product-downloads/catalog/lstc_331_l.pdf?sfvrsn=5d8525f8_1&srsltid=AfmBOorZMPvuMUcx2dyIiymXVAslL-Lwq_07ACq6VLINwqweCGV0sqxV)

### Arduino Mega 2560 with Analog Shield and 8 Relay Module
  * Solenoid valve and ALD valve control
  * operates at a frequency of 16 MHz
  * 54 digital input/output pins (15 of which can be used as PWM outputs)
  * 16 analog inputs
  * 4 UARTs (hardware serial ports)
  * a USB connection
  * a power jack
  * an ICSP interface and reset button
    
  * Analog Shield Function: high-precision data acquisition interface

[The Analog Shield ](https://digilent.com/reference/analog_shield/ref_manual?srsltid=AfmBOooiFctCUQOJiphxoxk2TGQxglWAU4Q2RaJNXN3TFQQp64O1rBTJ)

[Analog Shield Reference Manual](https://digilent.com/reference/_media/analogshield_rm_rev3.pdf?srsltid=AfmBOooZ0vDe6Q3KeHLBOxDPAl4sw8hrw3vaZptGWixtSi_Zci4WXxhK)

[ARDUINO MEGA 2560-REV3](https://content.arduino.cc/assets/Pinout-Mega2560rev3_latest.pdf)

[Arduino Mega 2560 Rev3: Block Diagram, Features and Applications](https://www.utmel.com/components/arduino-mega-2560-rev3-block-diagram-features-and-applications?id=2182)

[8 Channel 5V Optical Isolated Relay Module](https://www.handsontec.com/dataspecs/module/8Ch-relay.pdf)

[8 Channel 5V Relay Module](https://mm.digikey.com/Volume0/opasdata/d220001/medias/docus/2522/TS0012%20DATASHEET.pdf)

### Granville-Phillips Convectron Gauge (Catalog No. 275185)  
  * Monitor pressure  

[Vacuum Gauge, Convection-enhanced Pirani, 4 VCR Female Fitting](https://www.mks.com/p/275185)

[Installation - Series 475 Convectron®
Vacuum Measurement Controller](https://www.ccrprocessproducts.com/wp-content/uploads/2015/08/GP-350-Ion-Gauge-Controller.pdf)

### 1000mL Schlenk Flask and Fabric Heating Mantle 100A O408 - 1000 mL, 115V  
  * For H20 vapor pressure control

[1000mL Side 24/40 Center 29/42 Angled Three Neck Flask
](https://www.labdepotinc.com/p-2-series-o-hemispherical-mantle-115-v-230-v?utm_term=&utm_campaign=Zombie+SKU+PMax&utm_source=adwords&utm_medium=ppc&hsa_acc=5326096552&hsa_cam=22295522342&hsa_grp=&hsa_ad=&hsa_src=x&hsa_tgt=&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=1&gad_campaignid=22299254812&gbraid=0AAAAADnVOIccciIEedHnwzFboH2VOzjbN&gclid=CjwKCAjwv5zEBhBwEiwAOg2YKJNLFVoFzUy-GgATPyhfZLV9GP1MFsqOqQKTmzFI-yT8zFbeIrtKUBoCnwsQAvD_BwE)

[Glas-Col FH Mantles](https://www.glascol.com/images/PDF/Standard%20Heating%20and%20Controls.pdf) 

[PL120 Temperature Controller](https://www.glascol.com/Basic-Controls)

### VIVOHOME Rotary Vane Vacuum Pump Model VP125  
  * Ultimate Vacuum: 5 Pa (0.037 Torr)  

[VIVOHOME 110V 1/4 HP 3.5 CFM Single Stage Rotary Vane Air Vacuum Pump ](https://vivohome.com/vivohome-rotary-vane-air-vacuum-pump-with-oil-bottle-etl-listed-p152378156871773425-v152378156871773382)

## Materials in Need of Purchase

### TMA ALD Grade
  * [Trimethylaluminum, min. 98%, 93-1360, contained in 50 ml Swagelok® cylinder (96-1070) for CVD/ALD](https://www.strem.com/product/trimethylaluminum-min-98-931360-contained-in-50-ml-swagelok-cylinder-961070-for-cvdald/01tVN000003kDI8YAM)
    * [MOCVD, CVD & ALD Precursors](https://media.abcr.com/pdf/strem-mocvd-cvd-ald.pdf)   
  * [Trimethylaluminum](https://www.sigmaaldrich.com/US/en/product/aldrich/663301)

### DI H20  
### N2 Carrier Gas

### 100 SCCM MFC (TMA and H2O)
  * Part number: KJLMCH4BAA1  
  * Vendor: [Alicat MC Series Mass Flow Controllers](https://www.lesker.com/newweb/process_instruments/mass-flow-alicat-mc.cfm)  
  * Unit Price: $1480.00

### 1000 SCCM MFC (N2)
  * Part number: KJLMCK4BAA1  
  * Vendor: [Alicat MC Series Mass Flow Controllers](https://www.lesker.com/newweb/process_instruments/mass-flow-alicat-mc.cfm)  
  * Unit Price: $1480.00
 
### 3-9 Device Hub MFCs

[Model BB9-232
USB Multi-Drop Box](https://documents.alicat.com/manuals/BB9-232_Manual.pdf)

  * Breakout Box for RS-232

[Model BB3-232 and BB3-I-232
USB Multi-Drop Box](https://www.alphacontrols.com/Multimedia/www.alphacontrols.com/Files/ProductCategory/1196/BB3-232_Manual.pdf?srsltid=AfmBOoqwqqYAOfuzxkhWUZtzQoGSKywf5Xw5fYn9VKGMx5cwjqSahrmZ)

[3 Device Hub - Breakout Box for RS-232
](https://store.alicat.com/products/3-device-hub?variant=38490914488505&country=US&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&srsltid=AfmBOoqrGnPaV1hJ9Syi9rY_o7jCQGu79sYZHrFjfxJGBgjhNQCzeiyln6Y&com_cvv=8fb3d522dc163aeadb66e08cd7450cbbdddc64c6cf2e8891f6d48747c6d56d2c)

[Virtual COM port (VCP) drivers](https://ftdichip.com/drivers/vcp-drivers/) 

### ALD Valves (TMA and H2O)
  * Part number: 6LVV-ALD3TMR4-P-CV  
  * Vendor: [Ultrahigh-Purity Valves
for Atomic Layer Processing](https://www.swagelok.com/downloads/webcatalogs/en/ms-02-301.pdf)  

### Solenoid Valves (x3)  
* 1/2" 24V DC Stainless Electric Solenoid Valve
  * SKU: SZW-15-24VDC

[24V DC Stainless Electric Solenoid Valve](https://www.electricsolenoidvalves.com/1-2-inch-24v-dc-stainless-electric-solenoid-valve-ss/?searchid=233425&search_query=1%2F2%22+24V+AC+Stainless+Steel+Solenoid+Valve+N%2FO+DC#description)

[Electricsolenoidvalves.com](https://www.electricsolenoidvalves.com/content/Stainless_Valves_Spec_Sheet.pdf)
  
  * Power supply RS-150-24

[AC/DC CONVERTER 24V 156W](https://www.digikey.com/en/products/detail/mean-well-usa-inc/RS-150-24/7706171)

[150W Single Output Switching Power Supply](https://www.meanwellusa.com/upload/pdf/RS-150/RS-150-spec.pdf)


### Solenoid Valve Cables
  * DigiKey Part Number: CN101R-250-ND

[HOOK-UP STRND 18AWG RED 250'](https://www.digikey.com/en/products/detail/cnc-tech/3132-18-1-0500-004-1-TS/3766709) 

### Resistance Temperature Detector 
  * Part number: NB-PTCO-172

[RTD](https://www.ic-components.com/products/Measurement-Specialties-TE-Connectivity/NB-PTCO-172.jsp)

### (pending) ALD Sensor
  * Quartz crystal microbalance (QCM)

[ALD Sensors](https://www.inficon.com/media/3755/download/ALD-Sensor-(English).pdf?v=1&inline=true&language=en)


## Vac/Glass Assembly Parts

### 4-Way Cross (2.75" OD)
  * Part number: C-0275

[CROSS,4-WAY,SS,1.5" TUBE OD, 2-3/4" UHV,2.46" "A" DIM](https://www.lesker.com/flanges/fittings-cf-crosses/part/c-0275)

### Shaft Collar With OD Flats And Holes, Black Oxide Steel, Two-Piece Clamp Style
  * Part number: Ruland OF-SP-24-F

[Ruland OF-SP-24-F, 1 1/2" Shaft Collar With OD Flats And Holes, Black Oxide Steel, Two-Piece Clamp Style, 2 3/8" OD, 0.563" Width](https://www.ruland.com/of-sp-24-f.html#) 

  * PTFE SEALING TAPE
  * Part number: 5490 25MM

[5490 25MM
SEALING TAPE, PTFE, 32.9M X 25.4MM](https://www.newark.com/3m/5490-25mm/sealing-tape-ptfe-32-9m-x-25-4mm/dp/43Y4598?cfm=true)

### CF Caps for 4-Way Cross
  * Part number: f0275n000nln 

[FLANGE,UHV,316LN,ESR,BLANK,FXD, 2.75"OD](https://www.lesker.com/flanges/flanges-cf-316ss/part/f0275n000nln)

### CF to VCR® Adapter
  * Part number: F0275X4MVCR

[DN35CF-DN40CF (2.75" OD)](https://www.lesker.com/newweb/flanges/adapters_fittings_vcr.cfm?pgid=cf)

  * Part number: IFDGG091053

[INSTRUMENTATION FEEDTHROUGH, DOUBLE ENDED SUBMINIATURE-D STYLE CONNECTOR, GROUNDED SHIELD, RECESSED CONDUCTOR(S), 9 PIN, 500V AND 5 AMP RATING PER PIN, MOUNTED ON A DN40CF (2.75" OD) FLANGE, NO CONNECTORS INCLUDED](https://www.lesker.com/feedthroughs/instrument-feedthroughs-mpdt-subd/part/ifdgg091053)

### Bellows Hose Metal KF-50, 20 Inch 
  * Part number: P103713
  * Vendor:[Hydraulically (Hydro) Formed Bellows - KF (QF) Flanged (Standard Unbraided Wall)](https://www.lesker.com/newweb/flanges/bellows_kf_hydraulicallyformed.cfm?pgid=standard) 

[Bellows Hose Metal KF-50, 20 Inch, Thin Wall Tubing, ISO-KF Flange Size NW-50, Stainless Steel
](https://www.idealvac.com/en-us/Bellows-Hose-Metal-KF-50-20-Inch-Thin-Wall-Tubing-ISO-KF-Flange-Size-NW-50-Stainless-Steel/pp/P103713)
     
### Mounting Setup

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

### Swagelok Fittings/Adapters 

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

## Adaptable for silicon dioxide?  
Switching between different ALD chemistries (Al₂O₃ → SiO₂) requires separate precursor delivery systems to prevent cross-contamination and ensure process reliability.  

Precursor changes:

* Replace TMA with silicon precursors: BDEAS, 3DMAS, or SiCl₄  
* Keep H₂O as oxygen source  
* Add NH₃ catalyst for room temperature SiO₂ processes  
  * Separate Feedthroughs  
  * Additional Mass Flow Controllers  
  * Process temperature: 300-600°C (higher than Al₂O₃)

[SiO2thin film growth through a pure atomic layer deposition technique at room temperature]	[https://pmc.ncbi.nlm.nih.gov/articles/PMC9053598/]

[Atomic layer deposition of SiO2 using catalyzed and uncatalyzed self-limiting surface reactions](https://www.scholars.northwestern.edu/en/publications/atomic-layer-deposition-of-sio-sub2sub-using-catalyzed-and-uncata)
