  
# Engineered Interfaces for CCD-Like Charge Storage and Transfer in Liquid Noble Gases

## Comprehensive Exam
The Materials Science and Engineering Department at The University of Texas at Arlington

By  
Gumaro Garcia Gonzalez

Principal Investigator
Dr. Yuan Mei

---

## Abstract

Liquid argon (LAr) and liquid xenon (LXe) are major active media for neutrino, rare event, and dark-matter detectors, where ionization charge is generally drifted to an electrode or extracted to a gas phase \[1,2\]. This proposal will investigate whether an engineered solid–liquid noble gas interface can add local charge-storage and gate controlled transport functions after bulk drift. Electron on helium devices provide a functional precedent for electrostatic confinement, CCD-like clocking, and transport of small charge packets \[3–6\], but they do not establish an equivalent near-solid state in dense LAr or LXe, nor do they demonstrate Skipper-style repetitive nondestructive sensing The initial experimental platform will be LAr. The work will test three linked hypotheses: that a candidate surface can support a mobile or reversibly localized electron population; that patterned gates can localize and directionally transfer that population; and that controlled surface processing can alter retention, recovery, transfer, and eventual repeated-sensing behavior. The proposed program defines electrostatic and signal-modeling tasks, controlled charge-generation and calibration methods, charge-accounting measurements, artifact-rejection controls, material comparisons, and provisional pass, fail, or redirect criteria. LXe will be evaluated as a conditional extension or redirection path if its modeled and measured interface behavior warrants further development. The dissertation goal is to establish whether this enabling interface mechanism exists and can be engineered toward a CMOS-compatible detector-readout architecture.

**Keywords:** liquid noble gases, charge manipulation, charge coupled device, engineered surfaces, CMOS, sensors

---

## Table of Contents									   

Introduction and Motivation 							      		          

1. Scientific vision: charge manipulation in liquid noble gases  
2. Importance of LAr and LXe particle detectors  
3. Electron-on-helium CCDs as a functional precedent

   

Literature Review 										          

4. Electron transport in liquid noble gases  
5. Difference between the helium mechanism and the proposed LAr/LXe interface  
6. Central research question  
7. Established physical basis  
8. Central unresolved hypotheses  
9. Candidate surface materials  
10. Al₂O₃ as the initial test material  
11. Role, mandatory qualification, and present status of the in-house ALD system  
12. Electrostatic and interfacial model

    

Objectives 											         

Methodology 											        

13. Stage 0: controlled electron-generation and calibration method  
14. Stage 1: charge arrival, sticking, retention, and recovery  
15. Stage 2: two-region transfer  
16. Stage 3: multi-gate CCD-like transport  
17. Stage 4: repeated sensing  
18. Stage 5: detector-generated charge  
19. LXe extension or redirection path  
20. Readout electronics and noise  
21. Materials characterization  
22. Controls and systematic errors  
23. Quantitative stage gates  
    

Preliminary Results 										        

Plans and Tasks to Complete the Dissertation Research					       

24. Failure modes and redirection paths  
25. Potential detector impact  
26. Timeline

References 											        
Appendix											        

---

## Introduction and Motivation   
(1) Conventional liquid-noble-gas time-projection-chamber readout collects a drifting charge packet at an electrode or extracts it into a gas phase; the packet is then not ordinarily available for local storage, lateral routing, or repeated measurement. This proposal will test whether a deliberately engineered solid surface can support a recoverable near-interface electron population rather than immediate collection or irreversible trapping. If such a state is demonstrated, patterned buried gates could be evaluated for local storage, directional transfer, and presentation of the packet to a sensing region. These functions are hypotheses to be tested through calibrated charge accounting and converging controls; they are not assumed properties of the proposed interface.  

(2) LAr is the initial platform because it supports comparatively accessible experimental iteration and benefits from extensive detector knowledge in purification, high voltage, charge drift, and cryogenic operation. It is used in collider calorimetry, large neutrino time-projection chambers, and rare-event experiments. LXe is an important detector medium for dark-matter, gamma-ray, neutrino, and double-beta-decay research \[\], but it is retained here as a conditional extension or redirection path rather than a parallel first-generation program. An unfavorable LAr result would constrain the tested combination of liquid, surface, geometry, and field conditions, but it would not by itself exclude all noble-liquid implementations. Any transition to LXe would require a disciplined comparison of the limiting mechanism, relevant liquid properties, available infrastructure, and expected experimental benefit. This proposal does not promise detector applications. It argues that demonstrating controlled interfacial retention and gate-controlled transfer would establish a new mechanism that could later be evaluated for incorporation into existing detector architectures.  

(3) Developing clocked charge manipulation inside dense noble liquids is grounded around three key experimental milestones:

* **Clocked Micro-CCD Transport:** Sabouret et al. (2008) measured few-electron packets clocked through a microscopic CCD-like structure, reporting a charge-transfer efficiency (CTE) of 0.99999992 at an 800 kHz clock frequency.  
* **Parallel 2D Channel Routing:** Bradbury et al. (2011) demonstrated two-dimensional transfer in 120 parallel helium-filled channels using packets containing up to about 20 electrons and extending down to singly occupied pixels, recording no detectable transfer failures after more than one billion clock operations.  
* **CMOS-Integrated Shuttling:** Castoria et al. (2026) extended this control to an integrated CMOS platform, achieving selective two dimensional shuttling across 128 transport microchannels in both the few electron and single electron regimes with no detectable loss over more than one billion operations.

These demonstrations motivate the proposed device functions of small packet confinement, clocked transfer, routing, and charge detection, but not the microscopic mechanism proposed for LAr or LXe. In the helium devices, the electrons remain outside the liquid and are supported above a liquid helium/vacuum interface. These studies do not demonstrate Skipper-style repetitive nondestructive sensing of the same packet; that capability is a later integrated objective that will require independent packet conservation measurements.

--- 

