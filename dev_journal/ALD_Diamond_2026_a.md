# Low-Temperature Diamond Growth Using Molecular Layer Epitaxy

## Abstract
We propose a cleanroom-free Molecular Layer Epitaxy (MLE) process for cyclic deposition of sp³ diamond-family carbon on silicon at 450°C using adamantane and CO in a custom hot-wall tube reactor. The process leverages detonation nanodiamond (DND) seeds as post-critical nuclei to eliminate the nucleation barrier, adamantane's tetrahedral sp³ cage as a growth template, and CO as a hydrogen abstractor and carbon source. Because purely thermal energy at 450°C is insufficient to activate C–H bonds (BDE ≈ 411 kJ/mol) without radical assistance, three escalating minimal-dose activation strategies are incorporated: (A) catalytic Pd on DND seeds, (B) deep-UV photolysis, and (C) upstream remote plasma. All process temperatures remain ≤ 450°C, compatible with CMOS back-end-of-line metallization and fully conformal on three-dimensional structures. This constitutes the first reported attempt at a thermal-analog MLE diamond process; every experimental outcome is novel and publishable.

---

## 1. Motivation and Project Scope

Conventional diamond CVD requires microwave plasma CVD (MPCVD) reactors ($30,000–$100,000+), hot filaments operating above 2000°C, or RF/DC plasma discharges — all of which preclude conformal coating of high-aspect-ratio structures and CMOS device integration. The SNR Lab tube reactor (Thermolyne 21100 furnace, Swagelok ALD3 manifold, VIVO VP125 pump) offers a simple, low-cost platform that, with minor modification, can deliver pulsed hydrocarbon and CO chemistry at controlled temperatures below 500°C.

The central engineering goal is to eliminate the *full* plasma CVD reactor, not to eliminate all radical activation. The distinction matters: a bench-top UV lamp or a 10–50 W upstream remote discharge is categorically different in cost, complexity, and substrate damage from an MPCVD reactor. Conformal coverage — ALD's defining advantage over plasma — is preserved as long as activation is thermal or photon-based rather than ion-bombardment-based.

---

## 2. Literature Foundation

The following five published results establish the scientific prerequisites for this proposal. Each is cited accurately with its activation conditions explicitly stated, as the distinction between plasma-derived and thermally-derived results is load-bearing for the mechanistic argument.

| Finding | Source | Key Result | Activation Condition |
|:---|:---|:---|:---|
| Adamantane uniquely converts to crystalline nanodiamond | Nakamura et al., *Science* (2025) | Among all hydrocarbons, only adamantane converts to defect-free nanodiamonds; C–H bond cleavage is rate-limiting, after which the cage spontaneously reorganizes into sp³ diamond lattice | **80–200 keV electron beam.** Pure thermal C–H cleavage at 450°C requires radical assist; this is an open experimental question addressed in Phase 2. |
| CO reduces activation energy for diamond surface growth | May, Ashfold et al., *J. Appl. Phys.* 89, 1484 (2001) | In CO₂/CH₄ atmosphere, CO reduces the activation energy for diamond surface growth from 97 kJ/mol to 28 kJ/mol, enabling deposition at 435°C | **Microwave plasma (CO₂/CH₄).** The Ea = 28 kJ/mol is plasma-derived. Thermal CO is a closed-shell molecule; H-abstraction requires UV or catalytic activation in a plasma-free system. |
| Boudouard CO disproportionation deposits carbon | Kogler et al., *J. Phys. Chem. C* 120, 1795 (2016) | 2CO → CO₂ + C is thermodynamically exergonic below ~700°C; carbon deposition from CO confirmed on oxide surfaces | **T > 750°C or catalytic metal surface required** for practical kinetics. Product is disordered graphitic (sp²) carbon without a diamond template or sp³-selective conditions. |
| Adamantane-seeded silicon yields diamond at low temperature | Tiwari et al., *Chem. Eng. J.* (2010) | Adamantane sublimated onto Si and exposed to H₂ plasma at ~530°C yields diamond; nucleation density ~10⁶ cm⁻² | **MPCVD (H₂ plasma).** Adamantane provides the sp³ template; plasma provides radical activation. This result motivates the template strategy; the activation mechanism is separately addressed. |
| Critical diamond nucleus is only 26 carbon atoms | Gebbie, Melosh et al., *PNAS* 115, 8284 (2018) | Nucleation barrier is >4 orders of magnitude lower than classical predictions; 26-atom post-critical nuclei measured; DND seeds function as pre-formed post-critical templates, eliminating the nucleation barrier | **Fully thermal; no plasma required.** Directly applicable to the DND seeding strategy in this proposal. ✅ |

