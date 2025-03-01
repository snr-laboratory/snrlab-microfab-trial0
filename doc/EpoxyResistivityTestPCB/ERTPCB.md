#  Epoxy Resistivity Test on Printed Circuit Board

## Plan
To create a KiCad design for bulk resistivity epoxy test measurments as well as epoxy resistivity when placed on a surface that mimics the chip features (Application Specific Integrated Circuit Si-CMOS chip). On a single PCB board we plan to test the resistivity of an epoxy under different surface conditions before we move on to the actual chips themselves. Our hope, is to fuse a single pervoskite crystal on top of the epoxy if we can manage to come up with a method to apply a controllably thin layer of an epoxy that must also match the resistivity of the Si substrate (adding a graphite filler to epoxy). 

Gerber top view
![Top](/doc/assets/PCB/TopPCB.png)

Gerber bottom view
![Bottom](/doc/assets/PCB/BottomPCB.png)

Gerber layer view
![Layers](/doc/assets/PCB/LayersPCB.png)

## Board Details 
* 100x100mm
* Three large pads (35mmx35mm) that allow us to measure the epoxy bulk resistivity and one large pad that mimics the chip surface features using solder mask design instead of individual vias - this one pad has 6milx6mil dimensions with 6mil spacing in between each solder design. Note that the three large pads have no solder just bare FR4 and Cu. Also, for all designs there is no silk screen present (electric field flares and current goes through the sides (area is no longer accurate but can be fixed by making the pads bigger)).    
* Small arrays have pad sizes of 1.0mmx1.0mm, individual vias, connected, with solder mask (it mimics the role of passivation) and we are interested in the structure or passivation structure and how it will affect the measurments. 
* Vias to the backside and make connection for the backside - solder a wire to it for measuring
    * One via for each of the three large pads connected by a trace - Drill: 0.3mm; Diameter: 0.6mm
    * Fourth large pad has via inside pad -  Drill: 0.3mm; Diameter: 0.6mm
    * One via for each 1.0mmx1.0mm pad (small array) connected in daisy chain pattern with Cu traces - Drill: 0.2mm; Diameter: 0.4mm
* All soldering pad sizes on the bottom of the PCB are 10.0mmx10.0mm
* Tool holes for every corner set a 3mm diameter 

## Objectives
We need bulk resistivity with a very thin layer or in other words controllably thin. We also need to come up with a mechanical mechanism to control the thickness applied. We need some kind of film in between the two PCBs that sets the gap. The reason we are using large pads is to minimize the peripheral effect in order to measure correctly. That is our first objective to measure the bulk resistivity. The second objective is to make the small array and see if the structure/passivation will affect the measurement. We are also very interested in modifying the resistivity between regions (resistance of pad-pad and resistance for source pad: Rs<<Rp-p) and applying an epoxy with final layer thickness <1 micron. 

## Epoxy Candidates
1) [EPO-TEK® 301-2](https://www.epotek.com/docs/en/Datasheet/301-2.pdf)
* Volume Resistivity: ≥2x10^12 Ohm-cm
* [Purchase](https://www.laddresearch.com/chemicals/epo-tek-301-2-epoxy-resin-5060)

2) [Master Bond EP30-2](https://www.masterbond.com/tds/ep30-2)
* Volume Resistivity: >10^15 ohm-cm
* 

3) [EpoxySet EB-315](https://epoxysetinc.com/wp-content/uploads/2020/03/EB-315.pdf)
* Volume Resistivity: 2x10^15 ohm-cm
*

4) [Dymax 9001-E-V3.5](https://www.ellsworth.com/products/by-manufacturer/dymax/encapsulants/uv-curing/dymax-multi-cure-9001-e-v3.5-uv-curing-encapsulant-clear-170-ml-cartridge/?srsltid=AfmBOorZjfYYmCmlOcWkSnxyRjvTr2e21JFwku0HsaL0gSIH-5wpNKFO)
* Volume Resistivity: 10^12 ohm-cm
*

5) [Epoxy Technology (EPO-TEK) 353ND](https://www.gluespec.com/Materials/adhesive/epoxy-technology/epo-tek-353nd-t-black?gad_source=1&gbraid=0AAAAADPMaixsTquGvj406EPbFsBsGVrlI&gclid=CjwKCAiAt4C-BhBcEiwA8Kp0CfBs1VBJ1iU9LKdFmu7nnigc9BzGwFvaLJmKbJNBN-zCEAwCjQwa1RoCN1sQAvD_BwE)
* Volume Resistivity: >= 4e12 (Ohm-cm)
*

6) [Dymax OP-61-LS](https://dymax.com/content/download/4404/file_archived/OP-61%20PDS.pdf)
* Volume Resistivity: 
*
