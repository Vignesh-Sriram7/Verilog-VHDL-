# Verilog Learning Collection 🚀

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![Simulation](https://img.shields.io/badge/Simulation-Icarus%20Verilog-orange)

This repository is a **collection of foundational Verilog modules and projects** designed to strengthen your understanding of **digital design**. Perfect for students, hobbyists, and anyone preparing for **VHDL programming**.

---

## 🌟 Features

- **Core Digital Modules**: ALUs, counters, full adders, and more.  
- **System-Level Examples**: Traffic controllers and UART logic.  
- **Simulation-Ready**: Compile and run without hardware using Icarus Verilog.  
- **Waveform Visualization**: Compatible with GTKWave (`dump.vcd`) for inspecting signals.  

---

## ⚙️ Usage

Compile and simulate a Verilog module with Icarus Verilog:

```bash
# Compile the Verilog file
iverilog -o <output_file>.vvp <your_verilog_file>.v

# Run the simulation
vvp <output_file>.vvp

# View waveforms (if a dump.vcd is generated)
gtkwave dump.vcd
Example:

bash
iverilog -o test.vvp ALU/test_alu.v
vvp test.vvp
gtkwave dump.vcd
```
## 📂 Modules Included
ALU – Arithmetic and logic unit examples

Counter – Various counter designs

Full_Adder – Basic combinational adder circuits

Traffic_Controller – Simulates a traffic light controller

UART – Demonstrates UART communication logic

Each folder contains Verilog source files and simple testbenches for simulation.

## 🚀 Getting Started
Clone the repository:

bash
Copy code
git clone <repository-url>
Navigate to the folder of the module you want to simulate.

Compile, simulate, and visualize results as described in the Usage section.

##💡 Tips for Beginners
Always run simulations with GTKWave to see how signals change over time.

Start with simple modules like Full_Adder or Counter before moving to system-level projects.

Experiment by modifying input values in the testbench to see how your design responds.
