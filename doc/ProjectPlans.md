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
  1) Optical Lens Reduction System:
     Assemble a table top optical reducer, print an enlarged verison of the photomask (e.g. 8x bigger) and use the optical projector/lens reduction system to make the image smaller to obtain completely opaque negative mask features. We will need to play around with this to determine any distortions, and if so, include them into the Klayout negative mask dimensions to produce better resolution.
     * [DIY Photolithography using 1980s Carl Zeiss S-Planar Lens (405nm)](https://www.youtube.com/watch?v=Lf-ev2Fop_k)
  2) Mini Electron Gun: Using a 235nm LED light source, a thin gold film (photocathode), along with a controlled electromagnetic field to hopefully direct single electrons at a time (perhaps by pulsing the photon source we can achieve this) to create a mini photon source. The construction of this will require the possible use of machinining and 3D printing. It will be crucial that the device operate under vacuum.
     * [MTE2350F-UV UV emitter](https://www.mouser.com/datasheet/2/1094/MTE2350F_UV_v101223_prelim-3446666.pdf)
     * [MTE2350D-UV UV emitter](https://specs.marktechopto.com/pdf/products/datasheet/MTE2350D-UV%20v101223%20prelim.pdf)
     * [Light-Emitting Diode (LED) Mounts](https://www.thorlabs.com/newgrouppage9.cfm?objectgroup_ID=7843)

  3) Explore Micropen Exxelia for creating trace lines. Seek info regarding the system/appartatus/tips etc - see if they can sell the entire package. 

  4) Conductive Epoxy: research if its possible to spin coat and achieve an epoxy thickness less than 1 micron and if we can have it tailored to have different resistances (rs << rp-p)

## 5. Pushing the boundary of fundamental sensing mechanism
  1) Explore the use of Te nanowires for p-transistor use in state of the art single photon detection (lateral gate - no diaelectric)
     * [Evaporated tellurium thin films for p-type field-effect transistors and circuits](https://nano.eecs.berkeley.edu/publications/NatureNano_2020_Te.pdf)
     * [Tellurium Single-Crystal Arrays by Low-Temperature Evaporation and Crystallization](https://yonsei.elsevierpure.com/en/publications/tellurium-single-crystal-arrays-by-low-temperature-evaporation-an)

## 6. Producing industrial-quality prototype sensors
  1) Research into the following paper regarding characterization, cmos conversion material interface, x-ray used and efficiency:
     * [Dynamic X-ray imaging with screen-printed perovskite CMOS array](https://www.nature.com/articles/s41467-024-45871-2)
  