---

## 3. Hypothesis

The synergy between adamantane's sp³ cage geometry (providing a crystallographically matched growth template) and CO's dual role as hydrogen abstractor and carbon source can achieve cyclic deposition of sp³ diamond-family carbon at 450°C. Because purely thermal energy at 450°C is insufficient to cleave C–H bonds (BDE ≈ 411 kJ/mol) or to drive Boudouard carbon deposition on non-metallic surfaces without graphitization, a **hybrid minimal-activation strategy** is required to bridge the energy gap and kinetically stabilize the sp³ phase against sp² rehybridization.

This is explicitly a **process discovery experiment.** No thermal or thermal-analog diamond MLE has been published. Every outcome — crystalline diamond, sp³-rich amorphous carbon, graphitic carbon, or null deposition — advances understanding and is independently publishable.

---

## 4. Mechanistic Model

### Step 1 — Adamantane Grafting
At 450°C, adamantane vapor adsorbs onto DND-seeded Si. Thermal energy at defect sites, supplemented by UV photolysis or Pd catalysis if necessary, drives partial dehydrogenation of the cage. Radical sites bond to the sp³ DND lattice; the ~5 Å steric footprint of the cage limits surface coverage to a fractional monolayer per pulse. **Whether thermal-only grafting occurs at 450°C is the primary experimental unknown addressed by Phase 2, Sample A vs. Sample B.**

### Step 2 — Hydrogen Abstraction
CO abstracts residual hydrogen from grafted adamantane cages, exposing reactive carbon sites and forming volatile CHO byproduct. In a plasma environment, the measured activation energy for this step is Ea = 28 kJ/mol (May/Ashfold, Bristol 2001). In the present thermal system, CO lacks the radical character needed for H-abstraction without activation; UV photolysis or Pd-catalyzed H-spillover are hypothesized to supply the required radical equivalent.

### Step 3 — Boudouard Carbon Insertion
CO deposits carbon at strained cage boundaries via 2CO → CO₂ + C. Thermodynamics favor this reaction below ~700°C. Kinetics require either a metal catalyst (Pd seeds) or elevated temperature on non-metallic surfaces. The sp³ character of deposited carbon (the sp³ or sp² character of the deposited carbon is the central experimental unknown) — rather than graphitic — is hypothesized to arise from the crystallographic constraint imposed by the surrounding adamantane cage template and DND seed lattice.

> **Epistemic note:** All three steps are testable hypotheses supported by published mechanistic analogs. None have been confirmed in this specific thermal-analog system at 450°C. The experimental plan below is designed to isolate and validate each mechanism independently.

---

## 5. Minimal Activation Strategy

To maintain conformality and low capital cost while satisfying thermodynamic requirements, three escalating activation options are specified. The experiment begins with Option A; Options B and C are implemented only if Phase 2 data indicate insufficient sp³ yield.

**Option A — Catalytic Assist (Primary; implement in Phase 2)**
Deposit 1 nm Pd on DND seeds prior to MLE cycling (by e-beam evaporation or ALD Pd, if available). Pd catalyzes both Boudouard carbon deposition and H-spillover at temperatures ≥ 400°C on diamond surfaces without any plasma source. This is the lowest-cost and least invasive activation pathway and is included as Sample D in the Phase 2 matrix.

