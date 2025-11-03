# Electronic control system

## Outline

<img width="700" height="700" alt="image" src="https://github.com/user-attachments/assets/87176f2f-8bb0-4b72-8da0-9b8362479336" />

### 20251006
The electronic control system  was  assembled and demonstrated using cooling fans as dummy loads.
- Not organized properly in the electrical box
- Verification of timing needed

### 20251006 -  20251010
Rigol DS1102E digital oscilloscope basics and probing procedure

### 20251011
Isolated single TMA command test
- The scope cursor measurement |ΔX|: 50.0ms exactly matches the delay(50) command
<img width="225" height="164" alt="image" src="https://github.com/user-attachments/assets/d7ebb17c-4f0c-4b39-b4b6-dc8085b98dab" />

### 20251012 - 20251014 (fans as loads)
- Delay was determined to be 4.60ms delay and is the relay's actuation time or latency.
- Measure settling time (bounce duration)
- Fix grounding connections
- SSR
<img width="736" height="137" alt="image" src="https://github.com/user-attachments/assets/a15fcaf9-7cc1-4b28-8ce0-89da479849d8" />
- 5, 10, 25 and 50ms scope measurements
- 4.60ms delay is the relay's actuation time or latency.

### 20251015 - 20251027 (24VDC solenoid valve)
- Characterizing timing using the skinner sv. (switching channels)
- “Unstable behavior” → inductive kickback
- Flyback diodes
- Unnoticed gnd issues → refining connections 

<img width="824" height="540" alt="image" src="https://github.com/user-attachments/assets/e0fe1e15-3ffa-4fb3-8a6f-5221202eca86" />

- The delay between a command being sent and the physical action occurring and the time it takes for the solenoid coil to energize and for the voltage to ramp up to a stable state after the relay has already made contact.

<img width="615" height="227" alt="image" src="https://github.com/user-attachments/assets/0235546a-fa7a-4820-b791-e6eee87f318f" />

- resolved issue with installation

<img width="616" height="236" alt="image" src="https://github.com/user-attachments/assets/8b09a05d-79a1-4c78-b7d2-ff486ebd9907" />

- measured the turn-off delay with correct code
- spikes before stabilization is mechanical contact bounce. 4.32ms is the latency (the time it takes for the metal arm inside the relay to move). The spikes after that are the arm physically "bouncing" against its contact point (120us).

### 20251028/29

<img width="783" height="298" alt="image" src="https://github.com/user-attachments/assets/98eb2354-84dd-4dc6-8e44-8fc056e81446" />

- Turn-on latencies (4.08ms - 4.88ms) and turn-off latencies (4.64ms - 5.17ms) are relatively consistent across the different valves.
- The bounce duration varies a bit more (240µs - 453µs), but it confirms that all mechanical relays exhibit this behavior. IN1, IN3, and IN5 show significantly longer bounce times (~400µs+) than IN2 and IN4 (~240µs).

### 20251030/31
Resolved the connection/coding issue and measured the settle time between IN1 (TMA SV) and IN4 (TMA ALD). 
<img width="805" height="377" alt="image" src="https://github.com/user-attachments/assets/88f36a3e-c992-4b29-90c0-bf5d90cf2a13" />

<img width="661" height="487" alt="image" src="https://github.com/user-attachments/assets/91e00e33-954a-45bd-a36e-9d4807bad564" />

- Data Collection for IN1 and IN4 (two valve test) 
- The system's behavior is reproducible and predictable. The results are consistent and proves the delay command is working as well as on time. The latencies and bounce are also tight and stable.


