# AC–DC Converters & Rectifiers

Welcome to the **AC–DC Converters & Rectifiers** interactive simulator, part of the Power Electronics coursework repository.

This project is a browser-based interactive learning tool for exploring common single-phase and three-phase AC–DC converter topologies. It combines circuit diagrams, switching states, waveform visualization, conduction intervals, adjustable parameters, and calculated electrical quantities to make rectifier operation easier to understand visually.

### ⚠️ Mobile Viewing Note
> **For the best experience on a mobile device, please enable "Desktop Site" in your browser settings.**  
> The circuit diagrams, waveform plots, conduction timelines, and interactive controls are designed primarily for a wider screen layout.

### 🚀 Live Simulator

**[Click here to open the AC–DC Converter Interactive Simulator](https://mahmudul28.github.io/Power-Electronics/AC-DC%20Rectifier/AC-DC_Converter.html)**

---

## ⚙️ Features

* **Hierarchical Converter Selection:** Navigate through converter category, converter type, and load configuration using dynamically changing controls.

* **Single-Phase AC–DC Converters:** Explore half-wave uncontrolled and controlled rectifiers, full-wave bridge converters, and semi-converters with different load configurations.

* **Three-Phase Converters:** Includes three-phase half-wave and full-wave diode converters as well as controlled SCR-based converters.

* **Different Load Models:** Explore R, L, RL, RLE, and freewheeling-diode configurations where applicable.

* **Adjustable Parameters:** Experiment with parameters such as source voltage, frequency, resistance, inductance, load EMF, and firing angle.

* **Firing-Angle Visualization:** Observe how changing the firing angle \( \alpha \) affects SCR triggering, conduction intervals, and output waveforms.

* **Interactive Waveforms:** Visualize relevant signals such as input voltage, output voltage, load current, source current, device voltage, and gate pulses.

* **Circuit Visualization:** View the corresponding converter topology and its semiconductor switching states.

* **Conduction Timeline:** Examine when individual diodes or thyristors conduct during the AC cycle.

* **CCM/DCM Exploration:** Compare continuous and discontinuous conduction behavior in converter configurations where applicable.

* **Performance Metrics:** Display calculated quantities such as \(V_{dc}\), \(I_{dc}\), RMS quantities, power factor, distortion factor, displacement power factor, THD, and ripple factor where applicable.

* **Educational Explanations:** Each converter configuration provides concise explanations of its operating principle and important equations.

* **Dual Converter & Motor Drive Concepts:** Explore bidirectional converter operation and basic four-quadrant DC motor-drive concepts.

---

## 📚 Converter Topics

The simulator covers a range of AC–DC converter configurations, including:

### Single-Phase

- Half-Wave Uncontrolled Rectifiers
  - R Load
  - L Load
  - RL Load
  - RL + Freewheeling Diode
  - RLE Load
  - RLE + Freewheeling Diode

- Half-Wave Controlled Rectifiers
  - R Load
  - RL Load
  - RL + Freewheeling Diode
  - RLE Load

- Full-Wave Uncontrolled Bridge
  - DCM
  - CCM

- Full-Wave Controlled Bridge
  - CCM
  - DCM

- Semi-Converter
  - CCM
  - DCM

- Dual Converter
  - Four-quadrant operation

### Three-Phase

- Three-Phase Half-Wave Uncontrolled Converter
- Three-Phase Full-Wave Diode Bridge
- Three-Phase Half-Wave Controlled Converter
- Three-Phase Full-Wave Controlled Converter

### DC Motor Drives

The simulator also introduces converter-fed DC motor operation through:

- Motoring
- Regenerative braking
- Dynamic braking
- Plugging

---

## 📊 Visualized Quantities

Depending on the selected topology, the simulator can visualize:

\[
v_s
\]

Input/source voltage

\[
v_o
\]

Output/load voltage

\[
i_o
\]

Load current

\[
i_s
\]

Source current

\[
v_D,\;v_T
\]

Diode/thyristor voltage

\[
i_g
\]

Gate pulses

The waveform axis uses the electrical angle:

\[
\omega t
\]

to make conduction and firing-angle relationships easier to observe.

---

## 🧮 Performance Parameters

Where applicable, the simulator provides calculations related to:

### Power Factor

\[
PF = \frac{P}{V_s I_s}
\]

### Distortion Factor

\[
DF = \frac{I_{S1}}{I_S}
\]

### Displacement Power Factor

\[
DPF = \cos\phi_1
\]

### Total Harmonic Distortion

\[
THD =
\sqrt{\frac{1}{DF^2}-1}
\]

### Ripple Factor

\[
RF =
\frac{\sqrt{V_{rms}^{2}-V_{dc}^{2}}}{V_{dc}}
\]

These quantities are intended to help connect the observed waveforms with the standard performance measures used in Power Electronics.

---

## 🧪 How to Use

1. Open the [live simulator](https://mahmudul28.github.io/Power-Electronics/AC-DC%20Rectifier/AC-DC_Converter.html).
2. Select the desired **converter category**.
3. Select the **converter topology**.
4. Choose the appropriate **load configuration**.
5. Adjust parameters such as \(V_{rms}\), \(f\), \(R\), \(L\), \(E\), or firing angle \( \alpha \).
6. Observe the corresponding circuit and waveforms.
7. Examine the conduction intervals and device states.
8. Compare the calculated electrical quantities with the expected converter behavior.

---

## 🎯 Purpose

The primary purpose of this project is **visual learning**.

Instead of studying converter equations and conduction sequences only from static diagrams, the simulator allows the user to change operating conditions and observe how the corresponding circuit behavior and waveforms change.

It is intended as a **supplementary learning tool for Power Electronics coursework**, rather than a replacement for analytical derivations, laboratory measurements, or professional circuit simulation software.

---

## 🛠️ Technologies

- HTML
- CSS
- JavaScript
- SVG / browser-based graphics
- Interactive numerical and waveform calculations

The project is designed to run directly in a modern web browser without requiring a separate software installation.

---

## 👨‍💻 Credits

* **Author:** Mahmudul Hasan
* **Code Generation & Architecture:** Built with the assistance of AI tools
* **Project:** Power Electronics Interactive Visualization Series

---

## 📌 Part of the Power Electronics Visualization Series

This project is part of a collection of interactive web-based visualizers developed for studying different areas of Power Electronics.

The goal is simple:

> **Turn equations, switching sequences, and circuit theory into something you can actually see.**
