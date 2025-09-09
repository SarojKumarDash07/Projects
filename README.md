# Projects
This repository showcases various projects carried out using both Cadence tools and open-source platforms such as Ngspice and Xschem, all implemented with the SkyWater 130nm (SKY130) PDK.

## Contents
- [1. In-Memory Computing Using 8T SRAM](#1-in-memory-computing-for-machine-learning-using-8t-sram)
- [2. Differential Amplifier](#2-Differential-Amplifier)
- [3. Operational Amplifier](#3-Operational-Amplifier)
- [4. Inverter Chain Design](#4-Inverter-Chain-Design)

## 1. In Memory Computing for Machine Learning Using 8T SRAM

## 2. Differential Amplifier
A differential amplifier amplifies the difference between two input signals while rejecting any voltage common to both (common-mode signal). It is a key building block in analog and mixed-signal circuits, valued for its noise immunity and stability.
- ### Advantages
  - High CMRR (rejects common-mode noise)
  - Better stability against supply variations
- ### Disadvantages
  - Requires matched components for ideal performance
  - More complex biasing than single-ended amplifiers
## Circuit Diagram
![Diagram](docs/ckt_dia_differ_amp.jpeg)

## DC Analysis
- Ngspice Code: [Netlist](netlist/Diff_Amp/DC_Analysis.sp)
### DC output of differntial amplifier
![Diagram](docs/DC_diff.png)

## AC Analysis
- Ngspice Code: [Netlist](netlist/Diff_Amp/AC_Analysis.sp)
### Gain of differntial amplifier
![Diagram](docs/gain_diff.png)
### Phase of differntial amplifier
![Diagram](docs/phase_differ.png)

## Transient Analysis
- Ngspice Code: [Netlist](netlist/Diff_Amp/Tran_Analysis.sp)
### Input of differntial amplifier
![Diagram](docs/ip_ac_differ.png)
### Amplified output of differntial amplifier
![Diagram](docs/op_ac_differn.png)

## 3. Operational Amplifier
## 4. Inverter Chain Design
