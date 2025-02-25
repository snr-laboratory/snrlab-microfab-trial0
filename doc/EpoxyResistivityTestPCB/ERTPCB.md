#  Epoxy Resistivity Test on Printed Circuit Board

## Plan is to create a KiCad design for bulk resistivity epoxy test measurments as well as epoxy resistivity when placed on a surface that mimics the chip features (Application Specific Integrated Circuit Si-CMOS chip). On a single PCB board we plan to test the resistivity of an epoxy under different surface conditions before we move on to the actual chips themselves. Our hope, is to fuse a single pervoskite crystal on top of the epoxy if we can manage to come up with a method to apply a controllably thin layer of an epoxy that must also match the resistivity of the Si substrate (adding a graphite filler to epoxy). 

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
* Tool holes for every corner

## Objectives
We need bulk resistivity with a very thin layer or in other words controllably thin. We also need to come up with a mechanical mechanism to control the thickness applied. We need some kind of film in between the two PCBs that sets the gap. The reason we are using large pads is to minimize the peripheral effect in order to measure correctly. That is our first objective to measure the bulk resistivity. The second objective is to make the small array and see if the structure/passivation will affect the measurement. We are also very interested in modifying the resistivity between regions (resistance of pad-pad and resistance for source pad: Rs<<Rp-p) and applying an epoxy with final layer thickness <1 micron. 






