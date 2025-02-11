# Project Plans

## Create a quartz or sapphire-based interposer for IC packaging

![Interposer IC packaing sketch](./assets/interposer.drawio.svg)

## Manufacture several individual FETs in silicon

***

# Work Plan

## 1. Meeting to Discuss PhD Collaboration and Roles
## 2. Interposer and Transistor Project 
* ### Interposer and ACF (top priority)
  * Au solder spheres - separation distance, application (ball bonder: [this is a link](https://shimadzuinstitute.org/centers/nanotechnology-research-center/nanotechnology-research-center-dicing-and-bonding-platforms/) ) and creating a level height platform between all Au spheres and interposer/gold trace metal contact (thermal sonicator press instrument)
  * Incorporating ACF (tape/press vs instrument)
  * Sapphire or quartz interposer
  * The 1st chip to be considered is manufactured in sky130 process through efabless.  Chip GDS can be found [here](https://github.com/AustinMcDonald/Q-Pix-Sky130-Caravel/blob/main/gds/caravel_fullchip_transplanted.oas).
    * Layer definition:
```
m1     68/20
m1fill 36/28
m2     69/20
m2fill 41/28
m3     70/20
m3fill 34/28
m4     71/20
m4fill 51/28
m5     72/20
m5fill 59/28
glass  76/20 pad.drawing
hvi    75/20
```
* ### Individual Field Effect Transistors (not a priority)
  * Mask designs (size and separation distance of transistors)
  * Metals, insulators and doping  
  * Exposed gate oxide 

## 3. Cleanroom Access 
* ### Currently trained and have access for the following tools:
  * OAI Model806 manual Front/Backside Contact Mask Aligner [this is a link](https://shimadzuinstitute.org/centers/nanotechnology-research-center/nanotechnology-research-center-photolithography-platforms/) 
  * AJA ATC ORION Series Evaporation System [this is a link](https://shimadzuinstitute.org/centers/nanotechnology-research-center/nrc-deposition/) 
  * AJA ATC ORION Series UHV Sputtering System
  * Technics Macro-RIE Series 8800 Plasma System [this is a link](https://shimadzuinstitute.org/centers/nanotechnology-research-center/nanotechnology-research-center-etching-and-ashing-platforms/) 
  * AXIC JetFirst 150 Rapid Thermal Anneal [this is a link](https://shimadzuinstitute.org/centers/nanotechnology-research-center/nanotechnology-research-center-furnace-platforms/) 
  * Zeiss Supra 55VP Field Emission Scanning Electron Microscope [this is a link](https://shimadzuinstitute.org/centers/nanotechnology-research-center/nanotechnology-research-center-characterization-platforms/)
  * Gaertner L116S300 Stokes Ellipsometer
  * KLA-Tencor P-6 Profilometer

## 4. Projects:
  1) (Pending) Optical Lens Reduction System:
     Assemble a table top optical reducer, print an enlarged verison of the photomask (e.g. 8x bigger) and use the optical projector/lens reduction system to make the image smaller to obtain completely opaque negative mask features. We will need to play around with this to determine any distortions, and if so, include them into the Klayout negative mask dimensions to produce better resolution.
     * [DIY Photolithography using 1980s Carl Zeiss S-Planar Lens (405nm)](https://www.youtube.com/watch?v=Lf-ev2Fop_k)
  2) Mini Electron Gun: Using a 235nm LED light source, a thin gold film (photocathode), along with a controlled electromagnetic field to hopefully direct single electrons at a time (perhaps by pulsing the photon source we can achieve this) to create a mini photon source. The construction of this will require the possible use of machinining and 3D printing. It will be crucial that the device operate under vacuum.
     * [MTE2350F-UV UV emitter](https://www.mouser.com/datasheet/2/1094/MTE2350F_UV_v101223_prelim-3446666.pdf)
     * [MTE2350D-UV UV emitter](https://specs.marktechopto.com/pdf/products/datasheet/MTE2350D-UV%20v101223%20prelim.pdf)
     * [Light-Emitting Diode (LED) Mounts](https://www.thorlabs.com/newgrouppage9.cfm?objectgroup_ID=7843)

**Using the given LEDs, measure the photocurrent generated as the LED photoionizes the air between two plates using a source measurement unit (SMU). Look into powering up an LED** 

  * [Making Current-Voltage Measurement Using SMU](https://www.farnell.com/datasheets/2618348.pdf)
  * High Output Red LED OD-624L [Datasheet](https://optodiode.com/pdf/OD624L.pdf) 
    

  3) Explore Micropen Exxelia for creating trace lines. Seek info regarding the system/appartatus/tips etc - see if they can sell the entire package - They do not sell - Track down needle dispenser tip that is used or similar needles tips (32 gauge etc...). We can modify the setup ourselves. 

  4) Conductive Epoxy: research if its possible to spin coat and achieve an epoxy thickness less than 1 micron and if we can have it tailored to have different resistances (rs << rp-p). Recall, resistiviy of epoxy needs to match the resistiviy of intrinsic Si (highly conductive epoxy can damage the device). The epoxy needs to be conductive, have very low viscosity and be able to be spin coated to achieve very low thicknesses, preferably less than a micron (we can press the epoxy to achieve lower thicknesses and use displacement to determine the thickness of final epoxy - uniformity during pressing?).

  * [Si - Resistivity and Carrier concentration](https://www.ioffe.ru/SVA/NSM/Semicond/Si/bandstr.html)
    
  5) Create a system that mimics the chips surface. We can mimic the chip surface using a PCB board and create small arrays like the pixel rays in chip. This way we can use the PCB and practice with the epoxy before we move on to the actual chip device itself.

  * Create an array of 150um x 150um for the pads
  * Space pads at 75um
  * 150um x 150um for contact pads as well
  * Standard PCB - FR4 - (Cu thickness?)
  * Recreating similar recessed regions with exposed metal - etching of Cu?
  * What is the depth of recessed regions in actual chip in order to scale up correctly?

  * Materials:
    * [MG Chemicals Copper Clad Board, Single Sided, 9" x 6", 1 oz Copper, 1/32" Thick, FR4](https://www.amazon.com/MG-Chemicals-Copper-Board-Single/dp/B005T8JSDS/ref=sr_1_4?crid=JP0BY6B9H1W6&dib=eyJ2IjoiMSJ9.unSlhpBQCQlpbyc6N9vcPXPPjcKW9iCp-KyH9-NyWVP1sbtUl6ySFFsJqNGNADP681-W1VETcxZLiJ7FOzhv-UtOYnNzUTHd8Ry4glIerT9jNWkvBvZTGEbYvZUCohG7xwGsR9Wbu6sT4QW2k3rUXDZvBcGCwjG75PAe8jehCZiHZqIpwCFJpkm0m59JE0_Vg3uUYeQ7ika6lcy0aDSlfiFvkx0SVf9ZLsg8wVR9wd0.HjPQVmrHT-ad97P0lFWeUEPkgne8-6GdA4pZHxCHTeM&dib_tag=se&keywords=MG%2BChemicals%2BFR4%2BPCB&qid=1739231452&sprefix=mg%2Bchemicals%2Bfr4%2Bpcb%2Caps%2C125&sr=8-4&th=1)  
    * [MG Chemicals 415-1L Ferric Chloride, 1 Quart](https://www.amazon.com/Delphi-Glass-415-1L-Ferric-Chloride/dp/B005T8Y20W/ref=sr_1_1?crid=3EGJRSNC9NLDK&dib=eyJ2IjoiMSJ9.svnG-qBth8-3Y8N_8a4dGYkKskGQj4FjCoRVYvsP77vf2I26Tt7Fcebp_en4TmlBH9kucfKrlINOn8c239WwzAEEkv15fXG43qAcOzxuc7MzQ8VGyhZvBHbl0yPnlt_XJCysQTePG5qGsi9hWoCjzlRsf4p23LX79P2gEBKIaYNId9ar8ZHxb5HdR6iNLfHzbW9BkFh7URPoZoL_7wu8WYc9_uMhqwlUMnLL3EFnvjc.5l_05ScKbc_WZo0GZvAVo9a7arO2Hn_zpuZxULhvimY&dib_tag=se&keywords=MG%2BChemicals%2B415%2BFerric%2BChloride&qid=1739233687&sprefix=mg%2Bchemicals%2B415%2Bferric%2Bchloride%2Caps%2C262&sr=8-1&th=1)

    * [Portable PCB Photosensitive Dry Film](https://www.amazon.com/30cm×5m-Portable-Photosensitive-Production-Photoresist/dp/B07MMVPY1Z/ref=sr_1_1_sspa?crid=3UMNOWYSS4YV3&dib=eyJ2IjoiMSJ9.PMuVqqYkbT92pa9HBeYBu_yI3s1_crVUw86WHJGYfttnOzedMdGrAKDKyyR5J2iQAQIg8LlnNEDtU9Phj5yNUc_JxF0L716LIaW83VqaKqUtyWOmNbKSXRHjh6NYWHtTZDfRIjfjCEFaUWCF4CEDzHect0Pl2e6GZ8LdKfAsHihzFD5A1yIAdnU_byeuIddrRhaTlSov55NYNKUuNDRPe8u1riMxfBV7eHC7VB_IigA.FTwL9FTtKMyKz8hol20sLCSwXxpfAE6ZFCuZbi-W-is&dib_tag=se&keywords=dry+film+photoresist+PCB&qid=1739234473&sprefix=dry+film+photoresist+pcb%2Caps%2C211&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1)
    * [Sodium carbonate](https://www.sigmaaldrich.com/US/en/substance/sodiumcarbonate10599497198)
    * [Copper Coated Scrubbing Scour Pads](https://www.amazon.com/Scotch-Brite-Copper-Coated-Scouring-pads/dp/B00KOAHGQW/ref=sr_1_5?crid=3L7DKRW9UGPG0&dib=eyJ2IjoiMSJ9.8bSfoab4gsrw8-bN1DJUlYyjtHE6-mza_hhHOIJSjs-xhnPh1n9LxITe5MWt7fXRpyefAa6-gcgFnrrQSe61BDArH8CydW7b9DneGMkEQ0qugU5g7v_H3g1oa0xdEpyIcT_HPRq1UukJU25r8DV0zf9tYonYuH718wvotd_Ct61qDlFykmTjbnmxd7jAAAoeW3B9U2yOqvuc_zP5sg97gyAuRAdMJEnPAcsDcd9_uXPrK1fRY8Sqy--RwhybXhnwq3CJIZDNlElPszrhf5FKCYnIZc0Y0CnVQNX2pYyanNecySlcbJRLqx1PrJiv6ekVxzjUapPlHfT1ZUpgZUxkXt_sahq5EzFnDtlmqp2Pqkf6QL7PRWrl-2fYqDl242sZ6ck2cBZcinCHnWLzjW63C62K3CMFv1MXTsLzCanTFVMzOMmpkWV4jpj16WVQXfGG.Yhrm1q_oFi1eH_sHjDigJVf2vZzFJAmLH4c56Uv71MM&dib_tag=se&keywords=copper%2Bpcb%2Bcleaning%2Bpads&qid=1739301275&sprefix=copper%2Bpcb%2Bcleaning%2Bpad%2Caps%2C135&sr=8-5&th=1)

## 5. Pushing the boundary of fundamental sensing mechanism
  1) Explore the use of Te nanowires for p-transistor use in state of the art single photon detection (lateral gate - no diaelectric)
     * [Evaporated tellurium thin films for p-type field-effect transistors and circuits](https://nano.eecs.berkeley.edu/publications/NatureNano_2020_Te.pdf)
     * [Tellurium Single-Crystal Arrays by Low-Temperature Evaporation and Crystallization](https://yonsei.elsevierpure.com/en/publications/tellurium-single-crystal-arrays-by-low-temperature-evaporation-an)

## 6. Producing industrial-quality prototype sensors
  1) Research into the following paper regarding characterization, cmos conversion material interface, x-ray used and efficiency:
     * [Dynamic X-ray imaging with screen-printed perovskite CMOS array](https://www.nature.com/articles/s41467-024-45871-2)
     * Consider researching different materials or perovskites, like a single crystal perovskite that shows potential to be fused to the epoxy (if we can get the epoxy idea to work). 
    
## Materials List

## LEDs (DigiKey):
* MTE2350F-UV. -  $220.00 
* MTE2350F-UV2 - $305.17

## LEDs Mounts (Thorlabs):
* Light-Emitting Diode (LED) Mounts  


## CRT TV (eBay): 
* Vintage SONY Trinitron CRT Tv Retro Gaming Games KV-13M42 13" W Remote VIDEO Condition (preferred option) - ApproximatelyC $286.19 Feb 10-14

    * Toshiba 13" CRT TV Retro Gaming Color Television 13A25 Front AV Jacks - $75 obo and $140 shipping  

    * Toshiba 13A23 TV CRT 13" Color Retro Gaming Analog w/ Remote AV Front Works READ - $59.99 (approx C $84.33) Feb 10-14 

    * TOSHIBA CRT TV / DVD Combo 9” Retro Gaming Television No Remote TESTED! MD9DL1  

## Epoxy 
* Master Bond EP4G-80Med
* Low Viscosity, Electrically Conductive Epoxy Meets ISO 10993-5 Cytotoxicity Standards

* How to Purchase Our Products

    * EPO-TEK® 301-2: Nonconductive but suitable for semiconductor purposes and has good handling regarding viscosity considerations
Requires adding a graphite filler

    * MG Chemicals 9410 - Paste like (viscous)

## Perovskite Paper
* PbBr2 (lead bromide, 99%, Aladdin)
* CsBr (cesium bromide, 99.5%, Aladdin)
* Dimethyl formamide (DMF, AR, 99%)
* Dimethyl sulfoxide (DMSO, AR, 99%)
* Colloidal SnO2 aqueous dispersion (15 wt%)
* Carbon paste

* Acetone
* IPA
* DI

## Thermal Evaporator
* Vacuum Chamber - Refurbished options are available at Idealvac.com
* Vacuum Pump - Storage

* Thermal Evaporation Source/Tungsten Boat- Kurt J. Lesker
* Heating System/Power Supply - Kurt J. Lesker Company 
* Substrate Holder/Cooling Stage
* Temperature Control System 
* Thickness Monitoring: MBraun Thermal Evaporator at Idealvac.com 
* Shutter


  
