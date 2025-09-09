# Projects
This repository showcases various projects carried out using both Cadence tools and open-source platforms such as Ngspice and Xschem, all implemented with the SkyWater 130nm (SKY130) PDK.
## In-Memory Computing for Machine Learning Using 8T SRAM

## Differential Amplifier
- A differential amplifier is a type of electronic amplifier that amplifies the difference between two input signals while rejecting any voltage common to both inputs (called common-mode signals).
- It’s one of the most fundamental building blocks in analog and mixed-signal circuits.
### Advantages
- High CMRR
- Better stability
### Disadvantages
- Requires matched components for ideal operation.
- More complex biasing compared to single-ended amplifiers.
## Circuit Diagram
![Diagram](docs/ckt_dia_differ_amp.jpeg)

## DC Analysis
- Check Netlist: ![Netlist](netlist/Diff_Amp/DC_Analysis.sp)
### DC output of differntial amplifier
![Diagram](docs/DC_diff.png)

## AC Analysis
- Check Netlist: ![Netlist](netlist/Diff_Amp/AC_Analysis.sp)
### Gain of differntial amplifier
![Diagram](docs/gain_diff.png)
### Phase of differntial amplifier
![Diagram](docs/phase_differ.png)

## Transient Analysis
- Check Netlist: ![Netlist](netlist/Diff_Amp/Tran_Analysis.sp)
### Input of differntial amplifier
![Diagram](docs/ip_ac_differ.png)
### Amplified output of differntial amplifier
![Diagram](docs/op_ac_differn.png)

## Operational Amplifier
## Inverter Chain Design
