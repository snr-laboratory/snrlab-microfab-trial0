# Zebra Connectors for Glass Interposer and PCB (FR-4)
## Connections
* Chip to Interposer: Fine-pitch to larger-pitch (Zebra determines this - alignment is crucial for minimizing signal loss or crosstalk)
* Interposer to Zebra: signal rerouting, low cost and reliable electrial contact (design conisderation: shorting,pitch,width of connector, material type, contact pad design, trace spacing (gap), compression and height, trace width and alignment tolerance); [Design Guide](http://youeal.hk/en/products/conductive-silicone-zebra-elastomeric-connectors/design-guide/)
* Zebra to PCB: Alignment is crucial (zebra can fail if not properly aligned)
  * [Zebra can fail](https://www.youtube.com/watch?v=c0U394GGofY) 
  * [OSCO](https://www.osco.uk.com/products/connectors/silver)

## Zebra to PCB
* Ordered Zebra Connectors to PCB
  * PCB
    * 10mil: pad width: 254um ; pad gap: 254um
    * 8mil: pad width: 203um ; pad gap: 203um
    * Contact pad:(Zebra determines this - Pitch)
    * Design Considerations: [PCB Traces 101](https://www.youtube.com/watch?v=xEVntmYLARw);[How To Improve Your PCB Designs (Common Mistakes)](https://www.youtube.com/watch?v=IclJ9nbtYgI);  
    * Design Tool: [easyeda](https://www.youtube.com/watch?v=MsdJgEinb34&t=279s) ; KiCad
      
       

## Zebra Supplier Common Questions
* Difficult project for Z-Axis to support based on the dimensions
* Electrical requirement ie what is max mA/ per pad contact?
* Will connector be used for testing? or for permanent mounting connecting LCD to PCB?
* 8 or 10 mil PCB ... (0.20mm ~ 0.254mm) > this is thickness of your PCB? Is this contact pad size?
* How many connectors are used in 1 assembly/ device? 
* How many will you need to build samples/trials?
* If proven successful, how many will be used in production level?

## PCB
* 8 or 10 mil (203um vs 254um)
* 2 layers
* FR4
* Copper thickness: 1oz/ft^2 (~35um)
* ENIG finish?

* Design template?
  
## Zebra GOLD 8000 Connectors
## Specifications:
* 100-166 pitch options

* Series 8000 C
  * 0.025mm x 0.076mm flat wire on 0. 15mm center-to-center spacing (Min. 166 wires/inch.)
    * Conductive Width: 25 um
    * Insulative Width: 125 um
    * Pitch (Center-to-Center): 150 um
    * High Density
      
* Solid self-supporting connectors - better stability???

 ## Design Considerations
* Must be readily available to purchase and quick delivery
  
* Pitch Matching: 150um Type C to 80um gold trace lines (glass interposer)
  * 80um gold trace lines and 25um conductive width
    
*  Contact Pad Width (glass interposer)
  * larger than 25um conductive width (80um - matching trace?) 
  * Pad Pitch: Center-to-center spacing of pads matches the 150 um (Center-to-Center) pitch


    

