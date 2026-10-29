# CrowdSense — Smart Queue & Crowd Management System
**CHAKRAVYUH ENTC AI Vibe Coding Challenge**  
*TAGLINE: Less Waiting. Smarter Spaces.*

---

## 🚀 Overview
**CrowdSense** is an electronic IoT and smart queue management prototype engineered for the CHAKRAVYUH ENTC AI Vibe Coding Challenge. Designed with a futuristic dark IoT aesthetic (midnight navy `#07111F`, dark blue cards `#101E32`, electric cyan `#00E5FF`, and neon blue `#3987FF`), it visualizes how active infrared (IR) beam-break sensors and microcontroller logic (ESP32) monitor public space occupancy in real time, calculate queue lengths using Little's Law, and balance urban crowds.

---

## 🛠️ Architecture & ENTC Principles
1. **01 — SENSE (Optoelectronic Transduction):**  
   Dual active infrared (IR) transmitter-photodiode pairs at entry and exit gates. Evaluates directionality using sequential edge-trigger interruptions.
2. **02 — PROCESS (Embedded Computing):**  
   ESP32 microcontroller running microsecond hardware timer interrupts to compute occupant differential:  
   $$\text{Current Occupants} = \max(0, \text{Total In} - \text{Total Out})$$  
   Calculates waiting times using M/M/c queuing formulas and Little's Law ($L = \lambda W$).
3. **03 — INFORM (IoT Telemetry):**  
   Publishes telemetry packets via MQTT over Wi-Fi/LoRaWAN to the CrowdSense dashboard, displaying crowd warnings and suggesting alternative counters.

---

## 📁 Project Structure
- [`index.html`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/index.html) — Futuristic, full-width homepage with hero smart-city illustration, 4 metric cards, location cards with filters, technical flow, live mini-simulator, sensor lab cards, interactive quiz, and responsive navigation.
- [`css/styles.css`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/css/styles.css) — Custom design system with glassmorphic cards, circuit gridlines, pulsing sensor nodes, neon gradients, responsive layouts, and reduced-motion support.
- [`js/app.js`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/js/app.js) — Interactive engine: simulated IoT telemetry pulse, live crowd filter logic, interactive location modal drawer, queuing theory calculations, and quiz feedback.
- [`dashboard.html`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/dashboard.html) — Live Smart City Command Dashboard with hourly occupancy distribution charts, real-time sensor event logs, and threshold alerts.
- [`simulator.html`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/simulator.html) — Full interactive Crowd & Queue Simulator with adjustable arrival rates, service desks, capacity limits, and visual queue dots.
- [`sensor-lab.html`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/sensor-lab.html) — Virtual ENTC Hardware Bench with logic analyzer waveform trace, interactive beam-break trigger simulator, ESP32 pinout table, and live MQTT packet inspector.
- [`learn.html`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/learn.html) — Interactive Learning Center with ENTC quizzes, hardware fault troubleshooting challenges, and XP/badge unlocks.
- [`locations.html`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/locations.html) — Location Explorer with comparative wait metrics and recommendations.

---

## 💻 How to Run and Preview
This project runs directly in any modern web browser with zero build steps or external dependencies:

### Method 1: Direct File Open
Double-click [`index.html`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/index.html) in your file explorer to open it immediately in Chrome, Edge, Brave, or Firefox.

### Method 2: VS Code Live Server
1. Open this workspace in VS Code or Antigravity IDE.
2. Right-click [`index.html`](file:///c:/Users/HP/OneDrive/Desktop/Hackathon_Devnova/index.html) and select **"Open with Live Server"**.
3. The page will launch automatically at `http://127.0.0.1:5500`.

### Method 3: Python / Node Local Server (Optional)
Run from terminal:
```bash
# Using Python
python -m http.server 3000

# Using Node (npx)
npx serve
```
Then visit `http://localhost:3000`.

---
*Note: All sensor readings and traffic levels are clearly marked as DEMO DATA / Simulated Data for educational and prototype demonstration purposes.*