## Literature Review  	
(4)In sufficiently pure LAr and LXe, excess electrons can thermalize and drift through the bulk liquid under an applied field. Their quasi free energy states, mobility, drift velocity, diffusion, recombination, attachment, and purity dependence are established bulk detector quantities \[\]. These results provide model inputs and experimental constraints, but they do not establish the behavior of charge in the nearsurface field region of an immersed solid. The relevant literature therefore falls into three categories. First, bulk quantities such as mobility, diffusion, attachment, electron lifetime, and recombination are treated as established within their stated temperature and field ranges \[\]. Second, dielectric charging in noble liquid detectors, cryogenic electron trapping above condensed noble surfaces, and oxide fixed-charge and trap measurements provide the nearest experimental analogs \[\]. Third, the electronic structure, trap spectrum, retention time, and lateral mobility of excess electrons at LAr/oxide and LXe/oxide interfaces remain genuine gaps. No bulk-transport result is assumed to predict interfacial retention or gate-controlled transfer.

(5) The helium precedent must not be read as evidence that LAr or LXe will behave the same way. An electron above superfluid helium floats in vacuum: a surface barrier prevents it from entering the liquid, its wave function resides almost entirely outside, and vertical confinement is supplied by the image interaction and applied fields. Lateral transport proceeds over a clean liquid vacuum interface, and interaction with any traps in a solid can be minimized by design. The proposed device inverts nearly every one of those conditions. The electrons are generated and transported inside a dense liquid and must be driven toward a solid surface. That surface may present localized electronic states; electrons may enter the dielectric, attach to it, or become trapped by it. Any adsorbed water, hydrocarbons, hydroxyl groups, defects, and process dependent surface termination may dominate the outcome. Neither vertical confinement nor  
reversible localization near a solid has been established in these liquids, and lateral mobility  
immediately adjacent to a solid is unknown.   

(6) The proposal centers on a single question: can an engineered solid surface in contact with a detector relevant liquid noble gas support a mobile or reversibly localized population of excess electrons, rather than trapping them irreversibly? Here “reversibly localized” has an operational meaning: the charge can be recovered as free, measurable charge on command within a useful time, and “repeatedly sensed” means the same packet is measured more than once with its charge shown to be conserved. Creating these functions inside mature detector mediums will come with different confinement and trapping mechanisms from those of the helium works. Despite these differences, can comparable charge storage and clocked transfer functions be observed in a dense liquid noble gas at an engineered solid surface?   

(7) Four elements of the program rest on established facts or conventional engineering and are not research hypotheses. First, ionization electrons can be generated and drifted through sufficiently pure LAr and LXe. Second, patterned electrodes beneath a dielectric produce controlled fields and lateral potential variation; whether a specific geometry produces sufficient confinement in a specific liquid is a quantitative design question, not a conceptual one. Third, CCD-like storage and transfer of small electron packets using buried gate arrays has been demonstrated for electrons held above liquid helium. Fourth, dielectric surfaces carry process dependent fixed charge, defects, adsorbates, terminations, and trapping states.  

(8) Hypothesis 1: Interfacial state. A selected liquid–solid surface can support a mobile or reversibly localized electron population long enough to be recovered. Stage 1 will compare calibrated injected charge, prompt collection, delayed recovery, drain collection, and bulk-lifetime-corrected loss under field and surface controls. Hypothesis 2: Gate controlled transfer. If Stage 1 identifies a recoverable population, a modeled gate geometry can create a lateral potential energy landscape that yields directional transfer between regions. Stage 2 will require a direction-reversing response, disappearance after intentional draining, agreement with independently calibrated charge accounting, and subtraction of a no-injection feedthrough template. Hypothesis 3: Surface dependence. Surface material, processing, and treatment may alter the probability and timescale of sticking, trapping, recovery, and transfer. The materials program will compare a limited candidate set against trap rich and collection dominated controls, relate the results to independently measured surface properties, and redirect the program if no reproducible relationship is found. Repeated sensing is not a fourth foundational hypothesis. It is a conditional capstone to be attempted only after retention and directional transfer meet their advancement criteria.  

(9) WThe material set will be organized by experimental role. The baseline test stack will use in-house ALD Al₂O₃ after reactor qualification. Thermal SiO₂ and externally deposited Al₂O₃ will serve as insulating comparison surfaces. Annealed, unannealed, dehydrated, hydroxylated, and passivated variants will test process sensitivity. One alternative dielectric will provide a material-redirection path, while deliberately trap-rich and conductive surfaces will serve as behavioral controls. Insulating gate-stack candidates will be assessed for leakage, breakdown margin, thickness, uniformity, exposed-surface chemistry, and compatibility with the selected test geometry. Conductive and trap-rich controls are not required to satisfy the insulating-gate-stack criteria; their purpose is to bound direct collection and strong-trapping responses. Film thickness will be treated as an independently measured variable, with cycle count used as a predictor only after growth-per-cycle calibration \[\].  

(10) Atomic layer deposition (ALD) of trimethylaluminum (TMA) and water is a thoroughly established chemistry; thickness and process conditions can be varied systematically; the film is insulating, conformally covers patterned metal electrodes, and accepts post-treatments that modify its surface chemistry. Aluminum oxide (Al2O3) may not work due to fixed charge, border traps, hydroxyl related states, carbon residues, adsorbed water, oxygen vacancies, process-dependent termination, or simply irreversible electron trapping. ALD grown Al2O3 is selected as the first controlled test surface, not as the material presumed to work. Its initial purpose is to establish the experimental method and to determine how a tunable oxide surface affects electron sticking, retention, recovery, and transfer.   

(11) The in-house ALD system is enabling infrastructure rather than the dissertation endpoint. It is needed for controlled recipe variation, repeat deposition, sample handling, and timely feedback between surface preparation and charge measurements. The proposal will report only verified current operating status. The copper-oxidation trials are treated as gas-handling, timing, and thermal-operation diagnostics, not as ALD-film qualification. Before in-house Al₂O₃ is used as the principal variable in the interface study, the reactor-qualification milestone will measure precursor-pulse reproducibility, saturation behavior, growth per cycle, thickness repeatability across at least five silicon runs, within-sample uniformity, contamination control, and documented sample handling \[\]. Passing this milestone enables the in-house materials-comparison phase. Failure will trigger a bounded troubleshooting period and an explicit program decision rather than indefinite reactor development or recasting reactor construction as the dissertation contribution.   