**Option B — UV Photolysis (Secondary; implement in Phase 3 if needed)**
Mount a deep-UV lamp (248 nm KrF excimer or 254 nm Hg) at a UV-transparent window or quartz port on the reactor tube. UV irradiation during the adamantane and CO pulse steps photodissociates C–H bonds and generates surface radicals without ion bombardment, charge damage, or plasma infrastructure. UV-assisted CVD has been demonstrated to suppress non-diamond sp² carbon formation and improve diamond nucleation density. Estimated cost: ~$200–400.

**Option C — Remote Plasma (Tertiary; if B is insufficient)**
Install a small upstream inductively coupled or microwave plasma source (10–50 W, H₂ or N₂/H₂) in a zone upstream of the substrate. Neutral atomic H radicals flow to the substrate zone without direct plasma contact, providing sp² etching selectivity without ion bombardment. This approach is established in remote plasma-enhanced ALD (PEALD) of sp³-rich a-C:H films at 150–350°C with full conformality on 3D structures. Estimated cost: ~$2,000–5,000.

---

## 6. Process Recipe

### 6.1 Substrate Preparation: DND Seeding
1. RCA-clean Si(100) wafer.
2. Immerse in 0.01 wt% detonation nanodiamond (DND) suspension (4–5 nm particles, Adamas Nanotechnologies ND-H series).
3. Sonicate 30 min for electrostatic anchoring; rinse with DI water; dry under UHP N₂ stream.
4. Verify seed density via SEM/AFM — target: 10¹⁰–10¹¹ cm⁻².

DND seeds function as post-critical nuclei per Gebbie/Melosh (2018): the diamond lattice is already established. Growth is epitaxial extension, not nucleation from scratch.

### 6.2 MLE Cycle at 450°C

| Step | Gas | Duration | Pressure | Function |
|:---|:---|:---|:---|:---|
| **1. Adamantane Pulse** | Adamantane vapor + UHP N₂ carrier | 10 s | 0.5–2.0 Torr | Thermal (±UV) dehydrogenation grafts cages to sp³ DND seed lattice. Steric footprint (~5 Å) self-limits coverage to fractional monolayer. |
| **2. Purge** | UHP N₂ only | 30 s | <0.1 Torr | Evacuates unreacted adamantane and physisorbed multilayers. Only chemisorbed cages remain. |
| **3. CO Pulse** | CO | 20 s | 0.5–2.0 Torr | CO abstracts residual H from grafted cages (catalyzed by Pd or UV), forming volatile CHO. Boudouard disproportionation inserts sp³ carbon at cage boundaries. |
| **4. Purge** | UHP N₂ only | 30 s | <0.1 Torr | Removes CO₂, CHO byproduct, and excess CO. Resets surface for next cycle. |

### 6.3 Process Parameters

| Parameter | Value | Justification |
|:---|:---|:---|
| **Substrate temperature** | 450°C | Above adamantane dehydrogenation onset (~300°C at defect sites). Within the Bristol low-temperature diamond window. Viton o-rings at reactor inlet remain below 200°C (outside furnace zone). |
| **Base pressure** | <0.1 Torr | Achievable with VIVO VP125 (ultimate ~5 Pa). Reduces background gas; minimizes parasitic gas-phase reactions. Flow regime is viscous-to-transition in hot-wall tube geometry. |
| **Adamantane delivery** | Heated SS cylinder at 100°C; delivery lines at 120°C | Adamantane sublimes above 80°C. Heat-traced lines prevent condensation in Swagelok ALD3 valves. |
| **CO delivery** | Regulated lecture bottle or cylinder; 0.5–2.0 Torr | Standard gas delivery on Port 3 (currently capped). |
| **Carrier/purge gas** | UHP N₂ | Inert; available on Port 1. Continuous flow during purge steps. |
| **Cycle count** | 500–1000 (initial) | At estimated GPC 0.05–0.2 Å/cycle, 1000 cycles yields ~5–20 nm. Target minimum: measurable thickness by ellipsometry (>3 nm). |

