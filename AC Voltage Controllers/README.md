# AC Voltage Controllers

Welcome to the **AC Voltage Controllers** interactive simulator, part of the Power Electronics coursework repository.

This project is a fully self-contained, interactive web application designed to visualize complex AC voltage controller waveforms. It serves as a visual learning aid to understand transcendental RL current equations, Wye-load neutral shifting, and thyristor/diode conduction sequences.

### 🚀 Live Simulator
**[Click here to open the Interactive Simulator](https://mahmudul28.github.io/Power-Electronics/AC%20Voltage%20Controllers/)**

---

### ⚙️ Features
*   **Comprehensive Circuit Modes:** Supports 1Φ Half-Wave, 1Φ Full-Wave (R & RL loads), 3Φ Full-Wave (Wye & Delta), and various 3Φ Half-Wave configurations.
*   **Dynamic Waveform Plotting:** Real-time generation of phase voltages ($v_{an}, v_{bn}, v_{cn}$) and line voltages ($v_{ab}, v_{bc}, v_{ca}$) without overlapping.
*   **Interactive Firing Angles:** Slide controls to dynamically adjust the firing angle ($\alpha$). Includes an "Unlink Phases" toggle to observe asymmetrical neutral point shifting.
*   **Conduction Sequence Gantt Chart:** Dedicated, non-overlapping lanes for all Thyristors ($T_1 \dots T_6$) and Diodes ($D_1 \dots D_6$).
*   **Component-Level Inspection:** Dedicated bottom graph actively plots the blocking voltage across Thyristor 1 ($v_{T1}$).
*   **Deep Zoom:** Fluid canvas scaling from 10% to 200% for precise examination of commutation at specific radian markers.

---

### 🛠️ How to Use
1. Open the [live link](https://mahmudul28.github.io/Power-Electronics/AC%20Voltage%20Controllers/).
2. Select your desired circuit topology from the top menu.
3. Use the sliders to change the firing angles and watch the mathematical engine recalculate the waveforms, neutral points and conduction sequences instantly.

---

### 👨‍💻 Credits
*   **Author:** Mahmudul Hasan
*   **Code Generation & Architecture:** Built with the assistance of Google's Gemini AI.