## Task for 20251010
### Isolated TMA code
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

### Quick test code

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

### Simple code test 
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


