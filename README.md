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
- 
## Circuit Diagram
![Diagram](docs/ckt_dia_differ_amp.jpeg)
## DC Analysis
```
*dc analysis differntial amplifier using NMOS
.lib "/home/manas6008/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.temp 25
Vdd d 0 1.8
XM1 g1  g1 d  d sky130_fd_pr__pfet_01v8_lvt  L=8 W=7 m=10
XM2 n1  g1 d  d sky130_fd_pr__pfet_01v8_lvt  L=8 W=7 m=10
XM3 g1  n3  n2  0 sky130_fd_pr__nfet_01v8_lvt  L=0.5 W=7
XM4 n1  n3  n7  0 sky130_fd_pr__nfet_01v8_lvt  L=0.5 W=7
Vn  n3 0 1.25 
Iref 0 n4  50u
XM5 n4  n4  0  0 sky130_fd_pr__nfet_01v8_lvt  L=4 W=5 m=10
XM6 n8  n4  0  0 sky130_fd_pr__nfet_01v8_lvt  L=4 W=5 m=10
C1 n1 0 500f
V1 n2 n6 0
V2 n7 n6 0
V3 n6 n8 0
.op
.control
run
*dc Vn 0 1.8 0.01
*plot v(n1)
print v(n2)
print v(g1)
print v(n1)
print i(vdd)
print i(V1)
print i(V2)
print i(v3)
.endc
.end
```
### DC output of differntial amplifier
![Diagram](docs/DC_diff.png)
## AC Analysis
```
* ac analysis differntial amplifier using NMOS
.lib "/home/manas6008/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.temp 25
Vdd d 0 1.8
XM1 g1  g1 d  d sky130_fd_pr__pfet_01v8_lvt  L=8 W=7 m=10
XM2 n1  g1 d  d sky130_fd_pr__pfet_01v8_lvt  L=8 W=7 m=10
XM3 g1  n3  n2  0 sky130_fd_pr__nfet_01v8_lvt  L=.5 W=7
XM4 n1  n5  n7  0 sky130_fd_pr__nfet_01v8_lvt  L=.5 W=7
Vn  n3 0 1.25 ac 0.5
Vp  n5 0 1.25 ac -0.5
Iref 0 n4  50u
XM5 n4  n4  0  0 sky130_fd_pr__nfet_01v8_lvt  L=4 W=5 m=10
XM6 n8  n4  0  0 sky130_fd_pr__nfet_01v8_lvt  L=4 W=5 m=10
C1 n1 0 500f
V1 n2 n6 0
V2 n7 n6 0
V3 n6 n8 0
.ac dec 10 1 15meg
.control
run
plot (180/3.141)*ph(n1)
plot vdb(n1)
.endc
.end
```
### Gain of differntial amplifier
![Diagram](docs/gain_diff.png)
### Phase of differntial amplifier
![Diagram](docs/phase_differ.png)
## Transient Analysis
```
* Transient analysis differntial amplifier using NMOS
.lib "/home/manas6008/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.temp 25
Vdd d 0 1.8
XM1 g1  g1 d  d sky130_fd_pr__pfet_01v8_lvt  L=8 W=7 m=10
XM2 n1  g1 d  d sky130_fd_pr__pfet_01v8_lvt  L=8 W=7 m=10
XM3 g1  n3  n2  0 sky130_fd_pr__nfet_01v8_lvt  L=.5 W=7
XM4 n1  n5  n7  0 sky130_fd_pr__nfet_01v8_lvt  L=.5 W=7
Vn  n3 0 sin(1.25 5m 10k)
Vp  n5 0 sin(1.25 5m 10k 0 0 180)
Iref 0 n4  50u
XM5 n4  n4  0  0 sky130_fd_pr__nfet_01v8_lvt  L=4 W=5 m=10
XM6 n8  n4  0  0 sky130_fd_pr__nfet_01v8_lvt  L=4 W=5 m=10
C1 n1 0 500f
V1 n2 n6 0
V2 n7 n6 0
V3 n6 n8 0
.tran 0.1u 100u
.control
run
plot v(n3) v(n5)
plot v(n1)
.endc
.end
```
### Input of differntial amplifier
![Diagram](docs/ip_ac_differ.png)
### Amplified output of differntial amplifier
![Diagram](docs/op_ac_differn.png)
## Operational Amplifier
## Inverter Chain Design
