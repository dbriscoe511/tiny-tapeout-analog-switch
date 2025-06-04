v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 900 -185 900 -135 {
lab=VSS}
N 850 -350 900 -350 {
lab=SW_MINUS}
N 900 -350 900 -340 {
lab=SW_MINUS}
N 900 -350 940 -350 {
lab=SW_MINUS}
N 900 -270 900 -245 {
lab=#net1}
N 900 -340 900 -330 {
lab=SW_MINUS}
C {devices/launcher.sym} 120 -75 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/res.sym} 900 -215 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 900 -135 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 850 -390 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 940 -350 0 1 {name=p2 sig_type=std_logic lab=SW_MINUS}
C {devices/lab_pin.sym} 850 -410 0 1 {name=p3 lab=vdd}
C {devices/lab_pin.sym} 550 -410 0 0 {name=p4 lab=SW_ON}
C {devices/lab_pin.sym} 550 -350 0 0 {name=p5 lab=SW_PLUS}
C {devices/switch.sym} 900 -300 0 0 {name=G1 TABLE="1.0 1G 2.0 1m"}
C {devices/lab_pin.sym} 860 -280 2 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 860 -300 2 1 {name=p8 sig_type=std_logic lab=LOAD_ON}
C {sky130_fd_pr/corner.sym} 65 -315 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 65 -460 0 0 {name=stimuli only_toplevel=false value="*.option method = gear
*.option wnflag = 1
.param VCC = agauss(1.8,0.5,1)
.param w_swfet = 16
.option temp = aguass(40,30,1)
.include stimuli_tb_analog_switch.cir
.control
	option seed = 69
	let run = 0
	dowhile run <= 100
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