(12) Before selecting the first one-gate or two-region test geometry, Stage 0 will develop a parameterized LAr electrostatic and signal model. Inputs will include measured or bounded dielectric thickness, gate dimensions and spacing, liquid depth, gate and drift voltages, candidate fixed-charge density, liquid and dielectric permittivities, source location, and readout-node capacitance. Planned outputs will include electric-field maps, electron potential-energy maps with explicit sign conventions, possible lateral barriers, sensitivity to fixed charge, weighting potentials, expected induced-charge waveforms, and a first-order signal-to-noise requirement \[\]. The model will test alternative vertical scenarios, including field-driven approach to the surface, attraction toward a higher-permittivity dielectric, dielectric entry or trapping, and possible dynamic confinement, rather than assuming a favorable static holding state. Electrostatic predictions will first be checked against analytic multilayer limits, mesh convergence tests, and published numerical-solver precedents \[\]. They will then be used to select a geometry, voltage range, and measurable discrimination test for Stage 1\. A limited LXe parameter comparison will be performed only after the LAr model identifies which parameters control feasibility. These calculations are planned design tasks, not completed evidence that interfacial confinement exists.  

---

## Objectives 

1. Establish and test a charge-accounting method. Develop a calibrated injected-charge reference and measure the dependence of prompt collection, delayed recovery, and inferred loss on field, liquid purity, surface preparation, and fill-to-fill reproducibility.  
2. Test directional two-region transfer after Stage 1 qualification. Use modeled gate sequences and predefined no-charge, drain, reversed-sequence, and feedthrough controls to determine whether charge movement can be distinguished from electrical artifacts.  
3. Relate surface processing to charge behavior. Compare a bounded set of characterized surface variants and controls to determine whether measured surface properties correlate reproducibly with retention, recovery, or transfer.  
4. Evaluate repeated sensing conditionally. Only after retention and transfer gates are met, test whether one packet can be stored, sensed, moved away, returned, and sensed again while independently measuring packet conservation.

---

## Methodology 	  
(13) To inject a known electron packet into the liquid, the program requires a source whose timing, magnitude, and location are independently controlled. Candidates include pulsed ultraviolet photoemission from an immersed metal photocathode, controlled field emission, photoionization, and a calibrated ionization source. The baseline is pulsed UV photoemission from an immersed metal photocathode (material, work function, laser wavelength, pulse energy, spot size, and expected electrons per pulse to be stated), chosen because it prioritizes what the first experiments need, namely timing control, shot-to-shot repeatability, and absolute calibration, rather than maximum charge yield. Calibration proceeds by collecting the emitted charge directly on a reference electrode and integrating it with the calibrated readout chain, giving an injected charge scale independent of any interface physics. Timing separates injection artifacts from charge arrival: pickup occurs at the injection instant, drifted electrons arrive after a calculable transit time. Runs without liquid and without drift field complete the discrimination.   

(14) Stage 1 will use a controlled source, drift region, shielding grid, candidate surface, independently biased holding and drain electrodes, and calibrated time resolved readout to measure charge arrival, prompt collection, delayed release, retention time, and recovery. The charge-accounting analysis will report, with calibrated uncertainties, the injected charge (Qinj), prompt collection (Qprompt), intentionally drained charge (Qdrain) delayed or recovered charge , and the residual after correction for independently measured bulk lifetime loss and collection efficiencies \[\].A delayed transient will be called recoverable charge only if it appears under the predicted arrival or release condition, disappears after intentional packet draining, differs from no-injection and no liquid templates, and is reproducible across field, surface, and liquid fill controls. The Stage 1 decision will use a predefined recoverable-fraction and retention-time sensitivity derived from the source calibration and readout noise plan, not merely the observation of a transient.  

(15) After Stage 1 identifies a recoverable population, Stage 0 modeling will compare coplanar and multilayer or overlapping-gate test geometries using the actual fabrication limits, dielectric stack, and near surface boundary assumptions. The selected two region geometry will be chosen because its modeled potential landscape provides a measurable distinction between a packet held in region A, a packet transferred to region B, and a packet intentionally drained.  
Evidence for transfer will require a directional and clock order dependent change in independently calibrated endpoint collection or recovery, agreement with the charge removed from the originating region within uncertainty, reversal under a reversed sequence, disappearance after intentional draining, and subtraction of a no-injection feedthrough template. A clock correlated transient alone will not be interpreted as charge transfer.  

(16) Conditional on validated tworegion transfer, a three or four gate structure will measure transfer across multiple boundaries. For each step, transfer efficiency will be defined using independently calibrated charge recovered at the intended destination relative to charge available at the preceding region. Residual charge at the originating region, drain collection, delayed recovery, bulk-loss corrections, and unresolved loss will be reported separately where measurable. Clock amplitude, edge rate, dwell time, repetition rate, packet size, and pause duration will be scanned over model informed ranges \[\]. Observed trends will be treated as diagnostic evidence rather than unique proof of a mechanism. Possible explanations to test include gate-response bandwidth, insufficient barrier control, lateral mobility, well capacity, and trap-mediated release.  

(17) The capstone protocol stores a packet at a gate adjacent to the sense node, senses it, clocks it away, verifies that the sense node reads empty, returns it, and senses again. Conservation is established by comparing independent single measurements before and after the move, not by averaging repeated samples of a static node. Repeated non-destructive readout in the style of the Skipper CCD is an additional objective of this work, and is not implied by the electron on helium transport precedent objective.   

(18) After controlled photoemission measurements establish the interface response, the final detector generated charge stage will introduce a calibrated ionization source such as 207 Bi. A 976-keV energy deposition corresponds to approximately 4.1×10 initial ion pairs for W=23.6 eV per pair, before recombination and transport losses \[\]. The charge reaching the interface will therefore be measured after field, track, drift, purity, and collection-dependent losses rather than assumed from a universal survival factor. The controlled source packet scale will be selected to overlap the expected post recombination and post transport range where practical, but direct carry over without recalibration will not be assumed. This stage is an application test of a previously established interface mechanism, not the first search for that mechanism.  

(19) LXe is a conditional extension or redirection path, not a presumed transfer of the LAr architecture. A limited parameter comparison will first identify how temperature, purification and containment requirements, electron energetics, mobility and diffusion, dielectric response, surface chemistry, and modeled gate coupling differ from LAr \[\]. The quasi-free electron-energy convention and reference state will be stated explicitly rather than quoting isolated negative values without definition. For the simple planar dielectric-image term, reducing the permittivity contrast between the liquid and a higher-permittivity dielectric reduces the magnitude of the image attraction. The complete multilayer geometry and applied fields will nevertheless be calculated rather than inferred from this term alone. An LXe experiment will be proposed only if the LAr analysis identifies a plausible liquid-specific limitation that LXe could improve and if the required source, purification, readout, and safety infrastructure are credible.  

