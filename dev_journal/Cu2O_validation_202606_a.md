# Milestone summary for Cu2O tool validation 

Summary for runs A-K for the oxidation of bare Cu to assess tool workings, reproducibility, and safety. With emphasis on run J and K. As well as hardware and software modifications that were made to the system after diagnosing unsafe and unintended gas flow paths.

---

## Objective 
- Test system under a less hazardous precursor
    - Show control and selectivity of Cu oxidation phases: CuO vs Cu2O
        - in order to get CuO we need some air or oxygen source. With water alone, the CuO phase does not seem achievable without going to very high temperatures, which would then render the pulsing study redundant as thermal oxidation at such high temperatures would be the dominant factor.
        - achieving select thicknesses and matching with literature for Cu2O as a function of thickness and color is achievable.
        - I think there are pros and cons of installing an air source to the TMA line to fire that valve and see how it performs and to study its behavior.
            - Pros:
                - Air source tank is cheap, just need to buy fittings to install to TMA line
                - we can test the ALD3 valve and check for any hazardous or leaks present in that line
                    - awaiting a secondary valve to install for needed safety for incoming or outgoing gasses on the TMA line; then plan for air source 
            - Cons:
                - can contaminate the lines; of course we could just flush with N2 and even bake out these lines to ensure nothing is sticking (H2O) and remove any residual gasses.
                - We know the behavior and are able to control a valve exactly similar to it, but this is its own part and it could have deviations that we are not aware of (probably best to do this setup, but not invest in optimizing films. ie if we get some black and mixed oxides of Cu on initial recipe, that's fine; just repeat and ensure the pressure and temperature logging behavior is similar and there are no signs or indications of leaks or unintended gas flow paths.
                               
- Validate the homemade pulsed-vapor precursor-delivery system: tool function, timing, logging, and
safety.
    - Water-vapor-pulsed thermal oxidation of Cu → Cu2O is used as a **safe, visible
reporter chemistry**: a process we can run without hazard, whose oxide color reports thickness, while
we exercise the same valves, timing, purge/evac sequence, and data pipeline that the TMA/H2O process will
later use.
    - characterize the tool's failure modes and limits. This is a tool-and-process validation, not a claim of self-limiting ALD growth for Cu2O (the Cu–water oxidation is not self-limiting).
 
---- 
## Methods 

### Main hardware
- Barnstead/Thermolyne 21100 tube furnace (1350 W; 120 V @ 11.25 A unit, rated to 1100 °C manual control).
- Arduino Uno + 8-channel active-LOW relays driving Swagelok ALD3 valves + electronic solenoid valves.
- SRS IGC100 ion gauge with Granville-Phillips Convectron Gauge (275185)
- Lakeshore 331 dual-RTD logging (RTD B sample-proximate; reads ~24 °C below setpoint by position; can have different offset at different temperatures)
- VIVOHOME 110V 1/4 HP 3.5 CFM Single Stage Rotary Vane Air Vacuum Pump (5Pa ultimate vac = 0.03torr -> best achieved is ~600-700mTorr).
- Inkbird ITC-106 PID + SSR-40DA (furnace setpoint).

### Gas flow (revised)
![caption](../doc/assets/Cu2O_validation_202606_a/gas_flow_a.drawio-2.svg)

### Electrical (revised)
![caption](../doc/assets/Cu2O_validation_202606_a/electrical_a.drawio.svg)

### Firmware
- State machine with a data-driven recipe struct AldTimingRecipe
    - {tma_pulse_ms, h2o_pulse_ms, purge_gap/dwell_ms, purge_on_ms, purge_evacuate_ms, cycles}.
- For the Cu2O runs TMA (D3) is locked OFF (tma_pulse_ms = 0).
- One cycle: K8 house-main lead (100 ms) → H2O dose (D4 + D8 Schlenk together) → dwell → N2 purge (D5) → evacuate → K8 lag (100 ms).
- Fail-safe: safeAll() closes every valve + main on boot, E-stop, idle, and run-end; E-stop latches. (one cycle, drawn to the Run J/K recipe with data collection underneath).
  
![caption](../doc/assets/Cu2O_validation_202606_a/runJK_timing_vs_data.png)

- Run J/K recipe (identical for both): 250 °C setpoint, 500 ms H2O dose, 3 s dwell, 5 s purge, 3 s evac, 400 cycles; net ~ 11.7 s/cycle, ~ 78 min recipe; measured 11.54 s, ~77 min).
- Logging. 20 Hz (50 ms) pressure + dual-RTD.
    - Rate chosen against a measured IGC100 benchmark ('GDAT?' protocol: 19.96 Hz sustained; single-read 27 ms → ~36 Hz ceiling). 20 Hz sits below that ceiling so every sample is a genuine reading and no pulse feature is missed.
