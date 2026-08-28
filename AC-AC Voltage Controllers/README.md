# AC Voltage Controllers & Cycloconverters

Welcome to the **AC Voltage Controllers & Cycloconverters** interactive simulator dashboard, part of the Power Electronics coursework repository.

This project is a fully self-contained, interactive web application designed to visualize complex AC voltage controller and cycloconverter waveforms. It serves as a visual learning aid to understand transcendental RL current equations, Wye-load neutral shifting, thyristor/diode conduction sequences, and direct frequency conversion.

### ⚠️ Mobile Viewing Note
> **For the best experience on a mobile device, please enable "Desktop Site" in your browser settings.** The interactive canvas, Gantt charts, and complex circuit diagrams require a wider screen layout for proper visualization and scaling.

### 🚀 Live Simulator Dashboard
**[Click here to open the Interactive Simulator](https://mahmudul28.github.io/Power-Electronics/AC%20Voltage%20Controllers/)**

---

### ⚙️ Features
* **Unified Dashboard:** Seamlessly switch between Standard AC Controllers and Cycloconverters without reloading the page.
* **Comprehensive Circuit Modes:** Supports 1Φ Half-Wave, 1Φ Full-Wave (R & RL loads), 3Φ Full-Wave (Wye & Delta), and 1Φ/3Φ Cycloconverters.
* **Live Circuit Diagrams:** Real-time, textbook-accurate schematic diagrams (including full 12-thyristor cycloconverter bridges) rendered directly in the browser.
* **Dynamic Waveform Plotting:** Real-time generation of phase voltages (v_an, v_bn, v_cn), line voltages, and synthesized output frequencies (v_o) without overlapping.
* **Interactive Firing Angles:** Slide controls to dynamically adjust firing angles (α, α_p, α_n) and frequency ratios (fs / fo). Includes an "Unlink" toggle to observe asymmetrical distortion.
* **Conduction Sequence Gantt Chart:** Dedicated, non-overlapping lanes for all active Thyristors (T1 ... T6) and Diodes.
* **Deep Zoom:** Fluid canvas scaling from 10% to 200% for precise examination of commutation at specific radian markers.

---

### 🛠️ How to Use
1. Open the [live link](https://mahmudul28.github.io/Power-Electronics/AC%20Voltage%20Controllers/).
2. Use the top navigation tabs to select either **Standard Controllers** or **Cycloconverters**.
3. Select your desired circuit topology from the mode menu.
4. Use the sliders to change the firing angles or frequency ratio, and watch the mathematical engine recalculate the waveforms, neutral points, and conduction sequences instantly.

---

### 👨‍💻 Credits
* **Author:** Mahmudul Hasan
* **Code Generation & Architecture:** Built with the assistance of Google's Gemini AI.