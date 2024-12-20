# Update (241219) on Glass Interposer Photomask

## Transmission Line Design 
* 80 micron wide round traces
* Traces have min. of 2-3 times the width of trace space between traces (160-240um)
  * Exception: pads on the 5mm sides have ~135um spacing until rerouted to zebra contact pads
* Gold bump pads are 100x100um
* Zebra contact pads are 1600um (Width) x 400um (Heigth)
![Trace Design and Spacing](./assets/TraceDesign/Ipmaskv9rt.png)

## Alignment Marks
* Chip features (diced)
* PCB 
![Chip alignment](./assets/Ipmask2/Ipmaskv9amc.png)

## Previous Questions 

1) Last we spoke you mentioned to keep the 2500um trace lines and then to connect/extend those to the zebra connectors contact pads. Should we keep the same width regarding the trace lines going from the already existing trace lines to the zebra connectors contact pads

![ZebraPlacement](./assets/ZebraConnectorPlacement.png)


2) For material, should we keep everything Au?

3) Still unsure about the width of the zebra connectors. You had mentioned 150um and according to Fujipoly it is an available standard size. Was there a reason for this width?


![ZebraFuji](./assets/ZebraGold8000.png)


4) Plain type vs support zebra connectors? Do we need to consider supports for the zebra connectors?

![ZebraType](./assets/ZebraConnectorTypes.png)