- Analysis (fully traceable). pandas → isolate recipe window (P 1–6 Torr oscillating AND RTD B > 200 °C) → scipy.signal.find_peaks (≥7 s spacing, prominence 0.3 Torr) for peaks and inverted troughs → per-pulse rise = peak − local pre-pulse minimum (prior 2.5 s) → drop first/last 3 cycles.
- Identical parameters for J and K. Scripts: verify_reproducibility.py, plot_two_metrics.py,
n2_diag.py, n2_verify.py, plot_n2_spike.py, plot_timing_runJK.py.

----

## Findings
Failure mode found and fixed. Water back-streaming (not a leak).

- When N2-valve opens after pump-down (furnace OFF), pre-fix runs showed a large pressure spike from a ~1 Torr floor.
- Root cause: water vapor from the Schlenk reservoir migrating back through the manifold. Confirmed by the dry Run A control (empty Schlenk flask, no DI water → no spike, rise ~ 2.4 Torr). After the gas-path correction (Run H onward) the same N2-open event is a stable ~12–14 Torr (which should be the N2 gas being allowed to flow in; ~12-14torr).

|Group                     |Runs     |N2-open spike                       |
|--------------------------|---------|------------------------------------|
|Dry control               |A        |	≈ 2.4 Torr rise (no water present)|
|Pre-fix (water + old path)|B,C,D,E,F|	≈ 48–90 Torr (mean ~ 80)          |
|Post-fix (corrected path) |H,J,K    |	≈ 12–14 Torr (mean ~ 13)          |

![caption](../doc/assets/Cu2O_validation_202606_a/n2_spike_before_after-3.png)

### Process reproducibility: Run J vs run K (identical recipe, independent runs)
- Per-pulse water dose (peak − local baseline): J = 1.256 ± 0.42 Torr, K = 1.247 ± 0.42 Torr → 0.7% across n=388 per run cycles.
- Substrate temperature plateau: 225.8 °C vs 225.1 °C → ±0.7 °C (RTD-B (rear-mount, ~24 °C position offset); reaction occurs at the 250 °C setpoint). 
- Cycle period: 11.54 s both runs; 394 detected pulses both runs.
- A raw "absolute peak" comparison gives +2.3%. The raw peak rides on the working floor. The dose reproduced to 0.7%; Run K simply sat on a slightly higher working floor (3.40 J vs 3.50 K Torr), inflating the raw peak.

### The per-pulse rise
![caption](../doc/assets/Cu2O_validation_202606_a/JvK_overlay.png)

### The process reproducibility metrics:
|Metric                                      |Run J	           |Run K	                   |Agreement|
|--------------------------------------------|-----------------|-------------------------|---------|   
|Per-pulse water dose (peak − local baseline)|1.256 ± 0.42 Torr|1.247 ± 0.42 Torr        | 0.7%    |   
|Detected pulses                             |394              |	394                    |identical|   
|Cycle period                                |11.54 s          |	11.54 s                |identical|   
|RTD-B plateau (recipe window median)        |225.8 °C         |	225.1 °C               | ±0.7 °C |   
|Working floor (median)                      |3.40 Torr        |	3.50 Torr              | +3.1%   |   
|Absolute peak (mean)                        |4.81 Torr        |	4.92 Torr              | +2.3%   |   

* Pulse delivery: 400 cycles commanded; 394 distinct pressure peaks detected in both runs, evenly spaced at the 11.54 s period with no dropouts or merged cycles. The count is stable across detection thresholds (0.2–0.4 Torr), confirming reliable valve actuation every cycle. Per-cycle statistics use the 388 steady-state cycles (first/last 3 trimmed).

### Temperature offsets:
| Run | Setpoint | RTD-B median | Offset |
| --- | -------- | ------------ | ------ |
| A   | 250      | 228.0        | 22.0   |
| B   | 250      | 228.2        | 21.8   |
| C   | 250      | 227.1        | 22.9   |
| D   | 250      | 227.5        | 22.5   |
| H   | 250      | 229.2        | 20.8   |
| J   | 250      | 225.8        | 24.2   |
| K   | 250      | 225.1        | 24.9   |