(20) Before Stage 1, the project will produce an equivalent circuit and a first-order noise budget for a specified readout chain. Inputs will include modeled electrode to gate and electrode to substrate capacitance, cable and feedthrough capacitance, amplifier input capacitance and noise spectra at the planned operating temperature, feedback and reset configuration, shaping or integration time, digitizer resolution, and measured clock to sense node coupling. Outputs will include a predicted induced charge waveform, peak or integrated signal, equivalent noise charge, dynamic range, feedthrough template, and signal to noise ratio for the selected packet scale \[\]. The readout chain will be calibrated with a precision test capacitor and controlled charge injection before and after each campaign. A provisional target such as 200 electrons rms may be used for planning only if the proposal identifies the amplifier, total capacitance, temperature, shaping time, calculation method, and design margin. Otherwise, the value will be labeled as a sensitivity goal rather than a predicted result. Single electron sensitivity is not a required milestone of the initial interface experiment.  

(21) Materials characterization will be selected by measurement role. Ellipsometry, spectroscopic reflectometry, profilometry, or cross-sectional SEM on appropriate witness samples will establish thickness, growth per cycle, and uniformity. AFM will quantify exposed surface roughness and morphology. XPS will compare near surface elemental composition, chemical states, and relative carbon or hydroxyl related signatures subject to stated detection limits. FTIR will be used where its sampling depth and substrate geometry permit testing of hydroxyl- or carbon-containing groups \[\]. Companion MOS capacitors will provide process monitor measurements of leakage, breakdown, hysteresis, and effective fixed charge or interface trap behavior at the silicon/dielectric interface \[\]. These measurements will not be presented as direct measurements of the LAr facing surface. The liquid facing interface will instead be probed through cryogenic charge injection, recovery, relaxation, and transfer measurements. XRD and Raman will be used only when a specific crystallinity or phase question justifies them; they are not primary characterization techniques for a thin amorphous ALD dielectric.  

(22) Every charge result carries its control set, and the controls are acquired in the same run as the data they qualify so that purity or temperature drift cannot masquerade as a surface effect. No liquid and no drift field runs isolate injection artifacts; no-injection runs at identical clock settings supply the feedthrough template; grounded gate runs bound direct capacitive coupling; microphonic and electromagnetic-pickup runs are taken with the clock active and the source disabled; each result is repeated on multiple devices and across separate liquid fills; reversed holding field and reversed clock direction test directionality; draining the packet before transfer tests signal provenance; and the trap rich and metallic reference surfaces anchor the two failure extremes. Electron lifetime is measured concurrently in every run, temperature and high voltage are logged continuously, charging hysteresis is mapped by repeated charge and release cycles on the same coupon, and the readout chain is calibrated against a precision test capacitor before and after each campaign. A control matrix will be specified before data collection. For each artifact hypothesis, including capacitive feedthrough, dielectric polarization, bulk attachment, direct collection, trapped charge, microphonics, and electromagnetic pickup, the matrix will state the control sequence, predicted waveform or endpoint charge outcome, normalization method, and criterion for rejecting or retaining that explanation. The conductive reference will be interpreted as a collection-dominated control, while the trap-rich surface will be interpreted as a strong trapping control only after its behavior is independently characterized.  

(23) Each stage will have a provisional advancement criterion, measurement uncertainty, required control set, and redirect action. Numerical thresholds will be derived from the source calibration, modeled signal, measured feedthrough template, and readout-noise budget. Their assumptions will be stated explicitly and revised only through a documented review after preliminary measurements. The ALD gate will address reproducible film qualification rather than reactor pressure traces alone. The surface-entry gate will report measured fixed charge, leakage, and their consequences for the modeled field landscape rather than impose an arbitrary fixed charge limit. Stage 1 will require a recoverable signal distinguishable from controls and a bounded retention-time estimate. Stage 2 will require direction-reversing, charge-accounted transfer. Stage 3 will require cumulative multi-boundary transport with a loss budget. The repeated sensing stage will require separately demonstrated electronic noise averaging and packet conservation.

---

## Preliminary Results 

Two back-to-back runs (U and V, August 6, 2026\) executed an identical 1000-cycle recipe on rolled copper shim sheet samples: 500 cycles of a 500 ms water-vapour dose with a 5 s purge, followed by 500 cycles of a 500 ms air dose with the same purge. Recomputed from raw logs, mean cycle times agree between runs to 0.1 ms (U \= 5707.0 ± 1.3 ms vs V \= 5706.9 ± 1.2 ms), mean process temperature to 0.1 °C (398.5 ± 2.4 °C vs 398.4 ± 1.4 °C on the in-furnace RTD, against a 450 °C controller setpoint; the offset reflects the RTD position relative to the heater and is characterized in the Appendix). XRD (Cu Kα, 20–80° 2θ) of the middle coupons identifies both Cu₂O and CuO in all three scans (one of U, two of V including a remounted repeat). Cu₂O is identified by five reflections: (110), (111), (200), (220), and (222) at 29.35–29.39°, 36.19–36.26°, 41.84–41.90°, 398.5 ± 2.4 °C vs 398.4 ± 1.4 °C on the in-furnace RTD, against a 450 °C controller setpoint; the offset reflects the RTD position relative to the heater and is characterized in the Appendix; and CuO by nine: the strongest at 35.53° (−111), 38.79–38.85° (111), and 48.66–48.79° (−202). Strong oxide reflections reproduce between the same-day and repeat scans to ≤0.14°, and all tabulated oxide reflections to ≤0.24°. The Cu₂O lines sit systematically below their reference positions, giving a refined lattice parameter a \= 4.30 ± 0.02 Å in every scan (+0.7% vs JCPDS 4.2696 Å, with the (200) reflection an outlier at 4.31 Å) while the Cu substrate lines are themselves displaced by up to \+0.25° in the opposite sense, so the peak positions are first corrected for zero-shift and specimen displacement using the Cu lines as an internal standard before any strain interpretation; the two Cu₄O₃ reflections falling in windows clear of all other phases (computed 28.1° and 30.6°) are absent, so the expansion indicates strain or defects in the Cu₂O scale rather than an additional phase. Phase identification rests on peak positions only; relative intensities differ strongly between runs (most visibly Cu₂O(200), roughly twenty fold weaker in U than in V),  consistent with differing crystallographic texture, oxide thickness, or coupon placement rather than with either phase being absent; texture is not yet measured, so it remains one of several candidate explanations. Raman spectra of the same samples independently confirm CuO through its Ag mode at 295–298 cm⁻¹ and Bg mode at 344–345 cm⁻¹, with the weaker Bg mode at 627–634 cm⁻¹ also visible; the Cu₂O band near 218 cm⁻¹ is not detected, so the Cu₂O identification rests on XRD alone. Oxide thickness has not yet been measured (see Figure 2, which should carry a numbered caption stating instrument settings, scan range, and which coupon each trace represents) (X-ray reflectivity fails on the µm-scale roughness of the rolled stock) and thickness repeatability therefore remains to be demonstrated. Because qualification of the in-house system is a mandatory condition of this program, the next step is TMA/water deposition on smooth silicon samples, with ellipsometric thickness on at least five consecutive runs, a saturation curve, and sample uniformity; commercially deposited Al2O3 will be used only as a benchmark, not as a substitute.

