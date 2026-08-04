# Scientific Direction and Required Revision of the Comprehensive-Exam Proposal

**Document status:** This document records advisor feedback, minimum scientific expectations, and required revisions.  It is not a replacement draft for the student's comprehensive-exam proposal.  The student remains responsible for developing and defending the detailed scientific rationale, device design, experimental methods, analysis, milestones, and technical decisions.

**Date:** August 4, 2026

**Version:** Advisor revision guidance, Version 1

## Recommended proposal title

**Engineered Interfaces for CCD-Like Charge Storage and Transfer in Liquid Noble Gases**

This title identifies the broad scientific objective.  The in-house ALD system and Al₂O₃ are means along the research path, not the primary research objectives or predetermined solutions.

The current title should be changed because it gives excessive prominence to construction of the ALD system and implies that Al₂O₃ and a Skipper-like architecture have already been selected as the solution.  The scientific research is instead the search for a suitable interfacial charge state and the experimental determination of whether controlled storage, transport, and repeated sensing are possible.

---

## 1. Central scientific vision

The broad scientific vision is to extend controlled electron storage and CCD-like charge transfer from electron-on-helium systems to other liquid noble gases used as active particle-detection media.

Controlled transport of electrons above liquid helium has already been demonstrated using microfabricated gate structures.  Few-electron and single-electron packets have been confined and shuttled with extremely high transfer efficiency, including in a recent CMOS-based control platform:

