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
                - O2 sources are dangerous and require approval and sensors for safety monitoring; stick to air
                - could be redundant or a misuse of time. We know the behavior and are able to control a valve exactly similar to it, but this is its own part and it could have deviations that we are not aware of (probably best to do this setup, but not invest in optimizing films. ie if we get some black and mixed oxides of Cu on initial recipe, that's fine; just repeat and ensure the pressure and temperature logging behavior is similar and there are no signs or indications of leaks or unintended gas flow paths.
                               
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

### Firmware
- State machine with a data-driven recipe struct AldTimingRecipe
    - {tma_pulse_ms, h2o_pulse_ms, purge_gap/dwell_ms, purge_on_ms, purge_evacuate_ms, cycles}.
- For the Cu2O runs TMA (D3) is locked OFF (tma_pulse_ms = 0).
- One cycle: K8 house-main lead (100 ms) → H2O dose (D4 + D8 Schlenk together) → dwell → N2 purge (D5) → evacuate → K8 lag (100 ms).
- Fail-safe: safeAll() closes every valve + main on boot, E-stop, idle, and run-end; E-stop latches. (one cycle, drawn to the Run J/K recipe with data collection underneath).
  
![caption](../doc/assets/Cu2O_validation_202606_a/runJK_timing_vs_data.png)

- Run J/K recipe (identical for both): 250 °C setpoint, 500 ms H2O dose, 3 s dwell, 5 s N2 purge, 3 s evac, 400 cycles; net ≈ 11.7 s/cycle, ~ 78 min recipe (nominal ≈ 11.7 s; measured 11.54 s).
- Logging. 20 Hz (50 ms) pressure + dual-RTD.
    - Rate chosen against a measured IGC100 benchmark (GDAT? protocol: 19.96 Hz sustained; single-read 27 ms → ~36 Hz ceiling). 20 Hz sits below that ceiling so every sample is a genuine reading and no pulse feature is missed.
- Analysis (fully traceable). pandas → isolate recipe window (P 1–6 Torr oscillating AND RTD B > 200 °C) → scipy.signal.find_peaks (≥7 s spacing, prominence 0.3 Torr) for peaks and inverted troughs → per-pulse rise = peak − local pre-pulse minimum (prior 2.5 s) → drop first/last 3 cycles.
- Identical parameters for J and K. Scripts: verify_reproducibility.py, plot_two_metrics.py,
n2_diag.py, n2_verify.py, plot_n2_spike.py, plot_timing_runJK.py.

### Preliminary Results
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
- Per-pulse water dose (peak − local baseline): J = 1.248 ± 0.42 Torr, K = 1.247 ± 0.42 Torr → 0.1% across n=394/393 cycles each.
- Substrate temperature plateau: 225.8 °C vs 225.1 °C → ±0.8 °C (RTD-B (rear-mount, ~24 °C position offset); reaction occurs at the 250 °C setpoint). 
- Cycle period: 11.54 s both runs; 393 detected pulses both runs.
- A raw "absolute peak" comparison gives +2.3%. The raw peak rides on the working floor. The dose reproduced to 0.1%; Run K simply sat on a slightly higher working floor (3.75 J vs 3.98 K Torr), inflating the raw peak.

The per-pulse rise:
![caption](../doc/assets/Cu2O_validation_202606_a/two_metrics_reconciled-2.png)

The process reproducibility metrics:

|Metric                                      |Run J	           |Run K	                         |Agreement|
|--------------------------------------------|-----------------|---------------------------------|---------|   
|Per-pulse water dose (peak − local baseline)|1.248 ± 0.42 Torr|1.247 ± 0.42 Torr                | 0.1%    |   
|Detected pulses                             |394              |	393                          | ---     |   
|Cycle period                                |11.54 s          |	11.54 s                      |identical|   
|RTD-B plateau (recipe window median)        |225.8 °C         |	225.1 °C                     |±0.8 °C  |   
|Working floor (median)                      |3.75 Torr        |	3.98 Torr                    |  +6%    |   
|Absolute peak (mean)                        |4.81 Torr        |	4.93 Torr                    | +2.3%   |   

Temperature offsets:

| Run | Setpoint | RTD-B median | Offset |
| --- | -------- | ------------ | ------ |
| A   | 250      | 228.0        | 22.0   |
| B   | 250      | 228.4        | 21.6   |
| C   | 250      | 226.8        | 23.2   |
| D   | 250      | 227.5        | 22.5   |
| H   | 250      | 229.2        | 20.8   |
| J   | 250      | 225.8        | 24.2   |
| K   | 250      | 225.1        | 24.9   |



### Cu2O films
Cu2O color tracks oxide thickness (brown → pink/magenta → violet → blue). Films reproduced within a regime; Run K showed thicker, multi-color (rainbow) coverage. Color/uniformity variation is attributed to substrate strain and stress effects from sample prep (ie oxide growth occurs faster in regions that have undergone some form of mechanical stress or strain), not process drift.

### Takeaways
- The delivery tool and timing are validated for the water ALD3 valve + lines, N2 solenoid valve + lines and Cu oxidation
- The cleanest evidence of reproducibility is the per-pulse pressure trace, not film color (color is confounded by strain/substrate/contact).
- 3.75/3.98 Torr hot working floor is the steady-state nitrogen flow pressure (not residual water). The dynamic equilibrium between metered N2 inflow and pump throughput at 250 °C. It is set by plumbing (metering-valve position + pump speed). The pump-down evidence proves it: post-fix runs hit <5 Torr in 46–71 s vs 106–288 s pre-fix —> 2–6× faster. Trapped water would make it slower, not faster.
- Per-cycle features (peak, rise) are reported as mean ± SD over all detected cycles; continuous baselines (working floor, RTD-B plateau) are reported as medians to resist transient excursions.

### Limitations 
Sampling rate vs actuation. 20 Hz is sufficient for per-pulse dose for these runs. It does not resolve the valve actuation waveform (single-digit-ms open) or short Al2O3 TMA pulses (~50 ms → ~1 sample). This is gauge-limited (IGC100 ~36 Hz), not code-limited? 
- resolving fast pulses in the TMA phase would require a fast analog transducer (e.g., capacitance manometer + ADC).

### Plans
- Confirm dedicated TMA gas lines (Swagelok diaphragm valves on order).
- Promote firmware pressure_ok / temp_ok interlocks from default-TRUE stubs to blocking checks before any TMA run (reason: a bad-state start with a pyrophoric precursor is the exact scenario the interlock exists to prevent).
- PI safety sign-off before purchasing TMA.

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




