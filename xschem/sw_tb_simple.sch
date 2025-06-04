v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1215 -700 2015 -300 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="sw_minus
sw_plus"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1190 -1230 1990 -830 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 915 -195 915 -145 {
lab=VSS}
N 865 -360 915 -360 {
lab=SW_MINUS}
N 915 -360 915 -350 {
lab=SW_MINUS}
N 915 -360 955 -360 {
lab=SW_MINUS}
N 915 -280 915 -255 {
lab=SW_MINUS}
N 915 -350 915 -340 {
lab=SW_MINUS}
N 370 -510 410 -510 {
lab=VSS}
N 370 -570 410 -570 {
lab=vdd}
N 270 -510 370 -510 {
lab=VSS}
N 250 -570 270 -570 {
lab=SW_ON}
N 50 -510 150 -510 {
lab=VSS}
N 30 -570 50 -570 {
lab=SW_PLUS}
N 150 -510 270 -510 {
lab=VSS}
N 915 -340 915 -280 {
lab=SW_MINUS}
C {devices/launcher.sym} 135 -85 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/testbench.raw tran

"
}
C {devices/res.sym} 915 -225 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 915 -145 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 865 -400 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 955 -360 0 1 {name=p2 sig_type=std_logic lab=SW_MINUS}
C {devices/lab_pin.sym} 865 -420 0 1 {name=p3 lab=vdd}
C {devices/lab_pin.sym} 565 -420 0 0 {name=p4 lab=SW_ON}
C {devices/lab_pin.sym} 565 -360 0 0 {name=p5 lab=SW_PLUS}
C {sky130_fd_pr/corner.sym} 80 -325 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 80 -470 0 0 {name=stimuli only_toplevel=false value=".options gmin=1e-12 abstol=1e-12 reltol=1e-3
.options method=gear
.options maxord=2
R_SW_ON sw_on x1.nsw_on 1
R_LOAD sw_minus 0 1MEG
.control
.IC V(sw_on)=1.8 V(sw_plus)=1.8 V(sw_minus)=0
tran 100p 200n uic
write testbench.raw 
.endc
"}
C {analog_switch.sym} 715 -390 0 0 {name=x1}
C {devices/vsource.sym} 370 -540 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 405 -510 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 405 -570 0 1 {name=p10 lab=vdd}
C {devices/vsource.sym} 270 -540 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 255 -570 0 0 {name=p11 lab=SW_ON}
C {devices/vsource.sym} 50 -540 0 0 {name=V4 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 35 -570 0 0 {name=p12 lab=SW_PLUS}