- [Sabouret et al., DOI: 10.1063/1.2884693](https://doi.org/10.1063/1.2884693)
- [Bradbury et al., arXiv:1107.4040](https://arxiv.org/abs/1107.4040)
- [Castoria et al., arXiv:2511.15922](https://arxiv.org/abs/2511.15922)

This work provides an important **functional precedent**:

- small electron packets can be electrostatically confined above a cryogenic liquid surface;
- microfabricated buried electrodes can define storage and transfer regions;
- CCD-like gate sequences can shuttle charge with extremely high efficiency;
- charge occupancy can be detected;
- CMOS fabrication can be integrated with structures controlling electrons above liquid helium.

The proposed mechanism in liquid argon or liquid xenon would, however, be substantially different.

In the helium experiments, electrons reside outside the liquid, above a liquid–vacuum interface.  They are not transported through dense liquid helium or held against a solid dielectric surface.  Their favorable behavior arises from the clean liquid-helium surface and from a well-established vertical confinement potential.

The proposed LAr/LXe work instead concerns electrons that are:

1. generated within a dense liquid noble gas;
2. transported through the bulk liquid;
3. driven toward an engineered solid surface;
4. retained in a mobile or reversibly localized interfacial state;
5. moved laterally using patterned electrodes;
6. sensed one or more times without unacceptable charge loss.

The helium work therefore demonstrates that CCD-like manipulation of electrons associated with a noble liquid is possible, but it does not solve the LAr/LXe interface problem.  The proposed research must determine whether an appropriate charge state and transport regime can be created at a solid–liquid-noble-gas interface.

---

## 2. Why extend the concept to liquid argon and liquid xenon?

Liquid argon and liquid xenon are among the principal active media used in particle, astroparticle, neutrino, and rare-event detectors.  Ionizing radiation produces electrons and scintillation in these liquids, and sufficiently pure LAr and LXe support electron transport over macroscopic distances.  Their charge production, recombination, drift, diffusion, attachment, extraction, and detection have been studied extensively.

Useful reviews include:

- W. M. Bonivento and F. Terranova, “The Science and Technology of Liquid Argon Detectors,” *Reviews of Modern Physics* **96**, 045001 (2024): [DOI](https://doi.org/10.1103/RevModPhys.96.045001), [arXiv:2405.01153](https://arxiv.org/abs/2405.01153).
- V. Chepel and H. Araújo, “Liquid Noble Gas Detectors for Low Energy Particle Physics,” *Journal of Instrumentation* **8**, R04001 (2013): [DOI](https://doi.org/10.1088/1748-0221/8/04/R04001), [arXiv:1207.2292](https://arxiv.org/abs/1207.2292).

Liquid-argon detectors are widely used in collider calorimetry, neutrino time-projection chambers, and underground rare-event experiments.  Liquid-xenon detectors are central to dark-matter searches, gamma-ray detection, neutrino measurements, and neutrinoless-double-beta-decay experiments.

Current liquid-noble-gas detectors generally transport charge through a bulk drift field and then collect it at an electrode or extract it into a gas phase.  They provide extensive control over bulk charge drift but comparatively little local manipulation of individual charge packets after the packets reach a readout surface.

A successful surface-based charge-control technology could introduce functions not normally available in a liquid-noble-gas detector:

- local charge storage;
- lateral charge routing;
- charge concentration;
- pixel-to-pixel transfer;
- repeated measurement of the same charge packet, analogous in function to a Skipper CCD;
- charge-domain filtering;
- multiplexed or sparse readout;
- improved threshold;
- eventual few-electron or electron-counting operation, if retention and repeated sensing can first be demonstrated at larger packet sizes.

If these functions can be demonstrated and scaled, the impact could be substantial.  They could establish a new class of detector readout in which the noble liquid is not merely a drift medium but part of an integrated charge-processing device.

The dissertation should not promise to realize all of these applications.  It should argue that demonstration of controlled interfacial retention and lateral charge transfer would establish a new enabling mechanism with potentially high impact for established LAr and LXe particle-detector technologies.

---

## 3. Central research question

The comprehensive proposal should center on the following question:

> Can an engineered solid surface in contact with a detector-relevant liquid noble gas support a mobile or reversibly localized population of excess electrons, rather than irreversibly trapping them, so that the charge can be stored, transferred between patterned gates, and repeatedly sensed?

The initial experimental medium should be liquid argon because of its accessibility, established detector technology, and relevance to large time-projection chambers.

Liquid xenon should remain within the scientific scope as:

- a second detector-relevant medium;
- a possible alternative if LAr interface behavior is unfavorable;
- a liquid with different electron energetics, polarizability, transport properties, temperature, density, and surface behavior;
- a natural extension of any successful mechanism.

The dissertation need not conduct a complete parallel program in both LAr and LXe.  The detailed design and first experimental program should focus on LAr.  LXe should be analyzed at the level necessary to determine whether it is a credible extension or redirection path.

The work should nevertheless be formulated as a **liquid-noble-gas interface problem**, rather than as a concept that can apply only to LAr.

---

## 4. Electron-on-helium transport as a functional precedent

### 4.1 What has been demonstrated

Sabouret et al. measured few-electron packets clocked through a microscopic CCD-like structure and reported a charge-transfer efficiency of 0.99999992 at an 800-kHz clock frequency:

- [DOI: 10.1063/1.2884693](https://doi.org/10.1063/1.2884693)
- [arXiv:0710.2909](https://arxiv.org/abs/0710.2909)

Bradbury et al. demonstrated two-dimensional transfer in 120 parallel helium-filled channels, using packets containing approximately 20 electrons down to singly occupied pixels.  No transfer failure was detected after more than one billion clock operations:

- [DOI: 10.1103/PhysRevLett.107.266803](https://doi.org/10.1103/PhysRevLett.107.266803)
- [arXiv:1107.4040](https://arxiv.org/abs/1107.4040)

Castoria et al. demonstrated selective two-dimensional shuttling through 128 transport microchannels fabricated on a CMOS control platform.  The packets ranged from several tens of electrons to the single-electron regime, and no detectable loss was found after at least one billion repeated shuttling operations:

- [DOI: 10.1103/pq6h-679f](https://doi.org/10.1103/pq6h-679f)
- [arXiv:2511.15922](https://arxiv.org/abs/2511.15922)

These results establish that:

- very small electron packets can be controlled using buried electrodes;
- CCD-style clocking can control electrons confined above a cryogenic noble-liquid surface;
- charge-transfer efficiency can be extremely high;
- storage and transport regions can be integrated using semiconductor fabrication;
- charge occupancy can be detected;
- selective two-dimensional charge routing can be implemented with CMOS control electronics.

These papers primarily establish confinement, transport, and charge detection.  Skipper-like repeated non-destructive sensing is an additional objective of the proposed LAr/LXe work and should not be presented as already demonstrated by the helium transport precedent.

### 4.2 Why the helium mechanism is different

The proposal must not imply that LAr or LXe will behave in the same way as electron-on-helium systems.

For electrons on helium:

- the electrons reside above the liquid surface;
- the electron wave function lies primarily outside the liquid;
- a surface barrier prevents penetration into the helium;
- image interaction and applied fields provide vertical confinement;
- lateral transport occurs over a clean liquid–vacuum interface;
- interaction with a trap-rich solid surface can be minimized.

For the proposed LAr/LXe device:

- electrons are generated and transported inside the dense liquid;
- they must approach a solid material;
- localized electronic states may exist at the solid surface;
- electrons may enter, attach to, or become trapped by the dielectric;
- adsorbed water, hydrocarbons, hydroxyl groups, defects, and surface termination may dominate the behavior;
- vertical confinement or reversible localization near the solid surface is not established;
- lateral mobility immediately adjacent to the solid is unknown.

The helium work therefore supplies a functional precedent and motivates the engineering objective.  The new scientific question is:

> Can comparable charge-storage and clocked-transfer functions be created inside a detector-relevant liquid noble gas adjacent to an engineered solid surface, despite the different confinement and trapping physics?

---

## 5. Established basis and central research hypotheses

The proposal should clearly separate established physical facts from the genuinely unresolved hypotheses that constitute the proposed research.

### 5.1 Established basis

The following are established facts or conventional engineering principles.

#### Bulk electron transport in LAr and LXe

Ionization electrons can be generated and drifted through sufficiently pure liquid argon and liquid xenon.  Electron mobility, diffusion, recombination, attachment, and purity requirements are extensively documented in noble-liquid-detector literature:

- [Bonivento and Terranova, arXiv:2405.01153](https://arxiv.org/abs/2405.01153)
- [Chepel and Araújo, arXiv:1207.2292](https://arxiv.org/abs/1207.2292)

The apparatus must maintain adequate purity and field uniformity, but the existence of bulk electron transport is not a research hypothesis.

#### Electrostatic control using patterned electrodes

Patterned electrodes beneath a dielectric can produce controlled electric fields and lateral potential variation.  Whether a specific geometry produces sufficiently strong and localized fields in LAr or LXe is a quantitative design and modeling question.

#### CCD-like transport of electrons above liquid helium

Small electron packets can be stored and transferred using buried gate arrays when the electrons are confined above a liquid-helium surface:

- [Sabouret et al., arXiv:0710.2909](https://arxiv.org/abs/0710.2909)
- [Bradbury et al., arXiv:1107.4040](https://arxiv.org/abs/1107.4040)
- [Castoria et al., arXiv:2511.15922](https://arxiv.org/abs/2511.15922)

The demonstrated helium mechanism is different, but the required device functions are physically meaningful.

#### Process-dependent electronic behavior of dielectric surfaces

Dielectric surfaces contain process-dependent fixed charge, defects, adsorbates, chemical terminations, and electronic trapping states.  Surface preparation and material processing must therefore be treated as experimental variables rather than incidental fabrication details.

### 5.2 Central unresolved hypotheses

The dissertation should focus on three linked hypotheses.

#### Hypothesis 1: A mobile or reversibly localized interfacial electron population can be created

Electrons driven toward a selected solid surface in LAr or LXe can occupy a mobile or reversibly localized interfacial state for long enough to be detected, transferred, and recovered.

The experiment must distinguish among:

- electrons remaining mobile in the liquid;
- electrons occupying shallow and recoverable interfacial states;
- electrons trapped irreversibly at the surface or in the dielectric;
- electrons collected by a conductor;
- electrons lost through bulk attachment.

This is the first and most fundamental hypothesis.

#### Hypothesis 2: Interfacial charge can be confined and transferred using patterned gates

If a mobile or reversibly localized interfacial population exists, patterned electrodes beneath the surface can create sufficiently strong potential variations to localize charge and move it between neighboring regions using a clocked voltage sequence.

This requires:

- an identified and quantitatively modeled vertical holding or confinement mechanism;
- calculated lateral potential barriers;
- experimentally demonstrated directional transfer;
- separation of real charge movement from capacitive feedthrough, dielectric polarization, and amplifier transients.

#### Hypothesis 3: Surface engineering can improve retention, transfer, and repeated sensing

The probability and timescale of electron trapping are controlled by material and surface properties that can be modified through deposition conditions, annealing, passivation, surface termination, and sample handling.

The materials program should establish a relationship of the form:

> surface process  
> → surface composition and electronic states  
> → charge retention and recovery  
> → lateral transfer efficiency  
> → repeated-sensing performance.

Al₂O₃ is the first controlled material to test.  It is not assumed to satisfy these hypotheses, and the experimental program must include comparison surfaces and a route to alternative materials.

### 5.3 Final combined mechanism demonstration

Repeated sensing should be treated as a final combined test rather than as a separate fundamental hypothesis.

Once charge retention and lateral transfer have been established, the student must determine whether a packet can be:

1. stored;
2. moved to a sense region;
3. measured;
4. moved away;
5. returned;
6. measured again;

while preserving a quantitatively acceptable fraction of the original charge.

Noise reduction from averaging repeated electronic samples is not, by itself, evidence of non-destructive charge measurement.  Charge conservation must be measured independently.

---

## 6. Roles of liquid argon and liquid xenon

### 6.1 Liquid argon as the initial medium

LAr is the appropriate initial medium because:

- it is comparatively accessible;
- it is widely used in particle detectors;
- extensive charge-drift and purity-control knowledge exists;
- it permits relatively rapid experimental iteration;
- relevant cryogenic and detector infrastructure is available or comparatively practical to construct.

The detailed design, modeling, first-generation apparatus, and initial surface-screening program should focus on LAr.

### 6.2 Liquid xenon as an extension or redirection path

LXe should be discussed explicitly because it is at least equally important to rare-event detector physics.  Its behavior at a solid interface may differ substantially because of differences in:

- atomic polarizability;
- liquid density;
- electron energetics;
- dielectric properties;
- electron mobility and diffusion;
- operating temperature;
- surface tension;
- interaction with candidate surface materials.

A successful result in LAr would motivate an LXe extension.  A failure in LAr would not establish that the concept is impossible in all liquid noble gases.

The proposal should therefore define:

- LAr as the initial and detailed experimental platform;
- LXe as a scientifically important extension and possible redirection path;
- liquid noble gases as the general scope of the proposed mechanism.

---

## 7. Role of the in-house ALD system

The in-house ALD system has a legitimate and essential enabling purpose:

- exclusive laboratory access;
- rapid modification of surface recipes;
- control of sample handling and exposure;
- fast feedback between deposition and charge measurements;
- repeated fabrication of material variants;
- avoidance of shared-facility scheduling delays.

This capability is particularly important because charge behavior may depend sensitively on surface termination, residual water, annealing, precursor chemistry, contamination, and the time between deposition and testing.

Constructing and qualifying the in-house ALD system is also a required rite of passage for the student.  It is intended to demonstrate the ability to design, construct, debug, qualify, and bring a research instrument into productive scientific operation.  Successful completion of this task is a mandatory condition for the present dissertation program.

At the same time:

> The ALD system is an enabling experimental tool.  Building it is not the principal scientific contribution of the dissertation.

These statements are not contradictory.  The student must demonstrate the ability to complete the tool, but completion of the tool only enables the thesis-level materials and charge-transport research to begin.

More than one year has been spent constructing the system, although it was intended to become operational within a few months.  The prolonged tool-development effort has delayed the actual scientific program and cannot be recast as the principal thesis contribution.

The proposal should devote only limited space to:

1. why an in-house system is essential;
2. what has actually been completed;
3. what measured performance has been demonstrated;
4. what remains to be qualified;
5. explicit technical acceptance criteria;
6. a firm deadline for achieving reliable and reproducible operation.

External facilities or commercially deposited samples may be used for reference measurements, comparison samples, or independent benchmarking.  They are not substitutes for the required in-house rapid-iteration capability.

Continued reactor construction cannot remain an indefinite activity.  If the student cannot promptly bring the in-house ALD system into reliable operation and use it to produce reproducible films, this dissertation research program fails.  The correct response would not be to redefine reactor construction as the dissertation contribution or to outsource the critical capability.  The proposed program would no longer be viable.

Constructing and qualifying the in-house ALD system is a required rite of passage and formal qualifying milestone for the student.

---

## 8. Al₂O₃ as an initial candidate rather than a presumed solution

Al₂O₃ is a reasonable first material to test because:

- thermal ALD using TMA and water is well established;
- thickness and processing conditions can be varied systematically;
- the film is electrically insulating;
- it can cover patterned metal electrodes;
- surface chemistry and post-treatment can be modified;
- the in-house system is initially being developed for this chemistry.

These considerations make Al₂O₃ experimentally convenient.  They do not establish that Al₂O₃ will support mobile or reversibly localized interfacial charge.

Al₂O₃ may instead prove unfavorable because of:

- fixed charge;
- border traps;
- hydroxyl-related states;
- carbon residues;
- adsorbed water;
- oxygen vacancies;
- process-dependent surface termination;
- irreversible electron trapping.

The proposal should state explicitly:

> ALD-grown Al₂O₃ is selected as the first controlled test surface, not as the material presumed to work.  Its initial purpose is to establish the experimental method and determine how a tunable oxide surface affects electron sticking, retention, recovery, and transfer.

A material-comparison program should include a manageable subset of:

- thermal SiO₂;
- externally deposited Al₂O₃ as a benchmark;
- annealed and unannealed Al₂O₃;
- dehydrated and intentionally hydroxylated Al₂O₃;
- one or more alternative ALD dielectrics;
- an inorganic or organic passivation layer;
- a deliberately trap-rich control surface;
- a conductive or semiconductive reference surface.

The dissertation-level materials contribution should be the measured relationship among fabrication process, surface properties, and interfacial charge behavior—not the successful deposition of one particular oxide.

---

## 9. Required progression of experiments

The work should proceed through a sequence of increasingly demanding demonstrations.  Each stage should test one essential part of the proposed mechanism.

### Stage 0: Physical, electrostatic, and signal model

Before fabrication of a complete CCD-like structure, the student must produce a quantitative model containing:

- device geometry;
- dielectric thickness;
- gate width and spacing;
- liquid depth;
- applied voltages;
- vertical holding field;
- lateral potential profiles;
- estimated electron trajectories;
- expected drift and diffusion;
- induced signal on the sensing electrodes;
- electrode, cable, and input capacitance;
- expected signal amplitude;
- electronics-noise requirement;
- sensitivity to fixed surface charge.

The detailed model should be developed for LAr.  A more limited parametric comparison with LXe should be included only to determine whether LXe is a credible future extension or redirection path.

The model must identify the proposed vertical confinement, holding, or reversible-localization mechanism.  Possible contributions may include:

- an externally applied holding field;
- liquid–solid energy offsets;
- image-force effects;
- dielectric polarization;
- surface dipoles;
- engineered surface termination;
- dynamically applied fields.

The model must explain why electrons should remain in the active near-surface region rather than:

- returning to the bulk liquid;
- entering or becoming irreversibly trapped in the dielectric;
- spreading laterally without confinement;
- being collected by unintended electrodes.

### Stage 1: Charge arrival, sticking, retention, and recovery

The first central experiment should answer:

> What fraction of electrons driven toward a candidate surface remains mobile, remains recoverable, becomes temporarily trapped, or is irreversibly lost?

The apparatus should include:

- a controlled electron source;
- a bulk drift region;
- a candidate surface;
- independently biased electrodes;
- a drain or collection electrode;
- time-resolved charge sensing;
- a means of accounting for injected, detected, recovered, and lost charge.

Measurements should determine:

- charge-arrival time;
- prompt collection;
- delayed charge;
- retained or recoverable charge;
- charge-decay time;
- dependence on electric field;
- dependence on liquid purity;
- dependence on material and surface preparation;
- dependence on prior charging history;
- reproducibility across devices and liquid fills.

This experiment is more central than a contact-angle measurement because it directly tests the electronic behavior required by the proposed mechanism.

### Stage 2: Two-region charge transfer

After retained or recoverable charge has been demonstrated, a two-region structure should test lateral motion.

The experiment should demonstrate:

- localization over gate A;
- transfer from A to B;
- transfer from B to A;
- reversal with a reversed clock sequence;
- charge conservation;
- dependence on clock amplitude;
- dependence on clock timing;
- separation from direct capacitive feedthrough.

Required controls include:

- operation with no injected charge;
- reversed field;
- reversed clock direction;
- intentional draining of the packet;
- a surface expected to trap strongly;
- independent measurement of clock feedthrough.

A clock-correlated transient is not sufficient.  The experiment must establish that charge has physically moved.

The first-generation retention and two-gate experiments may use simplified test structures and external electronics.  After the mechanism is established, the work must progress toward integration of the selected surface stack with a CMOS-compatible gate and sensing architecture.  This integration step is necessary to connect the fundamental study to the agreed dissertation scope of integrating CMOS circuit chips with novel materials, as defined in [DissertationWork.md](https://github.com/snr-laboratory/snrlab-microfab-trial0/blob/main/doc/DissertationWork.md).

### Stage 3: Multi-gate CCD-like transport

A three- or four-gate structure should be attempted after successful two-region transfer.

This stage should determine:

- transfer efficiency per step;
- cumulative charge loss;
- clock-frequency dependence;
- clock-amplitude dependence;
- packet-size dependence;
- lateral spreading;
- charge retention during pauses;
- reversibility;
- reproducibility across devices.

This is the direct functional analogue of the charge transport demonstrated in electron-on-helium CCD structures, although the microscopic mechanism may be different.

### Stage 4: Repeated sensing

A genuine repeated-sensing sequence should contain:

1. storage of the packet;
2. transfer to a sensing region;
3. measurement;
4. transfer away from the sensing region;
5. reset or re-referencing of the sense node;
6. return of the packet;
7. repetition.

The experiment must separately establish:

- reduction of electronic measurement noise through repeated measurement;
- conservation of the charge packet through repeated transfer and sensing operations.

A reduction of measured noise proportional to the square root of the sample count does not by itself demonstrate non-destructive charge measurement.  Ordinary repeated measurements of a static voltage can produce the same scaling.

The student must measure:

- packet charge versus sensing-cycle count;
- charge loss per cycle;
- charge retention versus elapsed time;
- signal disappearance after intentional packet removal;
- behavior with no injected charge;
- clock feedthrough and reset artifacts.

### Stage 5: Detector-generated charge

Only after controlled-source experiments are understood should radiation-generated charge be introduced.

Radiation-generated ionization adds:

- recombination;
- distributed charge production;
- event geometry;
- diffusion;
- attachment;
- drift-field nonuniformity;
- uncertain collection fraction.

It should therefore be treated as an application of a demonstrated interface mechanism rather than the first method used to search for the effect.

---

## 10. Charge generation and calibration

The statement that charge will be introduced “electrically through an injection electrode” is not sufficiently defined.

The student must specify:

- how electrons are physically generated;
- where they are generated;
- how the amount of charge is calibrated;
- how timing is controlled;
- how injection-related capacitive pickup is distinguished from actual electron motion.

A buried gate under an insulating surface does not automatically inject a known packet of electrons into the liquid.

Possible controlled sources include:

- pulsed ultraviolet photoemission from a metal photocathode;
- controlled field emission;
- photoionization;
- a calibrated ionization source;
- another independently measurable electron source.

The first source should prioritize timing control, calibration, and repeatability rather than maximum charge yield.

---

## 11. Readout electronics and noise analysis

The comprehensive proposal must include a concrete readout design.

At minimum, it should specify:

- sensing-electrode geometry;
- electrode capacitance;
- cable and feedthrough capacitance;
- expected induced charge;
- expected voltage or current signal;
- amplifier topology;
- equivalent noise charge;
- bandwidth;
- shaping or integration time;
- digitization method;
- clock feedthrough;
- reset noise;
- grounding and shielding;
- microphonic sensitivity;
- calibration method.

The proposal should include:

- an equivalent circuit;
- a first-order signal calculation;
- a noise budget;
- the expected signal-to-noise ratio for the first experiment.

It is not sufficient to state that commercial charge-sensitive amplifiers are available.  The student must show that a specific readout chain can resolve the predicted signal from the proposed geometry.

The initial experiment may use packets containing thousands or tens of thousands of electrons.  Single-electron sensitivity is a possible long-term result, not a required first milestone.

---

## 12. Required materials-science content

The materials work must directly address electronic behavior at the liquid–solid interface.

The proposal should distinguish among:

- bulk dielectric properties;
- buried metal/dielectric interfaces;
- silicon/dielectric MOS interfaces;
- the exposed dielectric surface;
- the actual liquid-noble-gas/dielectric boundary.

Conventional MOS capacitance measurements may help monitor process quality, but they do not directly characterize the interface that determines electron sticking and mobility in the liquid.

Relevant measurements may include:

- film thickness and uniformity;
- surface roughness;
- surface composition;
- hydroxyl and carbon content;
- film density;
- fixed charge;
- charge injection and relaxation;
- bias-stress response;
- leakage and breakdown;
- cryogenic charging behavior;
- dependence on air and water exposure;
- reproducibility after repeated thermal cycles.

The central scientific correlation should be:

> deposition and treatment  
> → surface structure and electronic states  
> → electron sticking and retention  
> → lateral transfer  
> → sensing performance.

### Contact angle and wetting

Contact-angle measurements may be useful supporting measurements, but their role should be limited and justified.

A low macroscopic contact angle does not establish:

- low electron-sticking probability;
- absence of nanoscopic vapor pockets;
- low trap density;
- favorable interfacial energy alignment;
- long charge-retention time;
- high charge-transfer efficiency.

Contact-angle measurements should be retained only if the student can state and test a falsifiable relationship between wetting behavior and an electronic quantity such as charge retention, leakage, recovery, or transfer efficiency.  Otherwise, contact angle should not be treated as a primary dissertation objective.

---

## 13. Quantitative stage gates

Each experimental stage must have a measurable pass, fail, or redirect criterion.

### 13.1 Minimum ALD-system qualification

The in-house ALD system must demonstrate:

- reproducible precursor delivery;
- actual saturation behavior;
- reproducible deposited thickness;
- repeatability across multiple runs;
- acceptable coupon or wafer uniformity;
- contamination control;
- reproducible surface handling;
- reliable operation over repeated deposition cycles.

Successful reactor operation, repeatable pressure traces, or isolated evidence of precursor pulsing alone are not sufficient.

### 13.2 Scientific materials results

Tool qualification is only the prerequisite.  Thesis-level materials results must include:

- controlled process variations;
- independently measured surface or film properties;
- reproducible differences among surface treatments or materials;
- cryogenic charge-retention, recovery, or relaxation measurements;
- correlation between measured surface properties and charge behavior;
- eventual correlation with lateral transfer or repeated-sensing performance.

### 13.3 Charge retention and recovery

- a delayed or recoverable charge component;
- separation from prompt capacitive pickup;
- a measured retention or decay timescale;
- a charge-balance estimate;
- reproducibility across multiple devices and liquid fills;
- controlled dependence on field or surface treatment.

### 13.4 Two-region transfer

- directional response controlled by gate sequence;
- reversal under reversed clocking;
- measured transfer fraction;
- charge accounting before and after transfer;
- explicit subtraction or control of feedthrough.

### 13.5 Multi-gate transport

- charge transfer across multiple gate boundaries;
- measured cumulative loss;
- reproducibility;
- comparison with model predictions.

### 13.6 Repeated sensing

- repeated signal from the same packet;
- measured packet conservation;
- separately characterized electronic-noise averaging;
- measured loss per sensing cycle;
- disappearance after intentional charge removal.

### 13.7 Materials comparison

- reproducible differences among candidate surfaces;
- correlation with at least one independently measured material or surface property;
- replication on multiple samples.

The comprehensive proposal should supply provisional numerical criteria.  These values may later be revised using preliminary measurements, but a milestone such as “obtain a charge measurement” is too weak and ambiguous.

---

## 14. Required controls and artifact rejection

The proposed experiments must distinguish mobile charge from:

- direct capacitive coupling;
- clock feedthrough;
- dielectric polarization;
- fixed or trapped oxide charge;
- charge stored in cables or amplifier capacitance;
- leakage current;
- microphonic signals;
- electromagnetic pickup;
- bulk impurity attachment;
- radiation-induced signals outside the intended region.

The proposal should include a control matrix containing:

- no-charge measurements;
- no-liquid measurements where applicable;
- reversed-field measurements;
- grounded-gate measurements;
- reversed clock sequences;
- intentionally trapping surfaces;
- intentionally draining electrodes;
- varied timing sequences;
- measurements on multiple devices;
- repeated liquid fills.

A single electrical transient correlated with an applied voltage sequence will not establish the proposed mechanism.

---

## 15. Failure modes and redirection paths

A strong proposal must explain what will be learned if the initial material or geometry fails.

### If Al₂O₃ strongly traps electrons

Investigate:

- modified ALD conditions;
- annealing;
- dehydration;
- surface passivation;
- alternative oxides;
- non-oxide surfaces;
- thin capping layers.

### If LAr does not support a useful near-surface state

Consider:

- LXe;
- another liquid noble gas;
- different surface termination;
- operation near a liquid–vapor interface;
- geometries that keep electrons farther from the solid;
- dynamically confined rather than static interfacial states.

### If charge can be retained but not transferred

Modify:

- dielectric thickness;
- gate spacing;
- gate geometry;
- clock voltage;
- vertical holding field;
- transfer speed.

### If transfer works but repeated sensing does not

Develop:

- a dedicated floating-gate sensor;
- a differential bridge;
- an RF sensing structure;
- separate storage and sensing regions;
- a different reset and referencing sequence.

### If no useful interfacial transport regime is found

The research must still produce quantitative limits on:

- sticking probability;
- recoverable charge fraction;
- retention time;
- field dependence;
- material dependence;
- liquid dependence.

A controlled and quantitative negative result may be scientifically valuable.  Failure to complete and qualify the in-house ALD system is not a scientific negative result; it is failure to establish the required experimental capability for this dissertation program.

---

## 16. Potential impact

The proposal should make a strong but technically disciplined argument for impact.

A successful result would demonstrate that charge in a detector-relevant liquid noble gas can be locally manipulated after bulk drift.  This would be qualitatively different from conventional collection at a passive electrode or extraction into a gas phase.

Possible long-term consequences include:

- CCD-like liquid-noble-gas pixel arrays;
- charge routing before amplification;
- local charge storage and accumulation;
- repeated sensing of small ionization signals;
- improved discrimination between charge signals and readout noise;
- charge-domain multiplexing;
- sparse readout;
- lower detector thresholds;
- eventual few-electron or electron-counting operation;
- new readout architectures for LAr and LXe time-projection chambers;
- direct integration between noble-liquid charge and CMOS electronics.

These possibilities are significant because LAr and LXe are already mature, scalable detector media.  A successful charge-manipulation interface could be incorporated into an established detector ecosystem rather than requiring development of an entirely new detection medium.

The first dissertation objective is not to deliver all of these applications.  It is to establish whether the physical mechanism required to enable them exists and can be engineered.

---

## 17. Expected dissertation-level contributions

A successful dissertation could include:

1. A quantitative model of near-interface charge control in liquid noble gases.

2. Systematic measurements of electron sticking, retention, and recovery at selected LAr/solid or LXe/solid interfaces.

3. Demonstration or quantitative exclusion of lateral gate-controlled charge transfer.

4. Measurement of transfer efficiency and charge-loss mechanisms.

5. Demonstration or quantitative assessment of repeated sensing.

6. Identification of material and surface properties that govern interfacial charge behavior.

7. A rapid-iteration platform for screening candidate liquid-noble-gas interface materials.

8. A credible route from the mechanism demonstration to a particle-detector readout architecture.

The ALD reactor may be documented as enabling instrumentation and as a required demonstration of the student’s ability to build and qualify a research tool.  It cannot replace the scientific contributions listed above.

---

## 18. Required changes to the current comprehensive document

The current document should be substantially rewritten rather than incrementally edited.

The revision should:

- adopt the broader liquid-noble-gas scientific framing;
- retain LAr as the initial and detailed experimental medium;
- identify LXe as an important extension and redirection path;
- introduce electron-on-helium CCD work as the closest functional precedent;
- explain explicitly why the helium confinement mechanism is different;
- state that the objective is to reproduce analogous functions, not an identical microscopic state;
- explain the importance of LAr and LXe to particle and rare-event detectors;
- make the potential impact clear;
- remove the ALD system from the proposal title;
- state that Al₂O₃ is the first candidate surface rather than the presumed solution;
- separate established facts from the three central unresolved hypotheses;
- add quantitative electrostatic and signal modeling;
- define a controlled electron-generation and calibration method;
- define charge-retention and transfer measurements;
- add a complete readout and noise design;
- include control experiments and artifact rejection;
- replace expected plots presented as preliminary results with actual measurements;
- define quantitative stage gates;
- define alternative materials and redirection paths;
- state clearly that qualification of the in-house ALD system is a mandatory condition for the proposed dissertation program;
- explain how eventual CMOS-compatible integration connects the mechanism study to the agreed dissertation scope.

---

## 19. Recommended revised proposal structure

1. **Abstract**
2. **Scientific vision: charge manipulation in liquid noble gases**
3. **Importance of LAr and LXe particle detectors**
4. **Electron transport in liquid noble gases**
5. **Electron-on-helium CCDs as a functional precedent**
6. **Difference between the helium mechanism and the proposed LAr/LXe interface**
7. **Central research question**
8. **Established physical basis**
9. **Central unresolved hypotheses**
10. **Candidate surface materials**
11. **Al₂O₃ as the initial test material**
12. **Role, mandatory qualification, and present status of the in-house ALD system**
13. **Electrostatic and interfacial model**
14. **Controlled electron-generation and calibration method**
15. **Stage 1: charge arrival, sticking, retention, and recovery**
16. **Stage 2: two-region transfer**
17. **Stage 3: multi-gate CCD-like transport**
18. **Stage 4: repeated sensing**
19. **Stage 5: detector-generated charge**
20. **LXe extension or redirection path**
21. **Readout electronics and noise**
22. **Materials characterization**
23. **Controls and systematic errors**
24. **Quantitative stage gates**
25. **Failure modes and redirection paths**
26. **Actual preliminary results**
27. **Potential detector impact**
28. **Timeline**
29. **Relationship to the agreed dissertation scope**
30. **References**

---

## 20. Key literature

### Electron-on-helium charge transport

1. G. Sabouret, F. R. Bradbury, S. Shankar, and S. A. Lyon, “Signal and Charge Transfer Efficiency of Few Electrons Clocked on Microscopic Superfluid Helium Channels,” *Applied Physics Letters* **92**, 082104 (2008).  
   [DOI: 10.1063/1.2884693](https://doi.org/10.1063/1.2884693)  
   [arXiv:0710.2909](https://arxiv.org/abs/0710.2909)

2. F. R. Bradbury, M. Takita, T. M. Gurrieri, K. J. Wilkel, K. Eng, M. S. Carroll, and S. A. Lyon, “Efficient Clocked Electron Transfer on Superfluid Helium,” *Physical Review Letters* **107**, 266803 (2011).  
   [DOI: 10.1103/PhysRevLett.107.266803](https://doi.org/10.1103/PhysRevLett.107.266803)  
   [arXiv:1107.4040](https://arxiv.org/abs/1107.4040)

3. K. E. Castoria, H. Byeon, N. R. Beysengulov, E. O. Glen, M. Sammon, J. Pollanen, D. G. Rees, and S. A. Lyon, “Selective Shuttling of Electrons on Helium Using a CMOS Control Platform,” *Physical Review Applied* **26**, 014005 (2026).  
   [DOI: 10.1103/pq6h-679f](https://doi.org/10.1103/pq6h-679f)  
   [arXiv:2511.15922](https://arxiv.org/abs/2511.15922)

### Liquid-noble-gas detector physics

4. W. M. Bonivento and F. Terranova, “The Science and Technology of Liquid Argon Detectors,” *Reviews of Modern Physics* **96**, 045001 (2024).  
   [DOI: 10.1103/RevModPhys.96.045001](https://doi.org/10.1103/RevModPhys.96.045001)  
   [arXiv:2405.01153](https://arxiv.org/abs/2405.01153)

5. V. Chepel and H. Araújo, “Liquid Noble Gas Detectors for Low Energy Particle Physics,” *Journal of Instrumentation* **8**, R04001 (2013).  
   [DOI: 10.1088/1748-0221/8/04/R04001](https://doi.org/10.1088/1748-0221/8/04/R04001)  
   [arXiv:1207.2292](https://arxiv.org/abs/1207.2292)

The student should add focused literature addressing:

- excess-electron energy states in liquid argon and xenon;
- electron mobility and diffusion;
- electron attachment and purity;
- dielectric charging in noble-liquid detectors;
- electron trapping at cryogenic solid surfaces;
- liquid-noble-gas/oxide interfacial electronic structure;
- effects of surface termination and passivation;
- methods for controlled electron generation in noble liquids.

These references should be used to distinguish established quantities from genuine gaps, not merely to provide general introductory background.

---

## 21. Required revisions before resubmission

Before the comprehensive-exam proposal is considered ready for submission, the following work is required:

1. State the central research question and the three unresolved hypotheses clearly.

2. Add quantitative electrostatic models of the proposed one-gate and two-gate structures, including the vertical holding or reversible-localization mechanism and lateral potential profiles.

3. Define a physically credible electron-generation and charge-calibration method.

4. Provide an equivalent circuit, expected signal calculation, and first-order electronics-noise budget.

5. Define the first charge-retention and recovery experiment, including controls that distinguish mobile or reversibly localized charge from dielectric trapping, capacitive pickup, and bulk attachment.

6. Present actual films produced by the in-house ALD system, together with measured thickness, repeatability, and material-property data.  External deposition may be used for benchmarking but does not satisfy this requirement.  If the in-house system cannot promptly produce reproducible films, the present dissertation research program cannot proceed.

7. Replace expected plots presented as preliminary results with actual data, or label them explicitly as proposed measurements.

8. Present a material-comparison plan in which Al₂O₃ is the initial candidate rather than the presumed successful material.

9. Define quantitative pass, fail, and redirect criteria for each experimental stage.

10. Explain how the proposed work progresses from simplified mechanism-demonstration structures toward a CMOS-compatible gate and sensing architecture, consistent with the agreed dissertation scope in [DissertationWork.md](https://github.com/snr-laboratory/snrlab-microfab-trial0/blob/main/doc/DissertationWork.md).
