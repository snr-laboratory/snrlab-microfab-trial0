## Task for 20251016

### IN5 inductive kickback measurement = 120us or 8.33kHz
- Introduce flyback diode 1N4002
- Also an inline 4A fuse on the +24vdc and +5vdc output to the terminal blocks would be good as well. 

<img width="500" height="699" alt="Screenshot 2025-10-16 at 4 39 06 PM" src="https://github.com/user-attachments/assets/5d622718-d907-470a-ae38-b4c346e84eb9" />

<img width="500" height="726" alt="Screenshot 2025-10-16 at 4 35 18 PM" src="https://github.com/user-attachments/assets/928af4ae-b534-4a90-88a3-5fb8e7a22475" />


| Rise Time       | 10ms     | 50ms |
|-----------------|----------|------|
|TMA ALD          |5.60      |6.40  |
|H2O ALD          |5.68      |6.16  |
|TMA SV           |5.84      |6.80  |
|H2O SV           |6.08      |6.80  |
|N2  SV           |5.76      |6.40  |

### Rise time
- The relay signal goes low, but a slow rise delay occurs before reaching a steady state.
- The time it takes for the solenoid coil to energize and for the voltage to ramp up to a stable state after the relay has already made contact.

| Command to Actuation Delay | 10ms     | 50ms |
|----------------------------|----------|------|
|TMA ALD                     |4.40      |4.80  |
|H2O ALD                     |5.04      |5.04  |
|TMA SV                      |4.48      |4.40  |
|H2O SV                      |4.56      |4.40  |
|N2  SV                      |4.88      |4.80  |

### The logic signal goes high, but nothing happens at the valve yet.
- actuation latency: the delay between a command being sent and the physical action occurring

## Task for 20251015
### TMA SV scope
#### 10ms 

#### The actuation delay 5.84ms or 171Hz. 

<img width="867" height="644" alt="Screenshot 2025-10-15 at 8 53 09 PM" src="https://github.com/user-attachments/assets/c287c4e6-f5e9-42ef-9773-303bd36ee6f1" />

#### From logic edge to acutation edge the difference is 4.48ms or 223Hz.

<img width="945" height="709" alt="Screenshot 2025-10-15 at 8 53 17 PM" src="https://github.com/user-attachments/assets/9379d091-7296-4b2c-baa3-5754b8a2f97d" />

#### 50ms 

#### The actuation delay 6.80ms or 147Hz. 

<img width="804" height="606" alt="Screenshot 2025-10-15 at 8 58 28 PM" src="https://github.com/user-attachments/assets/ac8f426f-c1a7-4226-a095-44d4e472c30d" />

#### From logic edge to acutation edge the difference is 4.40ms or 227Hz.

<img width="930" height="695" alt="Screenshot 2025-10-15 at 8 58 24 PM" src="https://github.com/user-attachments/assets/22bdd8bd-aa2a-4bae-bfe7-242d7d9d2384" />


#include <Arduino.h>

// Minimal Test Sketch for Pin 7 Timing Verification 

#define TMA_SV 7 

const unsigned long TMA_MS = 10;

void setup() { 

  pinMode(TMA_SV, OUTPUT); 
  
  Serial.begin(115200); 
  
  Serial.println(">>> Minimal TMA SV test running <<<"); 
  
}

void loop() { 

  digitalWrite(TMA_SV, HIGH); // Set pin 7 HIGH for 10 ms 
  
  delay(TMA_MS); // Pulse duration (10 ms) 
  
  digitalWrite(TMA_SV, LOW); // Set pin 7 LOW 
  
  delay(500); // 0.5 s pause (for visibility) 
  
  }


### H20 SV scope

#### 10ms 

#### The actuation delay 6.08ms or 164Hz. 

<img width="878" height="658" alt="Screenshot 2025-10-15 at 8 42 33 PM" src="https://github.com/user-attachments/assets/2cb9b3a7-02dd-48cd-820c-0cc16943bcc2" />

#### From logic edge to acutation edge the difference is 4.56ms or 219Hz.