### Cu2O films
Cu2O color tracks oxide thickness (brown → pink/magenta → violet → blue). Films reproduced within a regime; Run K showed thicker, multi-color (rainbow) coverage. Color/uniformity variation is attributed to substrate strain and stress effects from sample prep (ie oxide growth occurs faster in regions that have undergone some form of mechanical stress or strain), not process drift.

----

### Takeaways
- The delivery tool and timing are validated for the water ALD3 valve + lines, N2 solenoid valve + lines and Cu oxidation
- The cleanest evidence of reproducibility is the per-pulse pressure trace, not film color (color is confounded by strain/substrate/contact).
- 3.40/3.50 Torr hot working floor is the steady-state nitrogen flow pressure (not residual water). The dynamic equilibrium between metered N2 inflow and pump throughput at 250 °C. It is set by plumbing (metering-valve position + pump speed). The pump-down evidence proves it: post-fix runs hit <5 Torr in 46–71 s vs 106–288 s pre-fix —> 2–6× faster. Trapped water would make it slower, not faster.
- Per-cycle features (peak, trough/floor, rise) are reported as mean ± SD over all analyzed cycles; the RTD-B temperature plateau is reported as a median to resist slow thermal excursions.

### Limitations 
Sampling rate vs actuation. 20 Hz is sufficient for per-pulse dose for these runs. It does not resolve the valve actuation waveform (single-digit-ms open) or short Al2O3 TMA pulses (~50 ms → ~1 sample). This is gauge-limited (IGC100 ~36 Hz), not code-limited? (faster acquisition is achievable in firmware is an open question for discussion) 
- resolving fast pulses in the TMA phase would require a fast analog transducer (e.g., capacitance manometer + ADC).

----

### Plans
- Confirm dedicated TMA gas lines (Swagelok diaphragm valves on order).
- Decide on air-source install for ALD3-line testing and CuO-phase study; pending secondary safety valve.
- Capacitance manometer + ADC for fast-pulse resolution 
- Promote firmware pressure_ok / temp_ok interlocks from default-TRUE stubs to blocking checks before any TMA run (reason: a bad-state start with a pyrophoric precursor is the exact scenario the interlock exists to prevent).
- PI safety sign-off before purchasing TMA.


----