## Plans and Tasks to Complete the Dissertation Research

(24) If the Stage 1 recoverable-fraction gate fails on Al₂O₃ (recoverable fraction below 10%), the response is, in order: modified ALD conditions, post-deposition annealing, vacuum dehydration, surface passivation, alternative oxides, non-oxide surfaces, and thin capping layers, with each variant characterized before charge testing. If LAr supports no useful near-surface state: LXe, altered termination, operation nearer the liquid–vapor interface, geometries holding electrons farther from the solid, dynamic rather than static confinement. If charge is retained but will not transfer: dielectric thickness, gate pitch and geometry, clock voltage and speed, holding field. If transfer works but repeated sensing fails: dedicated floating-gate sensors, differential bridges, RF sensing, separated storage and sense regions, revised reset sequences. If no useful transport regime is found at all, the program still delivers quantitative limits on sticking probability, recoverable fraction, retention time, and their field, material, and liquid dependence as a controlled negative result with scientific value. 

(25) If retention, transfer, and repeated sensing can be engineered, then CCD-like pixel arrays, charge routing before amplification, local accumulation, repeated sensing of small signals, charge-domain multiplexing, sparse readout, lower thresholds, and eventual electron-counting operation become available inside detection media already deployed at the kiloton scale. including new readout architectures for LAr and LXe time-projection chambers and direct integration between noble-liquid charge and CMOS electronics. direct integration between noble-liquid charge and CMOS electronics. The dissertation objective is to establish whether the enabling mechanism exists and can be engineered. 

(26) The expected timeline for the dissertation-level contributions:

| Task | Status | Expected completion |
| :---- | ----- | ----- |
| A quantitative model of near-interface charge control in liquid noble gases. | Not started  | 4 months |
| Systematic measurements of electron sticking, retention, and recovery at selected LAr/solid or LXe/solid interfaces. | Not started  | 4 months |
| Demonstration or quantitative exclusion of lateral gate-controlled charge transfer. | Not started  | 4-**6** months |
| Measurement of transfer efficiency and charge-loss mechanisms. | Not started  | 4 months |
| Demonstration or quantitative assessment of repeated sensing. | Not started  | 4 months |
| Identification of material and surface properties that govern interfacial charge behavior. | Not started  | **3**\-4 months |
| A rapid-iteration platform for screening candidate liquid-noble-gas interface materials. | Finalizing Cu validation experiment; thickness reproducibility and characterization still needed. Suggestion is to proceed to Si platform \+ TMA | **3**\-4 months |
| A credible route from the mechanism demonstration to a particle-detector readout architecture. | In progress \- framework is being defined as a plan for now.  | 8-**12** months |
| *Many task stages overlap so completion may be quicker than expected* | Total expected time: | \~3-**3.5** years |

This dissertation plan requires two elements: pushing the boundary of a fundamental sensing mechanism, and producing industrial quality prototype sensors by integrating CMOS circuit chips with novel materials, with the emphasis placed on sensitive, robust measurement and well designed apparatus rather than on fabrication alone. This plan maps directly onto both. The interfacial charge state, its gate-controlled transfer, and repeated sensing constitute the new sensing mechanism.  The second element is the progression from simplified test structures with external electronics toward integration; toward integration of select interface stack with a CMOS compatible gate and sensing architecture.