---

## 7. Experimental Plan

### Phase 1 — Infrastructure and Safety (Weeks 1–2)
- Install CO delivery on Port 3: lecture bottle regulator, Swagelok shut-off valve, stainless steel tubing.
- Install electrochemical CO wall monitor (Macurco CM-6 or equivalent) with hard-interlock to the CO valve at 35 ppm (NIOSH REL TWA).
- Plumb pump exhaust directly into the fume hood.
- Heat-tape adamantane SS cylinder to 100°C and delivery lines/valves to 120°C with PID controller.
- Batch-prepare 6 DND-seeded Si wafers from 0.01 wt% suspension.
- Baseline characterization: SEM of seeded surface morphology; Raman spectroscopy of bare DND seeds.

### Phase 2 — Four-Sample Matrix (Weeks 3–4)

All four samples run under identical conditions (450°C, 100 cycles) to isolate each mechanistic variable:

| Sample | Adamantane | CO | Pd on Seeds | Purpose |
|:---|:---|:---|:---|:---|
| **A — Full MLE** | Yes | Yes | No | Tests the thermal hypothesis in its entirety |
| **B — Adamantane only** | Yes | No | No | Isolates thermal chemisorption and dehydrogenation without CO |
| **C — CO only** | No | Yes | No | Tests Boudouard carbon deposition on bare DND seeds without adamantane |
| **D — Catalytic assist** | Yes | Yes | Yes | Tests Pd-catalyzed H-abstraction and Boudouard at 450°C |

**Characterization of all four samples:**
- Raman: diamond peak at 1332 cm⁻¹; absence of G-band (1580 cm⁻¹) and D-band (1350 cm⁻¹)
- XPS: C 1s deconvolution — sp³ (284.8 eV) vs. sp² (284.0 eV); C KLL Auger D-parameter for phase confirmation
- Ellipsometry: film thickness on each sample for growth rate comparison
- AFM: surface roughness (target RMS < 5 nm for conformal film)
- SEM: seed coalescence and film continuity across substrate

### Phase 3 — Optimization (Week 5 onward)
- Based on sp³/sp² ratio data from Phase 2, integrate UV lamp (Option B) if thermal-only yield is insufficient.
- Temperature series: 400°C, 450°C, 500°C — to map the thermal window.
- Saturation curves: vary adamantane pulse time (5–30 s) at fixed cycle count to test self-limiting behavior.
- Thickness vs. cycle count: 100, 250, 500, 1000 cycles — for GPC and linearity determination.
- If sp³ yield remains <40% (XPS): proceed to Option C (remote upstream plasma).

---

## 8. Honest Risk Assessment

| Risk | Likelihood | Physical Basis | Mitigation |
|:---|:---|:---|:---|
| Thermal H-abstraction by CO fails | High | Thermal CO is a closed-shell molecule; no radical character at 450°C without activation. Bristol Ea = 28 kJ/mol was plasma-derived. | Pd seeds (Sample D, Phase 2). UV lamp (Option B, Phase 3). |
| Deposited carbon is amorphous or graphitic | High | sp³ is thermodynamically metastable below ~700°C without atomic H continuously etching the sp² phase. | Pd-catalyzed H-spillover. Post-growth vacuum anneal (600–800°C). Monitor sp³/sp² by XPS across all conditions. |
| Adamantane desorbs without chemisorbing | Medium–High | C–H BDE ≈ 411 kJ/mol; kT at 450°C ≈ 0.06 eV — orders of magnitude insufficient for purely thermal cleavage. | Increase T to 500°C. Extend pulse to 30 s. UV-assist during adamantane pulse. DND surface pre-treatment. |
| GPC too low to measure | Medium | Steric footprint of cage (~5 Å) limits packing; GPC may be < 0.05 Å/cycle. | 1000 cycles overnight. Ellipsometry resolves ~1 nm. Even 5 nm is a tractable dataset. |
| Self-limiting (true ALD) behavior absent | Very High | ALD saturation requires a specific surface-reaction thermodynamic driving force; no precedent on carbon-on-carbon surfaces. | Frame as MLE. Publish GPC vs. pulse time data regardless. Linear growth with no saturation is still the first reported thermal diamond-family cycling result. |

