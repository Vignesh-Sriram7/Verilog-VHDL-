# Verilog Learning Collection 

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![Simulation](https://img.shields.io/badge/Simulation-Icarus%20Verilog-orange)


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

# Example:
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