<img width="877" height="657" alt="Screenshot 2025-10-15 at 8 42 27 PM" src="https://github.com/user-attachments/assets/a4a0e5fb-fb66-45bc-9421-f8ef651e085d" />


#### 50ms 

#### The actuation delay 6.80ms or 147Hz. 

<img width="923" height="696" alt="Screenshot 2025-10-15 at 8 37 54 PM" src="https://github.com/user-attachments/assets/776b6dc0-abce-4d2b-a3e7-17a9cf6dd20e" />

#### From logic edge to acutation edge the difference is 4.40ms or 227Hz.

<img width="937" height="708" alt="Screenshot 2025-10-15 at 8 38 00 PM" src="https://github.com/user-attachments/assets/9f5fa488-974a-4371-94ad-c0ac8dd9b7a9" />


#include <Arduino.h>

// Minimal Test Sketch for Pin 6 Timing Verification 

#define H2O_SV 6 

const unsigned long H2O_MS = 50;

void setup() { 

  pinMode(H2O_SV, OUTPUT);
  
  Serial.begin(115200);
  
  Serial.println(">>> Minimal H2O SV test running <<<");
  
}

void loop() { 

  digitalWrite(H2O_SV, HIGH); // Set pin 6 HIGH for 50 ms 
  
  delay(H2O_MS); // Pulse duration (50 ms) 
  
  digitalWrite(H2O_SV, LOW); // Set pin 6 LOW 
  
  delay(500); // 0.5 s pause (for visibility) 
  
  }

### N2 purge scope
#### 10ms 

#### The actuation delay 5.76ms or 174Hz. 

<img width="833" height="637" alt="actual delay" src="https://github.com/user-attachments/assets/3fbee96d-fe86-4273-bdd2-91a06b6a6857" />

#### From logic edge to acutation edge the difference is 4.88ms or 205Hz.

<img width="927" height="704" alt="Screenshot 2025-10-15 at 8 07 31 PM" src="https://github.com/user-attachments/assets/c0efd7c5-9a88-41fc-b3d2-602fae336bc1" />

#### 50ms 

#### The actuation delay 6.40ms or 156Hz. 

<img width="928" height="702" alt="Screenshot 2025-10-15 at 8 13 18 PM" src="https://github.com/user-attachments/assets/1e57edb2-64c6-45f7-ba3a-ca544634e655" />

#### From logic edge to acutation edge the difference is 4.80ms or 208Hz.

<img width="741" height="575" alt="Screenshot 2025-10-15 at 8 13 13 PM" src="https://github.com/user-attachments/assets/32b5b67c-ed79-434c-b02a-26816ef6debc" />

#include <Arduino.h>

// Minimal Test Sketch for Pin 5 Timing Verification 

#define IN_PURGE 5 

const unsigned long PURGE_MS = 10;

void setup() { 

  pinMode(IN_PURGE, OUTPUT); 
  
  Serial.begin(115200); 
  
  Serial.println(">>> Minimal Purge test running <<<"); 
  
}

void loop() { 

  digitalWrite(IN_PURGE, HIGH); // Set pin 5 HIGH for 10 ms 
  
  delay(PURGE_MS); // Pulse duration (10 ms) 
  
  digitalWrite(IN_PURGE, LOW); // Set pin 5 LOW 
  
  delay(500); // 0.5 s pause (for visibility) 
  
  }


### Repeat of TMA 50ms
The slow rise time once the actuation has been triggered is what we need to take into account and add back into the pulse time code in order to achieve the desired amount of dosing. The actutation or the valve opening is not the exact 50ms we would like but instead, due to the inductor resisting the instantaneous current, it is less and we must add that delay into the 50ms command time:
#### 10ms  

#### The actuation delay 5.60ms or 179Hz. 

<img width="926" height="706" alt="10ms TMA actual" src="https://github.com/user-attachments/assets/e4f49fd1-13f1-4795-8182-97fb908e223c" />

#### From logic edge to acutation edge the difference is 4.40ms or 227Hz. 

<img width="871" height="646" alt="Screenshot 2025-10-15 at 7 43 05 PM" src="https://github.com/user-attachments/assets/0ee1d2db-1128-4b44-950a-146d73623c3b" />