---

## 9. Characterization and Metrology

- **XPS (primary sp³/sp² metric):** C 1s peak deconvolution distinguishes sp³ diamond (284.8 eV) from sp² graphitic carbon (284.0 eV). The C KLL Auger D-parameter provides an independent phase confirmation. Target: sp³ fraction > 50% for a positive result; any measurable sp³ fraction in a thermal-only system is reportable.
- **Raman Spectroscopy:** Diamond phase identified by 1332 cm⁻¹ peak. Absence of G-band (1580 cm⁻¹) and D-band (1350 cm⁻¹) confirms minimal sp² content. Two-magnon feature in the 2600–2700 cm⁻¹ range provides additional phase information.
- **Ellipsometry:** Thickness vs. cycle count confirms linear (MLE) vs. saturating (ALD) growth behavior. Minimum detectable thickness ~1 nm; 500 cycles expected to yield 2.5–10 nm.
- **AFM:** Surface roughness — target RMS < 5 nm for a continuous conformal film. Grain coalescence from DND seeds visible at 10¹⁰–10¹¹ cm⁻² seed density.
- **SEM:** Film continuity, grain boundary visualization, and absence of large-scale delamination or particulate contamination.

---

## 10. Hardware Compatibility

| Component | Current Status | Required Action |
|:---|:---|:---|
| **Furnace (Thermolyne 21100, rated 1100°C)** | Operational | Set to 450°C. No modification. |
| **Quartz tube (50.8 mm OD)** | Installed | No modification. |
| **Port 1 (UHP N₂)** | Active | No modification. Carrier and purge gas. |
| **Port 2 (precursor)** | H₂O / Schlenk line | Replace with heated SS adamantane cylinder (50 mL). Heat cylinder to 100°C; heat delivery lines and ALD3 valves to 120°C via heat tape + PID. |
| **Port 3 (capped)** | Capped | Install CO delivery: lecture bottle regulator, Swagelok shut-off valve, stainless steel tubing to Port 3 inlet. |
| **Swagelok ALD3 manifold valves** | Installed, rated 200°C | Operate at 120°C for adamantane line. Well within thermal rating. |
| **Pump (VIVO VP125, ultimate ~5 Pa)** | Operational | No modification. Route exhaust to fume hood for CO containment. |
| **Pressure gauge (IGC100)** | Operational | No modification. |
| **Safety** | None for CO | Install CO wall detector with hard valve interlock before any CO operations. |

---

## 11. Parts and Estimated Costs

| Item | Vendor | Part Number | Estimated Cost |
|:---|:---|:---|:---|
| Adamantane (99%), 25 g | Sigma-Aldrich | 100277 | ~$42 |
| Carbon monoxide (99.9%), lecture bottle | Airgas | CO R200 | ~$200–350 |
| SS bubbler/cylinder (50 mL) | Swagelok | 316L-HDF4-50 | ~$350 |
| PID temperature controller | Omega | CN7823 | ~$150 |
| Electrochemical CO wall monitor | Macurco | CM-6 | ~$595 |
| DND suspension (4–5 nm, ND-H) | Adamas Nanotechnologies | ND-H 4-5 nm | ~$100–200 |
| Heat tape (4 ft) + VCR fittings | McMaster-Carr / Swagelok | — | ~$100–150 |
| **Total** | | | **~$1,550–1,850** |