## References  
\[1\] W. M. Bonivento and F. Terranova, “The Science and Technology of Liquid Argon   
Detectors,” *Reviews of Modern Physics* **96**, 045001 (2024): [DOI](https://doi.org/10.1103/RevModPhys.96.045001), [arXiv:2405.01153](https://arxiv.org/abs/2405.01153).  
\[2\] V. Chepel and H. Araújo, “Liquid Noble Gas Detectors for Low Energy Particle   
Physics,” *Journal of Instrumentation* **8**, R04001 (2013): [DOI](https://doi.org/10.1088/1748-0221/8/04/R04001), [arXiv:1207.2292](https://arxiv.org/abs/1207.2292).  
\[3\] G. Sabouret, F. R. Bradbury, S. Shankar, J. A. Bert, S. A. Lyon; Signal and charge   
transfer efficiency of few electrons clocked on microscopic superfluid helium channels. *Appl. Phys. Lett.* 25 February 2008; 92 (8): 082104\. [https://doi.org/10.1063/1.2884693](https://doi.org/10.1063/1.2884693) [arXiv:0710.2909](https://arxiv.org/abs/0710.2909)  
\[4\] F. R. Bradbury, M. Takita, T. M. Gurrieri, K. J. Wilkel, K. Eng, M. S. Carroll, and S. A.   
Lyon, “Efficient Clocked Electron Transfer on Superfluid Helium,” *Physical Review Letters* **107**, 266803 (2011). [DOI: 10.1103/PhysRevLett.107.266803](https://doi.org/10.1103/PhysRevLett.107.266803)  
[arXiv:1107.4040](https://arxiv.org/abs/1107.4040)  
\[5\] K. E. Castoria, H. Byeon, N. R. Beysengulov, E. O. Glen, M. Sammon, J. Pollanen, D. G.   
Rees, and S. A. Lyon, “Selective Shuttling of Electrons on Helium Using a CMOS Control Platform,” *Physical Review Applied* **26**, 014005 (2026).  
[DOI: 10.1103/pq6h-679f](https://doi.org/10.1103/pq6h-679f) [arXiv:2511.1592](https://arxiv.org/abs/2511.15922)  
 \[6\] G. Papageorgiou, P. Glasson, K. Harrabi et al., “Counting individual trapped electrons on   
liquid helium,” Appl. Phys. Lett. **86**, 153106 (2005). https://doi.org/10.1063/1.1900301  
\[7\] X. Zhou, G. Koolstra, X. Zhang et al., “Single electrons on solid neon as a solid-state qubit   
platform,” Nature **605**, 46–50 (2022). https://doi.org/10.1038/s41586-022-04539-x  
\[8\] K. Zheng, X. Song, and K. W. Murch, “Surface-Morphology-Assisted Trapping of Strongly   
Coupled Electron-on-Neon Charge States,” Phys. Rev. Lett. **135**, 080601 (2025). https://doi.org/10.1103/8v7d-53x7  
\[9\] K. Kajita, “A new two-dimensional electron system on the surface of solid neon,” Surf. Sci.   
**142**, 86–95 (1984). https://doi.org/10.1016/0039-6028(84)90290-5  
\[10\] B. E. Nieuwenhuys, O. G. van Aardenne, and W. M. H. Sachtler, “Adsorption of xenon on   
group VIII and Ib metals studied by photoelectric work function measurements,” Chem. Phys. **5**, 418–428 (1974). https://doi.org/10.1016/0301-0104(74)85043-3  
\[11\] E. A. Ustinov, D. D. Do, and M. Jaroniec, “Application of density functional theory to   
equilibrium adsorption of argon and nitrogen on amorphous silica surface,” Appl. Surf. Sci. **252**, 548–561 (2005). https://doi.org/10.1016/j.apsusc.2005.02.070  
\[12\] B. Plenkiewicz, J.-P. Jay-Gerin, P. Plenkiewicz, and G. B. Bachelet, “Conduction band   
energy of excess electrons in liquid argon,” Europhys. Lett. **1**, 455–460 (1986). https://doi.org/10.1209/0295-5075/1/9/006  
W. Tauchert and W. F. Schmidt, “Energy of the quasi-free electron state in liquid argon, krypton, and xenon,” Z. Naturforsch. A **30**, 1085–1086 (1975). https://doi.org/10.1515/zna-1975-0827  
U. Sowada, J. M. Warman, and M. P. de Haas, “Hot-electron thermalization in solid and liquid argon, krypton, and xenon,” Phys. Rev. B **25**, 3434–3437 (1982). https://doi.org/10.1103/PhysRevB.25.3434  
L. S. Miller, S. Howe, and W. E. Spear, “Charge transport in solid and liquid Ar, Kr, and Xe,” Phys. Rev. **166**, 871–878 (1968). https://doi.org/10.1103/PhysRev.166.871  
W. Walkowiak, “Drift velocity of free electrons in liquid argon,” Nucl. Instrum. Methods A **449**, 288–294 (2000). https://doi.org/10.1016/S0168-9002(99)01301-7  
E. Shibamura, T. Takahashi, S. Kubota, and T. Doke, “Ratio of diffusion coefficient to mobility for electrons in liquid argon,” Phys. Rev. A **20**, 2547–2554 (1979). https://doi.org/10.1103/PhysRevA.20.2547  
Y. Li, T. Tsang, C. Thorn et al., “Measurement of longitudinal electron diffusion in liquid argon,” Nucl. Instrum. Methods A **816**, 160–170 (2016). https://doi.org/10.1016/j.nima.2016.01.094  
D. W. Swan, “Electron attachment processes in liquid argon containing oxygen or nitrogen impurity,” Proc. Phys. Soc. **82**, 74–84 (1963). https://doi.org/10.1088/0370-1328/82/1/310  
G. Bakale, U. Sowada, and W. F. Schmidt, “Effect of an electric field on electron attachment to sulfur hexafluoride, nitrous oxide, and molecular oxygen in liquid argon and xenon,” J. Phys. Chem. **80**, 2556–2559 (1976). https://doi.org/10.1021/j100564a006  
A. Bettini, A. Braggiotti, F. Casagrande et al., “A study of the factors affecting the electron lifetime in ultra-pure liquid argon,” Nucl. Instrum. Methods A **305**, 177–186 (1991). https://doi.org/10.1016/0168-9002(91)90532-U  
R. Andrews, W. Jaskierny, H. Jöstlein et al., “A system to test the effect of materials on electron drift lifetime in liquid argon and the effect of water,” Nucl. Instrum. Methods A **608**, 251–258 (2009). https://doi.org/10.1016/j.nima.2009.07.024  
N. V. Klassen and W. F. Schmidt, “Ionization of liquid argon by X-rays: W-value,” Can. J. Chem. **47**, 4286–4288 (1969). https://doi.org/10.1139/v69-707  
J. Thomas and D. A. Imel, “Recombination of electron-ion pairs in liquid argon and liquid xenon,” Phys. Rev. A **36**, 614–616 (1987). https://doi.org/10.1103/PhysRevA.36.614  
R. Acciarri, C. Adams, J. Asaadi et al., “A study of electron recombination using highly ionizing particles in the ArgoNeuT liquid argon TPC,” J. Instrum. **8**, P08005 (2013). https://doi.org/10.1088/1748-0221/8/08/P08005  
E. Aprile and T. Doke, “Liquid xenon detectors for particle physics and astrophysics,” Rev. Mod. Phys. **82**, 2053–2097 (2010). https://doi.org/10.1103/RevModPhys.82.2053  
H. Ichinose, T. Doke, A. Hitachi et al., “Energy resolution for 1 MeV electrons in liquid argon doped with allene,” Nucl. Instrum. Methods A **295**, 354–358 (1990). https://doi.org/10.1016/0168-9002(90)90712-F  
M. Silver, P. Kumbhare, P. Smejtek, and D. G. Onn, “Hot electron injection into liquid argon from a tunnel cathode,” J. Chem. Phys. **52**, 5195–5199 (1970). https://doi.org/10.1063/1.1672761  
J. G. Kim, S. M. Dardin, K. H. Jackson et al., “Studies of electron avalanche behavior in liquid argon,” IEEE Trans. Nucl. Sci. **49**, 1851–1856 (2002). https://doi.org/10.1109/TNS.2002.801490  
K. Arii and W. F. Schmidt, “Current injection and light emission in liquid argon and xenon in a divergent electric field,” IEEE Trans. Electr. Insul. **EI-19**, 16–23 (1984). https://doi.org/10.1109/TEI.1984.298728  
S. Ramo, “Currents induced by electron motion,” Proc. IRE **27**, 584–585 (1939). https://doi.org/10.1109/JRPROC.1939.228757  
W. Shockley, “Currents to conductors induced by a moving point charge,” J. Appl. Phys. **9**, 635–636 (1938). https://doi.org/10.1063/1.1710367  
Z. He, “Review of the Shockley–Ramo theorem and its application in semiconductor gamma-ray detectors,” Nucl. Instrum. Methods A **463**, 250–267 (2001). https://doi.org/10.1016/S0168-9002(01)00223-6  
V. Radeka, H. Chen, G. Deptuch et al., “Cold electronics for ‘Giant’ liquid argon time projection chambers,” J. Phys. Conf. Ser. **308**, 012021 (2011). https://doi.org/10.1088/1742-6596/308/1/012021  
E. Bechetoille, H. Mathez, and Y. Zoccarato, “Charge sensitive amplifier in cold gas of liquid argon time projection chamber,” J. Instrum. **6**, C01005 (2011). https://doi.org/10.1088/1748-0221/6/01/C01005  
J. Tiffenberg, M. Sofo-Haro, A. Drlica-Wagner et al., “Single-electron and single-photon sensitivity with a silicon Skipper CCD,” Phys. Rev. Lett. **119**, 131802 (2017). https://doi.org/10.1103/PhysRevLett.119.131802  
S. Palestini and F. Resnati, “Space charge in liquid argon time-projection chambers: a review of analytical and numerical models, and mitigation methods,” J. Instrum. **16**, P01028 (2021). https://doi.org/10.1088/1748-0221/16/01/P01028  
B. Baibussinov, M. Bettini, F. Fabris et al., “Study of charging-up of PCB planes for neutrino experiment readout,” J. Instrum. **19**, P11012 (2024). https://doi.org/10.1088/1748-0221/19/11/P11012  
S. Z. Tu, C. Jiang, T. R. Junk, and T. Yang, “A numerical solver for investigating the space charge effect on the electric field in liquid argon time projection chambers,” J. Instrum. **18**, P06022 (2023). https://doi.org/10.1088/1748-0221/18/06/P06022  
L. Romero, R. Santorelli, and B. Montes, “Dynamics of the ions in liquid argon detectors and electron signal quenching,” Astropart. Phys. **92**, 11–20 (2017). https://doi.org/10.1016/j.astropartphys.2017.04.002  
R. L. Puurunen, “Surface chemistry of atomic layer deposition: A case study for the trimethylaluminum/water process,” J. Appl. Phys. **97**, 121301 (2005). https://doi.org/10.1063/1.1940727  
R. L. Puurunen, “Correlation between the growth-per-cycle and the surface hydroxyl group concentration in the atomic layer deposition of aluminum oxide from trimethylaluminum and water,” Appl. Surf. Sci. **245**, 6–10 (2005). https://doi.org/10.1016/j.apsusc.2004.10.003  
S. M. George, “Atomic layer deposition: An overview,” Chem. Rev. **110**, 111–131 (2010). https://doi.org/10.1021/cr900056b  
M. D. Groner, F. H. Fabreguette, J. W. Elam, and S. M. George, “Low-temperature Al₂O₃ atomic layer deposition,” Chem. Mater. **16**, 639–645 (2004). https://doi.org/10.1021/cm0304546  
B. Hoex, S. B. S. Heil, E. Langereis, M. C. M. van de Sanden, and W. M. M. Kessels, “Ultralow surface recombination of c-Si substrates passivated by plasma-assisted atomic layer deposited Al₂O₃,” Appl. Phys. Lett. **89**, 042112 (2006). https://doi.org/10.1063/1.2240736  
F. Werner and J. Schmidt, “Manipulating the negative fixed charge density at the c-Si/Al₂O₃ interface,” Appl. Phys. Lett. **104**, 091604 (2014). https://doi.org/10.1063/1.4867652  
D. J. DiMaria and J. W. Stasiak, “Trap creation in silicon dioxide produced by hot electrons,” J. Appl. Phys. **65**, 2342–2356 (1989). https://doi.org/10.1063/1.342824  
H. Knözinger and P. Ratnasamy, “Catalytic aluminas: Surface models and characterization of surface sites,” Catal. Rev. **17**, 31–70 (1978). https://doi.org/10.1080/03602457808080878  
C. Barbos, D. Blanc-Pelissier, A. Fave et al., “Al₂O₃ thin films deposited by thermal atomic layer deposition: Characterization for photovoltaic applications,” Thin Solid Films **617**, 108–113 (2016). https://doi.org/10.1016/j.tsf.2016.02.049  
D. Suh and W. S. Liang, “Electrical properties of atomic layer deposited Al₂O₃ with anneal temperature for surface passivation,” Thin Solid Films **539**, 309–316 (2013). https://doi.org/10.1016/j.tsf.2013.05.082

## Appendix

The proposed detector layered architecture consists of a silicon substrate base, metal gate electrodes, a 50 nm aluminum oxide (Al₂O₃) layer deposited via atomic layer deposition (ALD), and liquid argon as the detection medium. There is an external electric field being applied to this detector so if ionization in LAr creates free electrons they will drift towards the Al₂O₃ surface/interface. 

Close up of the LAr/Al₂O₃ interface with two different possible cases for interface behavior. Although, ALD is considered the gold standard for producing high quality thin films, especially in thickness control and uniformity, we can expect there to be some surface roughness resulting in void spaces.   
**(12)** Electrostatic and interfacial model

Model cross-section, electron potential energy above the biased gate, and the elementary clocked transfer, computed with an in-house two-dimensional finite-volume solver of ∇·(ε∇φ) \= 0, written in Python and developed with AI assistance (Perplexity Computer). Boundary conditions are Dirichlet: grounded substrate, fixed gate potentials, and a far-field top boundary representing the drift field applied by a distant negative electrode. The solution provides lateral confinement only; the vertical holding or reversible-localization mechanism (applied holding field, liquid-solid energy offset, image interaction, surface dipole, or dynamic confinement) is stated separately with its magnitude, together with the electron potential energy as a function of height above the film. Material inputs are literature relative permittivities: liquid argon 1.505, Al₂O₃ 8.0, SiO₂ 3.9. The solver reproduces the analytic one-dimensional multilayer result over a gate center to within 0.2%. Grid-convergence studies and independent verification against the open-source Poisson\_CCD solver are early-stage tasks; all bias values shown are provisional design points, not optimized operating conditions. The LAr permittivity comes from the [BNL LAr properties compilation](https://www.phy.bnl.gov/~chao/docs/Properties-of-LAr-v9a-thorn.pdf), and Poisson\_CCD is the published simulator in [J. Appl. Phys. 130, 164502](https://pubs.aip.org/aip/jap/article/130/16/164502/568212/Poisson-CCD-A-dedicated-simulator-for-modeling). 

**(20)** Readout electronics and noise \- equivalent circuit with estimated component values, a line-item noise table in electrons rms, shaping time and bandwidth, reset-noise and clock-feedthrough estimates, and the resulting expected signal-to-noise ratio for a 10^4-electron packet.

**(23)** Quantitative stage gates  
**Table 1\.** Quantitative advancement criteria between stages. These values may later be revised using preliminary measurements.

| Gate | Criterion |
| ----- | ----- |
| ALD qualification | ALD qualification: demonstrated precursor saturation; thickness repeatability within ±5% over ≥ 5 consecutive runs; sample uniformity within ±5%; documented contamination control. Materials comparison \- reproducible differences among ≥ 3 surfaces correlated with an independently measured surface property on ≥ 2 samples each \- and for Stage 5, detector-generated charge. |
| Surface entry | Measured fixed-charge density below 1 × 10¹² cm⁻², or the lowest value achievable after annealing and passivation, with the measured value reported for every surface variant (ALD Al₂O₃ typically shows 10¹²–10¹³ cm⁻² negative fixed charge) |
| Stage 1, retention | Recoverable fraction ≥ 10% of a 10⁴-electron packet (≥ 10³ electrons, giving ≥ 500 electrons after a 50% Stage 2 transfer, i.e. ≥ 2.5 × ENC per single shot and ≥ 10 × ENC after averaging 20 shots); retention ≥ 1 ms |
| Stage 2, transfer | Transfer fraction ≥ 50%, directional and reversible after feedthrough subtraction |
| Stage 3, transport | Per-step efficiency ≥ 90% sustained over ≥ 3 gate boundaries |
| Stage 4, repeated sensing | Charge loss ≤ 5% per cycle, as the mean of ≥ 10 independent cycles |

Preliminary results section:  
XRD for runs U and V data:

| Phase (hkl) | Ref 2θ | U repeat (8/10) | V (8/7) | V repeat (8/10) | Max spread |
| :---- | :---- | :---- | :---- | :---- | :---- |
| Cu₂O (110) | 29.58 | 29.394 | 29.354 | 29.375 | 0.040° |
| CuO (110) | 32.50 | 32.535 | 32.649 | 32.642 | 0.114° |
| CuO (−111)/(002) | 35.50 | 35.537 | 35.531 | 35.526 | 0.011° |
| Cu₂O (111) | 36.42 | 36.185 | 36.195 | 36.262 | 0.077° |
| CuO (111)/(200) | 38.70 | 38.848 | 38.799 | 38.793 | 0.055° |
| Cu₂O (200) | 42.30 | 41.886 | 41.840 | 41.901 | 0.061° |
| Cu (111) | 43.30 | 43.419 | 43.550 | 43.542 | 0.131° |
| CuO (−202) | 48.72 | 48.694 | 48.657 | 48.789 | 0.133° |
| Cu (200) | 50.43 | 50.391 | 50.478 | 50.594 | 0.203° |
| CuO (020) | 53.50 | 53.458 | 53.445 | 53.404 | 0.054° |
| CuO (202) | 58.30 | 58.025 | 58.208 | 58.148 | 0.183° |
| Cu₂O (220) | 61.35 | 61.008 | 60.851 | 60.952 | 0.158° |
| CuO (−311)/(022) | 66.20 | 66.033 | 66.054 | 66.143 | 0.111° |
| CuO (220) | 68.10 | 67.996 | 68.106 | 68.093 | 0.109° |
| CuO (311) | 72.40 | 73.013 | 72.774 | 72.795 | 0.238° |
| Cu (220) | 74.13 | 74.297 | 74.051 | 73.935 | 0.362° |
| Cu₂O (222) | 77.4 | \~76.7 | \~76.8 | \~76.8 | — |

Reference values: Cu₂O JCPDS 05-0667, CuO JCPDS 48-1548, Cu JCPDS 04-0836 cross-checked against the published CuO and Cu4O3 diffraction data cited in the reference list)

Raman:

| Mode | Sample U | Sample V | Literature |
| :---- | :---- | :---- | :---- |
| CuO Ag | 297.6 | 294.7 | 296–298 |
| CuO Bg⁽¹⁾ | 344.0 | 345.1 | 344–346 |
| CuO Bg⁽²⁾ | 633.6 | 626.9 | 629–636 |
| Cu₂O (strongest, 218\) | not detected | not detected | \~218  |

![][image1]

Figures to follow are the firmware timing diagrams, full timeline comparisons for the recipe firmware, cycle-by-cycle peaks and through pressures, peak pressure groupings and furnace temperature stability for runs U and V.   
![][image2]

![][image3]  
![][image4]![][image5]![][image6]![][image7]  
![][image8]  
H2O dose peaks are 1.5-1.75x tighter than AIR dose peaks in both runs (CV 6.2% vs 9.4% and 5.7% vs 10.0%); 497 of 500 cycles per phase pass the peak-detection cut.  
![][image9]![][image10]  
![][image11]![][image12]