#### 50ms
#### The actuation delay is the slow rise time which is 6.40ms or 156Hz.

<img width="933" height="703" alt="50ms TMA repeat actual delay " src="https://github.com/user-attachments/assets/b029d97d-1f57-4157-ab84-b8ba7416b6f4" />

#### From logic edge to acutation edge the difference is 4.80ms or 208Hz. 

<img width="805" height="620" alt="50ms repeat TMA delay" src="https://github.com/user-attachments/assets/e9ad4c85-7cdd-4b4a-b189-f0d1e8c6cf87" />


### H2O ALD scope
#### 10ms
#### delay between logic command and relay actuation is 5.12ms or 195Hz
<img width="1165" height="866" alt="H2O ALD scope 10ms" src="https://github.com/user-attachments/assets/09bfdd22-fcf3-4eb1-a45f-2ee20ffeeda2" />


#### 25ms 
#### delay between logic command and relay actuation is 5.00ms or 200Hz
<img width="1260" height="968" alt="H2O ALD scope 25ms" src="https://github.com/user-attachments/assets/1739c16a-3c1a-4125-8ad4-75d71ed4a597" />


#### 50ms 
#### delay between logic command and relay actuation is 4.80ms or 208Hz
<img width="1073" height="796" alt="H2O delay test 50ms " src="https://github.com/user-attachments/assets/e7b599de-d7ba-4718-80f8-6bb829b3cb3c" />



### H2O ALD Test Code
#include <Arduino.h>

// Minimal Test Sketch for Pin 3 Timing Verification 

#define IN_H2O_ALD 3 

const unsigned long H2O_PULSE_MS = 50;

void setup() { 

  pinMode(IN_H2O_ALD, OUTPUT); 
  
  Serial.begin(115200); 
  
  Serial.println(">>> Minimal H2O pulse test running <<<"); 
  
}

void loop() { 

  digitalWrite(IN_H2O_ALD, HIGH);   // Set pin 3 HIGH for 50 ms 
  
  delay(H2O_PULSE_MS);              // Pulse duration (50 ms) 
  
  digitalWrite(IN_H2O_ALD, LOW);    // Set pin 3 LOW 
  
  delay(500);                       // 0.5 s pause (for visibility) 
  
  }


### Flyback diode?
The Universal Rule for Flyback Diodes

The fundamental rule for connecting a flyback diode:

The diode is installed in parallel with the inductive load (the solenoid). The cathode (the end with the band/stripe) must connect to the more positive voltage point of the load, and the anode connects to the more negative point.

The diode must be reverse-biased when the solenoid is powered on


### Intial current rise (Dip)
As current begins to flow into the solenoid coil, which is an inductor, and resists an instantaneous change in current. Consequently, the current does not jump to its maximum value but instead begins to ramp up at a rate determined by the coil's inductance (L) and the total circuit resistance (R).

The first dip we see is the electrical signature of the solenoid's mechanical actuation. 

**Microwelding is not the cause or else the relay would cease to repeat opening and closing.**

Second dip must be discharging (verify how much time it took for the ramp up and discharge) 

<img width="1291" height="724" alt="Screenshot 2025-10-15 at 1 02 05 PM" src="https://github.com/user-attachments/assets/2ad8c063-15e2-431c-9cea-c39481438e1d" />


Delay between logic and actuation is 4.40ms with a frequency of 227Hz
<img width="924" height="452" alt="4 40ms delay 24V load" src="https://github.com/user-attachments/assets/cfa57967-2ea4-4040-9857-78e2c8b3168f" />

Correct wiring schematic for complete Arduino isolation. The configuration removes the minor load from the Arduino's onboard voltage regulator entirely. This places the entire operational load of the relay module onto the external power supply, ensuring the Arduino's power rail is stable. 
- External PSU +5V → Relay Module VCC pin → Internal Resistor & Optocoupler LED → Relay Module INx pin → Arduino Digital Pin → Arduino Internal Ground

<img width="654" height="884" alt="Screenshot 2025-10-15 at 2 12 56 PM" src="https://github.com/user-attachments/assets/9ab113a4-cbb9-432e-bf53-5c55a64c9727" />

