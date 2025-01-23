# Film Transparency Photolithography Procedure 
To meet the trial project requirements by the end of January, here is the following procedural steps I will take to produce the laser printed negative photomask pattern on a glass slide and confirm good adhesion of deposited metal traces. 

# Procedure
1. Laserprinting Photomask
   * Clean transparency slides well with IPA and dry off with kimwipes
   * Play with printer settings to get the best printing results of photomask design (i.e toner density should be set to max)
   * Align transparencies well and if need be, print the design multiple times to get a nicely printed mask that meets inspection requirements (i.e fully opaque lines and well defined - there should not be any light passing through that could interefere with desired exposure)
   * Once this is achieved, cut out the mask (roughly 5x5cm for ease of handling)
   * Repeat this process two more times and obtain three reliable masks and store in containers
     
   * Clean work area
  
**Before moving forward, the following insruments will be reserved ahead of time:**
* OAI Model806 manual Front/Backside Contact Mask Aligner
* AJA ATC ORION Series Evaporation System (community Cr)
* AJA ATC ORION Series UHV Sputtering System (community Al)


2. Piranha Clean of Glass Slides
   * Prepare H2SO4 + H2O2 3:1 concentration solution enough to submerge the glass substrate (20minutes)
   * DI sonication for 2 minutes
   * Rinse with DI and N2 dry
   * Note: The hydroxylation process is essential for obtaining good adhesion between resist and substrate
  
3. Spin Coating

**NR7-1500/1000PY; nanofab will lend for trial**

   * Set-up hot-plates - one @ 150C and another @ 100C  
   * Clean substrate with a 2 minutes acetone sonication, 2 minute IPA sonication and N2 dry
   * Place substrate on hotplate to remove any residual acetone/IPA (~30s)
   * Place substrate in wafer box and allow to cool (wait ~15sec before placing in wafer box)
   * Obtain resist (NR9-1000PY) and disposable pipettes and carefully apply the resist
     
   * Input the following recipe: 
       * 500rpm, 100rpm/s, 5s
       * 3000rpm, 1000rpm/s, 60s
       * 0rpm, 1000rpm/s, 0.1s
   * Continue to spin coat if desire results are not achieved (i.e uniform coating with no or very little imperfections - drag marks can be on the outskirts of susbstrate but nowhere near the center. If this happens simply remove resist using acetone and repeat spin coating procedure)
   * Bake at 150C, 1 minute
     
4. OAI Aligner
   * I am considering simply taping the substrate to the film photomask and then exposing.
   * (I need to speak more with the staff to see how this best can be done, but they have done this before in the past so it shouldn't present an issue)
   * Dose is set at 300W; i-line intensity 365nm wavelength light: 10.0 mW/cm2
   * Post bake at 100C for 1 minute

5. Development

**Nanofab will allow the use of RD8 for this trial**

   * RD6 (1000nm thickness requires an 8s RD6 time) 25 sec and rinse with DI water in container for 10 minutes and change DI water container every so often; slow N2 dry.
   * Check with optical microscope that development was done properly.
   * Proceed to step 6 or 7 if things look good

**If RD6 was not done properly, simply remove resist using acetone and repeat starting from spin coating procedure**
  
6. (Optional) Profilometer
   * I think it would be beneficial to take the time to scan the surface profile and measure the heigth of the removed unexposed photoresist. 
 
7. Deposition - Electron Beam Evaporator
   * Deposit 100 angstrom of Cr at a rate of 0.5 A/s

8. Sputter
   * Deposit 200 angstrom of Al at a rate of 0.5 A/s (depostion is nonconformal so deposition needs to be thin in order to achieve proper lift off - if wings are present, sonication for long periods of time can help reduce the effects)
   * Total deposition will be 0.03 mircon
  
9. Lift-off
   * Place in acetone and sonicate for 2 mintues 
   * Transfer to fresh acetone and sonicate for 5 minutes
   * Transfer to IPA and sonicate for 5 minutes
   * Rinse with IPA and inspect to see that there is no remaining unwanted metals. Repeat acetone and IPA sonication until clean (make sure to replace with new acetone and IPA)
   * N2 dry and store in wafer box


**this is a modfied procedure from my previous time in Dr. Koh's group as well as suggestions made by the nanofab staff and other researchers in that same facility. This should save us time and should not be considered a finalized procedure, this is just to pass the trial. We may need to make further modifications later on down the road to meet the different requirements for this project**