### References 
[Oxidation mechanism of thin Cu films A gateway towards the formation of single oxide phase](https://univ-rennes.hal.science/hal-01809058/file/1.5028407-1.pdf)

[How Water Drives Deep Oxidation in Copper | Research Communities by Springer Nature](https://communities.springernature.com/posts/how-water-drives-deep-oxidation-in-copper)

[Single-phase Cu2O and CuO thin films obtained by low-temperature oxidation processes](https://www.sciencedirect.com/science/article/abs/pii/S0925838817343712?fr=RR-2&ref=pdf_download&rr=a0d4bb959fd58c80)

[Color of Copper/Copper oxide](https://arxiv.org/pdf/2107.07175)

[Thin film interference and reflections: Physclips - Light](https://www.animations.physics.unsw.edu.au/jw/light/thin-film-interference-and-reflections.html)

[The oxidation of copper catalysts during ethylene epoxidation](https://pubs.rsc.org/en/content/articlehtml/2015/cp/c5cp03722k)

[Investigating thin film interference with a digital camera](https://ultracold.uchicago.edu/sites/default/files/Investigating%20thin%20film%20interference.pdf)

[Effect of surface stresses on CuO nanowire growth in the thermal oxidation
of copper](https://ws.binghamton.edu/me/Zhou/Zhou-publications/CPL%20Effect%20of%20surface%20stresses%20on%20CuO%20nanowire%20growth%20in%20the%20thermal%20oxidation%20of%20Cu.pdf)
    -  mechanistic basis for why film color/morphology can vary 

---- 

## Appendix 

#### Run summary plots

- run K
![caption](../doc/assets/Cu2O_validation_202606_a/runK_canonical_plots.png)

- run J
![caption](../doc/assets/Cu2O_validation_202606_a/runJ_canonical_plots.png)

- run I
![caption](../doc/assets/Cu2O_validation_202606_a/runI_canonical_plots.png)

- run H
![caption](../doc/assets/Cu2O_validation_202606_a/runH_canonical_plots.png)

- run F
![caption](../doc/assets/Cu2O_validation_202606_a/runF_canonical_plots.png)

- run E
![caption](../doc/assets/Cu2O_validation_202606_a/runE_canonical_plots.png)

- run D
![caption](../doc/assets/Cu2O_validation_202606_a/runD_canonical_plots.png)

- run C
![caption](../doc/assets/Cu2O_validation_202606_a/runC_canonical_plots.png)

- run B
![caption](../doc/assets/Cu2O_validation_202606_a/runB_canonical_plots.png)

- run A
![caption](../doc/assets/Cu2O_validation_202606_a/runA_canonical_plots.png)


#### Onshape model 
Onshape modeling software used to develop the main architecture, assemble and test vital parts, and generate a rough bill of materials. 
![caption](../doc/assets/Cu2O_validation_202606_a/Assembly_1.png)

Plumbing changes:

![caption](../doc/assets/Cu2O_validation_202606_a/schlenk_new.png)
![caption](../doc/assets/Cu2O_validation_202606_a/water_line_new.png)


system:
![caption](../doc/assets/Cu2O_validation_202606_a/system_v2.png)

![caption](../doc/assets/Cu2O_validation_202606_a/System_v1.png)

#### Cu samples A-K 
![caption](../doc/assets/Cu2O_validation_202606_a/samples_A_K.png)



#### Summary table of runs and recipe conditions

| Run | Role                      | Set­point (°C) | Cyc cmd | Cyc det (peaks) | Complete    | Base P (Torr) | Pump-down to <5 Torr (s) | Period (s) | Floor­=trough mean (Torr) | Peak mean (Torr) | Per-pulse rise±SD (Torr) | RTD-B median (°C) | Offset (°C) | RTD-B max (°C) | N2-open spike (Torr) |
| --- | ------------------------- | -------------- | ------- | --------------- | ----------- | ------------- | ------------------------ | ---------- | ------------------------- | ---------------- | ------------------------ | ----------------- | ----------- | -------------- | -------------------- |
| A   | Dry control (no DI water) | 250            | 400     | 109             | No (E-stop) | 1.11          | n/a                      | 25.6       | ~1.0                      | —                | —                        | 228.0             | 22.0        | 252.1          | 2.4 (dry)            |
| B   | Validation (troubleshoot) | 250            | 400     | 244             | No (E-stop) | 1.35          | 288                      | 25.6       | 3.46                      | 4.91             | 0.07±0.03                | 228.2             | 21.8        | 230.7          | 46.9                 |
| C   | Validation (early recipe) | 250            | 400     | 403             | Yes         | 1.08          | 126                      | 25.6       | 3.71                      | 5.24             | 0.08±0.04                | 227.1             | 22.9        | 231.4          | 86.7                 |
| D   | Validation (magenta ref)  | 250            | 400     | 402             | Yes         | 1.19          | 106                      | 11.54      | 4.28                      | 5.90             | 0.60±0.16                | 227.4             | 22.6        | 231.5          | 89.2                 |
| E   | Phase threshold (hot)     | ~285           | —       | 101             | n/a         | 1.04          | 116                      | 11.54      | 4.57                      | 6.33             | 0.65±0.15                | 284.7             | —           | 308.1          | 84.1                 |
| F   | Phase threshold (hot)     | ~308           | —       | 400             | n/a         | 0.74          | 148                      | 11.54      | 4.48                      | 6.22             | 0.63±0.15                | 307.7             | —           | 312.2          | 88.4                 |
| H   | First post gas-path fix   | 250            | 400     | 376             | ~Yes        | 0.95          | 71                       | 11.54      | 2.89                      | 3.89             | 0.73±0.34                | 229.1             | 20.9        | 244.9          | 12.5                 |
| I   | High-water no-evac        | 300            | 350     | 121             | No          | 0.61          | 60                       | 17.9       | 5.22                      | 6.07             | 0.54±0.21                | 260.1             | 39.9        | 271.0          | —*                   |
| J   | Canonical reproducibility | 250            | 400     | 394             | Yes         | 0.64          | 46                       | 11.54      | 3.40                      | 4.81             | 1.25±0.41                | 225.8             | 24.2        | 239.4          | 11.9                 |
| K   | Canonical repeat          | 250            | 400     | 394             | Yes         | 0.97          | 47                       | 11.54      | 3.50                      | 4.92             | 1.25±0.41                | 225.1             | 24.9        | 227.5          | 11.3                 |

\* Run I was a no-evac, backfilled run; the N2-open spike is not cleanly isolable, so it is omitted.