Yesterday, after connecting a 24 V solenoid skinner valve I was able to observe a different behavior. The oscillations are gone but still some unstable behavior in the blue wave form (probe 2) presists at the inital triggering of the valve. 
![image](https://github.com/user-attachments/assets/9bd05114-ced8-43ce-bbd6-0edf10a31638)
![image](https://github.com/user-attachments/assets/dc17a8af-1d0e-48a5-b061-c03d33b6346c)

The difference in yesterdays observed behavior on the scope was due to where I was connecting my ground. I also had some wiring confusions (eg I had a GND jumper going from arduino to 5V power supply to try to create a common ground but instead I was creating a loop. The USB cable that powers the Arduino has GND as well so there was no need to make this connection). 
![image](https://github.com/user-attachments/assets/fd46d182-9cc0-4530-b8d0-7eed759e8818)
![image](https://github.com/user-attachments/assets/a54a0c5f-66bc-4cad-b639-5a23ffc350eb)

Its interesting to note that the results are the same with or without the 5V and GND from Arduino to relay VCC and GND on the logic region. This leads me to believe that the external power source is enough to power the coil and logic power and there is no need for the arduino connections to the logic of the relay aside from the digital pins to inputs IN1-8. 

VCC - The VCC pin serves as the power supply for the "control side" or "logic side" of the module. Its exclusive function is to provide a clean, stable, low-current 5V source to the input side of the onboard optocouplers and the corresponding channel status LEDs. When a microcontroller sends a signal to activate a relay, it is the VCC rail that sources the small current—typically 15-20mA per channel—required to illuminate the internal LED within the optocoupler. The total current draw on this pin is modest, even with all channels active. 

JD-VCC - The JD-VCC pin is designated to power the "actuation side" or "power side" of the module. This rail provides the significantly higher current necessary to energize the electromagnetic coils within the physical relays, which mechanically pull the switch contacts into their active state.

The fundamental reason for this dual-power architecture is the electrical incompatibility of the two domains. The logic side, which interfaces directly with the microcontroller, requires a stable, low-noise power source for reliable operation. The actuation side, energizing and de-energizing eight inductive coils generates significant electromagnetic interference (EMI), creates substantial current surges on the power rail, and produces high-voltage transients (inductive kickback). Allowing this electrical noise to contaminate the logic power supply is a direct cause of microcontroller resets, data corruption, erratic sensor readings, and overall system instability. The separation of VCC and JD-VCC provides the necessary framework to isolate these two hostile environments from one another.

## Task for 20251014
Fixing ground connections

<img width="1276" height="637" alt="gnd to 5VPS" src="https://github.com/user-attachments/assets/fdd74577-b7b6-4e07-b228-c01e758b5161" />

## Task for 20251013
### Measure settling time (bounce duration) - 5ms
For any short pulse duration, the relay's physical limitations (its latency and bounce) prevent it from ever providing a clean, stable output.

<img width="1267" height="600" alt="settling time 5ms" src="https://github.com/user-attachments/assets/415ec8bc-9724-4bdd-8bd3-9ef51d363886" />
- Consistent bounce frequency
  
### Measure settling time (bounce duration) - 25ms
<img width="1285" height="626" alt="settling time 25ms" src="https://github.com/user-attachments/assets/3b4542c6-b173-4b16-9a2d-e1ccdbea22a1" />
- Same behavior regarding the 2.0ms consistent bounce frequency

### Measure settling time (bounce duration) - 10ms
<img width="1285" height="638" alt="settling time 10ms" src="https://github.com/user-attachments/assets/ce9a9bf8-1454-4d1a-bf69-0cca05f38748" />
At 10ms the wave form is also the same for 50ms (500Hz) - 2.0ms 
- The relay never reaches a stable, closed state during the entire 10 ms pulse.
  
### Measure settling time (bounce duration) - 50ms
<img width="1280" height="795" alt="Settling bounce measurement" src="https://github.com/user-attachments/assets/abb80acc-fabc-4f81-ad37-ec3a0fa0680f" />
Time elapsed between the start of the bounce and the end of the bounce is 49.4 ms?!
- 2.0ms wave form -> 500Hz frequency 

## Task for 20251012
### Latency loaded isolated TMA code test - auto/+width measurment 
Probing NO (The Action) - How long after the command is given does the valve actually get power?
<img width="1279" height="620" alt="Probing NO (The Action)" src="https://github.com/user-attachments/assets/a40385bc-3c30-42b2-947f-72dc2bae5bbe" />
Cursor measurement difference (4.60ms): 
<img width="1286" height="610" alt="Latency Probing NO " src="https://github.com/user-attachments/assets/62c7e680-1bbc-4ade-a527-2ee81679fb3c" />
Measured the time delay between the Arduino sending the command (the rising edge of the yellow CH1 signal) and the relay's contact first making a physical connection (the start of the blue CH2 signal). This 4.60ms delay is the relay's actuation time or latency.

### Loaded isolated TMA code test - auto/+width measurment 
Probing IN4 (The Command) - Is the command from the Arduino getting to the relay with the correct timing?
<img width="1293" height="638" alt="Probing IN4 Command" src="https://github.com/user-attachments/assets/27afa9e2-43ac-42bb-9413-ec40c66bef70" />

## Task for 20251011
### Isolated TMA code test - auto/+width measurment 
- The scope cursor measurement |ΔX|: 50.0ms exactly matches the delay(50) command
<img width="855" height="420" alt="Auto TMA Isolated +W" src="https://github.com/user-attachments/assets/aa83d7ee-bac4-4f87-af0e-f9ede09d6d50" />

## Task for 20251010
### Isolated TMA code test - manual measurment 
- The scope cursor measurement |ΔX|: 50.0ms exactly matches the delay(50) command
<img width="1280" height="623" alt="Isolated TMA code" src="https://github.com/user-attachments/assets/4be209df-13ee-40ae-bdd4-f24090c16f8c" />

### Simplified code for TMA to isolate this signal 
#include <Arduino.h>

// Minimal Test Sketch for Pin 4 Timing Verification

#define IN_TMA_ALD 4

const unsigned long TMA_PULSE_MS = 50;

void setup() {

  pinMode(IN_TMA_ALD, OUTPUT);
  
  Serial.begin(115200);
  
  Serial.println(">>> Minimal TMA pulse test running <<<");
  
}

void loop() {

  digitalWrite(IN_TMA_ALD, HIGH);   // Set pin 4 HIGH for 50 ms
  
  delay(TMA_PULSE_MS);              // Pulse duration (50 ms)
  
  digitalWrite(IN_TMA_ALD, LOW);    // Set pin 4 LOW
  
  delay(500);                       // 0.5 s pause (for visibility)
  
}


### Faster test code TMA
### Auto 200us TMA 

<img width="1276" height="623" alt="Auto 200us TMA 2" src="https://github.com/user-attachments/assets/d390e440-5309-4edc-be2a-58cfaa60e6b8" />

<img width="1209" height="576" alt="Auto 200us TMA 1" src="https://github.com/user-attachments/assets/fe272c7d-ffb6-488b-82c8-d4fc93239b4c" />

### 200us TMA manual 
<img width="1050" height="498" alt="200us_TMA_manual " src="https://github.com/user-attachments/assets/d0a99284-baa7-4a12-86de-938099d857a7" />

### 10ms TMA manual 
- Manual time cursor selection gives a delta time value of 0.8ms!
  - revist code, but first try automatic measurement to verify 
<img width="1280" height="676" alt="test_faster code_TMA" src="https://github.com/user-attachments/assets/36ba2bae-9afd-4198-9a50-f5ae958ed43f" />

### Original code 
#include <Arduino.h>

// -------- Pin mapping (Arduino Mega digital pins) --------

#define IN_TMA_SV   7   // IN1: TMA safety/sequence valve

#define IN_H2O_SV   6   // IN2: H2O safety/sequence valve

#define IN_PURGE    5   // IN3: N2 purge valve

#define IN_TMA_ALD  4   // IN4: TMA ALD pulse valve

#define IN_H2O_ALD  3   // IN5: H2O ALD pulse valve


// -------- Logic polarity --------

// Set to 1 if your board is ACTIVE-LOW (LOW = ON, HIGH = OFF).

// Set to 0 if ACTIVE-HIGH (HIGH = ON, LOW = OFF).

#define ACTIVE_LOW  1


inline void valveOn(uint8_t pin){ digitalWrite(pin, ACTIVE_LOW ? LOW  : HIGH); }

inline void valveOff(uint8_t pin){ digitalWrite(pin, ACTIVE_LOW ? HIGH : LOW ); }


// -------- Timing (milliseconds) --------

const unsigned long PURGE_START_MS = 5000; // Step 1: initial N2 purge: 5 s

const unsigned long PURGE_MS       = 3000; // Steps 3 & 5: 3 s

const unsigned long SV_SETTLE_MS   = 500;   // 0.5 s line settle before ALD pulse

const unsigned long TMA_PULSE_MS   = 50;    // TMA 50 ms pulse

const unsigned long H2O_PULSE_MS   = 25;    // H2O 25 ms pulse


void allValvesOff() {
  valveOff(IN_TMA_SV);
  valveOff(IN_H2O_SV);
  valveOff(IN_PURGE);
  valveOff(IN_TMA_ALD);
  valveOff(IN_H2O_ALD);
}

void setup() {
  Serial.begin(115200);

  pinMode(IN_TMA_SV,   OUTPUT);
  pinMode(IN_H2O_SV,   OUTPUT);
  pinMode(IN_PURGE,    OUTPUT);
  pinMode(IN_TMA_ALD,  OUTPUT);
  pinMode(IN_H2O_ALD,  OUTPUT);

  allValvesOff();
  Serial.println(F("ALD Demo: TMA(50ms) / Purge(3s) / H2O(25ms) / Purge(3s)"));
}

void loop() {
  // ---- Step 1: N2 purge 5 s (clean start) ----
  Serial.println(F("[Step 1] Purge ON (5 s)"));
  valveOn(IN_PURGE);
  delay(PURGE_START_MS);
  valveOff(IN_PURGE);
  Serial.println(F("[Step 1] Purge OFF"));

  // ---- Step 2: TMA half-cycle ----
  Serial.println(F("[Step 2] TMA SV OPEN"));
  valveOn(IN_TMA_SV);
  delay(SV_SETTLE_MS);

  Serial.println(F("[Step 2] TMA ALD PULSE 50 ms"));
  valveOn(IN_TMA_ALD);
  delay(TMA_PULSE_MS);
  valveOff(IN_TMA_ALD);

  delay(SV_SETTLE_MS);
  Serial.println(F("[Step 2] TMA SV CLOSE"));
  valveOff(IN_TMA_SV);

  // ---- Step 3: Purge 3 s ----
  Serial.println(F("[Step 3] Purge ON (3 s)"));
  valveOn(IN_PURGE);
  delay(PURGE_MS);
  valveOff(IN_PURGE);
  Serial.println(F("[Step 3] Purge OFF"));

  // ---- Step 4: H2O half-cycle ----
  Serial.println(F("[Step 4] H2O SV OPEN"));
  valveOn(IN_H2O_SV);
  delay(SV_SETTLE_MS);

  Serial.println(F("[Step 4] H2O ALD PULSE 25 ms"));
  valveOn(IN_H2O_ALD);
  delay(H2O_PULSE_MS);
  valveOff(IN_H2O_ALD);

  delay(SV_SETTLE_MS);
  Serial.println(F("[Step 4] H2O SV CLOSE"));
  valveOff(IN_H2O_SV);

  // ---- Step 5: Purge 3 s ----
  Serial.println(F("[Step 5] Purge ON (3 s)"));
  valveOn(IN_PURGE);
  delay(PURGE_MS);
  valveOff(IN_PURGE);
  Serial.println(F("[Step 5] Purge OFF"));

  // ---- Step 6: Repeat ----
  Serial.println(F("Cycle complete. Repeating...\n"));
  allValvesOff(); // be explicit
  // loop() now repeats automatically
}


### Connecting to RIGOL 
- saving data directly to computer
[1000 SERIES DIGITAL OSCILLOSCOPES](https://www.rigolna.com/products/digital-oscilloscopes/1000/?srsltid=AfmBOoq1boQnvtdmj9wyaQz45k5QzqIhtwBUH02tY6NU2v0IfpXUj1Yn)

### Quick test code (not sure) 

#include <Arduino.h>

// -------- Pin mapping (Arduino Mega digital pins) --------
#define IN_TMA_SV   7   // IN1: TMA safety/sequence valve
#define IN_H2O_SV   6   // IN2: H2O safety/sequence valve
#define IN_PURGE    5   // IN3: N2 purge valve
#define IN_TMA_ALD  4   // IN4: TMA ALD pulse valve
#define IN_H2O_ALD  3   // IN5: H2O ALD pulse valve

// -------- Logic polarity --------
// Set to 1 if your board is ACTIVE-LOW (LOW = ON, HIGH = OFF).
// Set to 0 if ACTIVE-HIGH (HIGH = ON, LOW = OFF).
#define ACTIVE_LOW  1

inline void valveOn(uint8_t pin){ digitalWrite(pin, ACTIVE_LOW ? LOW  : HIGH); }
inline void valveOff(uint8_t pin){ digitalWrite(pin, ACTIVE_LOW ? HIGH : LOW ); }

// -------- Timing (milliseconds) --------
const unsigned long PURGE_START_MS = 100; // Step 1: initial N2 purge: 0.1 s
const unsigned long PURGE_MS       = 100; // Steps 3 & 5: 0.1 s
const unsigned long SV_SETTLE_MS   = 50;   // 0.05 s line settle before ALD pulse
const unsigned long TMA_PULSE_MS   = 50;    // TMA 50 ms pulse
const unsigned long H2O_PULSE_MS   = 25;    // H2O 25 ms pulse

void allValvesOff() {
  valveOff(IN_TMA_SV);
  valveOff(IN_H2O_SV);
  valveOff(IN_PURGE);
  valveOff(IN_TMA_ALD);
  valveOff(IN_H2O_ALD);
}

void setup() {
  Serial.begin(115200);

  pinMode(IN_TMA_SV,   OUTPUT);
  pinMode(IN_H2O_SV,   OUTPUT);
  pinMode(IN_PURGE,    OUTPUT);
  pinMode(IN_TMA_ALD,  OUTPUT);
  pinMode(IN_H2O_ALD,  OUTPUT);

  allValvesOff();
  Serial.println(F("ALD Demo: TMA(50ms) / Purge(0.1s) / H2O(25ms) / Purge(0.1s)"));
}

void loop() {
  // ---- Step 1: N2 purge 0.1 s (clean start) ----
  Serial.println(F("[Step 1] Purge ON (0.1 s)"));
  valveOn(IN_PURGE);
  delay(PURGE_START_MS);
  valveOff(IN_PURGE);
  Serial.println(F("[Step 1] Purge OFF"));

  // ---- Step 2: TMA half-cycle ----
  Serial.println(F("[Step 2] TMA SV OPEN"));
  valveOn(IN_TMA_SV);
  delay(SV_SETTLE_MS);

  Serial.println(F("[Step 2] TMA ALD PULSE 50 ms"));
  valveOn(IN_TMA_ALD);
  delay(TMA_PULSE_MS);
  valveOff(IN_TMA_ALD);

  delay(SV_SETTLE_MS);
  Serial.println(F("[Step 2] TMA SV CLOSE"));
  valveOff(IN_TMA_SV);

  // ---- Step 3: Purge 0.1 s ----
  Serial.println(F("[Step 3] Purge ON (0.1 s)"));
  valveOn(IN_PURGE);
  delay(PURGE_MS);
  valveOff(IN_PURGE);
  Serial.println(F("[Step 3] Purge OFF"));

  // ---- Step 4: H2O half-cycle ----
  Serial.println(F("[Step 4] H2O SV OPEN"));
  valveOn(IN_H2O_SV);
  delay(SV_SETTLE_MS);

  Serial.println(F("[Step 4] H2O ALD PULSE 25 ms"));
  valveOn(IN_H2O_ALD);
  delay(H2O_PULSE_MS);
  valveOff(IN_H2O_ALD);

  delay(SV_SETTLE_MS);
  Serial.println(F("[Step 4] H2O SV CLOSE"));
  valveOff(IN_H2O_SV);

  // ---- Step 5: Purge 0.1 s ----
  Serial.println(F("[Step 5] Purge ON (0.1 s)"));
  valveOn(IN_PURGE);
  delay(PURGE_MS);
  valveOff(IN_PURGE);
  Serial.println(F("[Step 5] Purge OFF"));

  // ---- Step 6: Repeat ----
  Serial.println(F("Cycle complete. Repeating...\n"));
  allValvesOff(); // be explicit
  // loop() now repeats automatically
}

### Simple code test (not sure) 
#include <Arduino.h>

// Define the pin you are testing
#define IN_TMA_ALD  4 

// Define the logic polarity
#define ACTIVE_LOW  1
inline void valveOn(uint8_t pin){ digitalWrite(pin, ACTIVE_LOW ? LOW  : HIGH); }
inline void valveOff(uint8_t pin){ digitalWrite(pin, ACTIVE_LOW ? HIGH : LOW ); }

void setup() {
  // Setup only the pin we are testing
  pinMode(IN_TMA_ALD, OUTPUT);
  valveOff(IN_TMA_ALD); // Start with the valve off
}

void loop() {
  // Generate the 50ms pulse
  valveOn(IN_TMA_ALD);
  delay(50); // The 50ms pulse duration
  valveOff(IN_TMA_ALD);

  // Wait for a short period before the next pulse
  delay(500); // Wait half a second
}

## Task for 20251009
### 10X calibration 

<img width="546" height="311" alt="calibration_10X" src="https://github.com/user-attachments/assets/5a110715-99ee-435e-85ce-cc3a35e41a20" />

### Initial reading

<img width="716" height="584" alt="Initial reading" src="https://github.com/user-attachments/assets/0f8161e8-54a5-431c-a445-d9c8834b9ac5" />

### Trigger setting: edge --> falling --> normal

<img width="705" height="619" alt="Trigger_edge_falling_normal" src="https://github.com/user-attachments/assets/c5b9fef2-af0d-435e-aae0-0dade15c2b19" />

### Manual --> cursor --> incomplete

<img width="662" height="421" alt="Manual_cursor_incomplete" src="https://github.com/user-attachments/assets/a9c03e1c-fb71-42d0-b0df-5bb2fa4383bd" />

---
# Alicat BB9-232

## Step 1: Verify FTDI Recognition
Open Terminal and run:
 * system_profiler SPUSBDataType | grep -i ftdi

<img width="455" height="46" alt="image" src="https://github.com/user-attachments/assets/769f0226-e566-41ce-a9ec-d1b902dfbd7f" />

## Step 2: Check Serial Port Creation
  * ls /dev/cu.usb*

<img width="251" height="42" alt="image" src="https://github.com/user-attachments/assets/bfe6a7eb-2b41-4168-9eed-de9b99cd0008" />

## Step 3: Test Communication Path
  * screen /dev/cu.usbserial-A908AU7G 19200

## Analysis of Test
The device seems to be communicating witout errors. Step 3 resulted in a blank screen due to a lack of MFCs and having no devices to connect to. Overall, communication pathway is working and connected. 

<img width="581" height="888" alt="image" src="https://github.com/user-attachments/assets/9766714a-f8b8-4b06-93aa-2384a4acba05" />

---
# Pressure guage test

## Starting Up 
<img width="709" height="473" alt="image" src="https://github.com/user-attachments/assets/99afde89-09c6-4d22-a89b-b737169c8de9" />

## Switching to PG2 - Pump off
<img width="711" height="409" alt="image" src="https://github.com/user-attachments/assets/b943e280-82fb-454d-bcfa-289c03e74a99" />

## PG2 - Pump on 
<img width="697" height="512" alt="image" src="https://github.com/user-attachments/assets/6be80b1c-936b-46b7-8610-d195d652822f" />

## Rise Time Test
It took roughly a minute and thirty seconds to get back to atmospheric pressure indicating that the system has leaks but it is working. 


