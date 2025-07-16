v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1190 -490 1990 -90 {flags=graph
y1=0
y2=3.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2669545e-06
x2=8.733046e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="sw_on
sw_minus"
color="6 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1190 -920 1990 -520 {flags=graph
y1=0
y2=3.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2669545e-06
x2=8.733046e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="sw_plus
sw_minus
vdd"
color="5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N 900 -185 900 -135 {
lab=VSS}
N 850 -350 900 -350 {
lab=SW_MINUS}
N 900 -350 900 -340 {
lab=SW_MINUS}
N 900 -350 940 -350 {
lab=SW_MINUS}
N 900 -270 900 -245 {
lab=SW_MINUS}
N 900 -340 900 -330 {
lab=SW_MINUS}
N 900 -330 900 -270 {
lab=SW_MINUS}
C {devices/launcher.sym} 120 -75 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/tb_analog_switch_tran.raw tran

"
}
C {devices/res.sym} 900 -215 0 0 {name=R1
value=400k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 900 -135 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 850 -390 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 940 -350 0 1 {name=p2 sig_type=std_logic lab=SW_MINUS}
C {devices/lab_pin.sym} 850 -410 0 1 {name=p3 lab=vdd}
C {devices/lab_pin.sym} 550 -410 0 0 {name=p4 lab=SW_ON}
C {devices/lab_pin.sym} 550 -350 0 0 {name=p5 lab=SW_PLUS}
C {sky130_fd_pr/corner.sym} 65 -315 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 65 -470 0 0 {name=stimuli only_toplevel=false value="*.option method = gear
*.option wnflag = 1
.options gmin=1e-12 abstol=1e-12 reltol=1e-3
.options method=gear
.options maxord=2
.param VCCgauss = agauss(1.8,0.5,1)
.param VCC = 3
.option temp = aguass(40,30,1)
.include stimuli_tb_analog_switch.cir
.control
	option seed = 69
	let run = 0
	dowhile run <= 1
		save all
		tran 1n 8u uic
		remzerovec
		write tb_analog_switch_tran.raw
		set appendwrite
		reset
		let run = run +1
	end
.endc

"}
C {analog_switch.sym} 700 -380 0 0 {name=x1}