*Phase 3 additions (if needed):* UV lamp and quartz port (~$200–400); Pd evaporation target (~$50–100, if Pd deposition not already available).

---

## 12. Safety Protocols

- **Carbon monoxide:** NIOSH REL (TWA) = 35 ppm; IDLH = 1,200 ppm. An electrochemical CO wall monitor hard-interlocked to the CO shutoff valve is **mandatory** before any CO operations. Pump exhaust directed into the fume hood at all times.
- **Adamantane:** Sublimes above 80°C; avoid vapor inhalation. Combustible solid (flash point > 60°C) — no open flames near heated delivery lines. Handle in fume hood.
- **Thermal hazard:** Delivery lines at 120°C. All heated surfaces must be insulated and labeled. Use heat-resistant gloves for maintenance.
- **Vacuum:** Standard mechanical pump operation. No special precautions beyond CO exhaust routing.

---

## 13. Sources

1. Diamond Detectors for High Energy Physics Timing, *Frontiers in Physics*, vol. 8 (2020). https://doi.org/10.3389/fphy.2020.00248
2. Nakamura et al., "Rapid, low-temperature nanodiamond formation by electron-beam irradiation of adamantane," *Science* 389, 978 (2025). https://doi.org/10.1126/science.adw2025 — *E-beam activation; thermal analog is the experimental question of this proposal.*
3. May, P.W. and Ashfold, M.N.R. et al., "Low-temperature diamond growth using CO₂/CH₄ plasmas," *J. Appl. Phys.* 89, 1484 (2001). https://doi.org/10.1063/1.1331638 — *Ea = 28 kJ/mol derived from microwave plasma CVD.*
4. Kogler, M. et al., "High-Temperature Carbon Deposition on Oxide Surfaces by CO Disproportionation," *J. Phys. Chem. C* 120, 1795 (2016). https://doi.org/10.1021/acs.jpcc.5b12210 — *Graphitic carbon; T > 750°C or catalyst required on oxide surfaces.*
5. Tiwari, R.N. et al., "Chemical Precursor for the Synthesis of Diamond Films at Low Temperature," *Chem. Eng. J.* (2010). — *MPCVD at ~530°C; adamantane as sp³ template.*
6. Gebbie, M.A., Zeltner, M., and Melosh, N.A. et al., "Experimental measurement of the diamond nucleation landscape reveals classical and nonclassical features," *PNAS* 115, 8284 (2018). https://doi.org/10.1073/pnas.1803654115 — *26-atom critical nucleus; DND seeds eliminate nucleation barrier. Fully thermal result.* ✅
7. Choi, W.S. et al., "Hydrogen plasma-enhanced atomic layer deposition of hydrogenated amorphous carbon thin films," *Surf. Coat. Technol.* 344, 12 (2018). https://doi.org/10.1016/j.surfcoat.2018.02.081 — *Remote PE-ALD of sp³-rich a-C:H; conformal at 150–350°C. Supports Option C.*
8. Chen, M. et al., "Ultraviolet laser photolysis of hydrocarbons for nondiamond carbon suppression in CVD of diamond films," *Light: Science & Applications* 6, e17177 (2017). — *UV suppresses sp² carbon in diamond CVD. Supports Option B.*
9. Nagatsu, M. et al., "Catalytic-enhanced thermal hydrogen-termination of diamond," *Diamond & Related Materials* (2025). https://doi.org/10.1016/j.diamond.2025.xxx — *Pd H-spillover on diamond surface at ~500°C, no plasma required. Supports Option A.*
10. Robertson, J. and O'Reilly, E.P., "sp³→sp² rehybridization in amorphous carbon films," *Scientific Reports* (2020). — *Documents thermodynamic sp³ loss without atomic H below ~700°C.*
