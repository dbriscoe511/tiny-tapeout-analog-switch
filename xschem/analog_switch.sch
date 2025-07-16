v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {half size transistors for glitch compensation} 570 -330 0 0 0.4 0.4 {}
N -290 -180 -200 -180 {
lab=vdd}
N -290 -140 -210 -140 {
lab=vss}
N -210 -140 -200 -140 {
lab=vss}
N 90 130 200 130 {
lab=SW_MINUS}
N 200 30 200 130 {
lab=SW_MINUS}
N 200 30 230 30 {
lab=SW_MINUS}
N 200 130 200 240 {
lab=SW_MINUS}
N 200 240 230 240 {
lab=SW_MINUS}
N 290 30 340 30 {
lab=SW_PLUS}
N 340 30 340 240 {
lab=SW_PLUS}
N 290 240 340 240 {
lab=SW_PLUS}
N 340 140 440 140 {
lab=SW_PLUS}
N 230 30 260 30 {
lab=SW_MINUS}
N 260 240 290 240 {
lab=SW_PLUS}
N -60 280 260 280 {
lab=nSW_ON}
N -260 -20 260 -20 {
lab=SW_ON_BUF}
N 260 -20 260 -10 {
lab=SW_ON_BUF}
N 400 -320 400 -220 {
lab=SW_MINUS}
N 400 -320 430 -320 {
lab=SW_MINUS}
N 400 -110 430 -110 {
lab=SW_MINUS}
N 490 -320 540 -320 {
lab=SW_MINUS}
N 490 -110 540 -110 {
lab=SW_MINUS}
N 430 -320 460 -320 {
lab=SW_MINUS}
N 460 -110 490 -110 {
lab=SW_MINUS}
N 460 -370 460 -360 {
lab=nSW_ON}
N 400 -220 540 -220 {
lab=SW_MINUS}
N 260 -20 460 -20 {
lab=SW_ON_BUF}
N 460 -70 460 -20 {
lab=SW_ON_BUF}
N 460 -370 580 -370 {
lab=nSW_ON}
N 200 -150 400 -150 {
lab=SW_MINUS}
N -365 160 -365 190 {
lab=vss}
N -365 50 -365 80 {
lab=vdd}
N -505 120 -445 120 {
lab=#net1}
N -445 80 -445 120 {
lab=#net1}
N -445 80 -405 80 {
lab=#net1}
N -445 120 -445 160 {
lab=#net1}
N -445 160 -405 160 {
lab=#net1}
N -365 110 -365 130 {
lab=SW_ON_BUF}
N -365 130 -285 130 {
lab=SW_ON_BUF}
N -365 190 -365 220 {
lab=vss}
N -585 150 -585 180 {
lab=vss}
N -585 40 -585 70 {
lab=vdd}
N -725 110 -665 110 {
lab=SW_ON}
N -665 70 -665 110 {
lab=SW_ON}
N -665 70 -625 70 {
lab=SW_ON}
N -665 110 -665 150 {
lab=SW_ON}
N -665 150 -625 150 {
lab=SW_ON}
N -585 100 -585 120 {
lab=#net1}
N -585 120 -505 120 {
lab=#net1}
N -585 180 -585 210 {
lab=vss}
N 540 -320 540 -220 {
lab=SW_MINUS}
N 400 -150 400 -110 {
lab=SW_MINUS}
N 540 -135 540 -110 {
lab=SW_MINUS}
N 540 -150 540 -135 {
lab=SW_MINUS}
N 400 -220 400 -150 {
lab=SW_MINUS}
N -180 160 -180 190 {
lab=vss}
N -180 50 -180 80 {
lab=vdd}
N -260 80 -260 120 {
lab=SW_ON_BUF}
N -260 80 -220 80 {
lab=SW_ON_BUF}
N -260 120 -260 160 {
lab=SW_ON_BUF}
N -260 160 -220 160 {
lab=SW_ON_BUF}
N -180 110 -180 130 {
lab=nSW_ON}
N -180 190 -180 220 {
lab=vss}
N -180 120 -80 120 {
lab=nSW_ON}
N 200 -150 200 -140 {
lab=SW_MINUS}
N -285 130 -260 130 {}
N -260 -20 -260 80 {}
N -80 120 -80 280 {}
N -80 280 -60 280 {}
N 540 -220 540 -150 {}
N 200 -140 200 30 {}
C {devices/iopin.sym} -200 -180 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -200 -140 0 0 {name=p2 lab=vss
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 260 10 1 0 {name=M1
L=15
W=16
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 260 260 1 1 {name=M3
L=15
W=16
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} -725 110 0 0 {name=p3 lab=SW_ON}
C {devices/iopin.sym} 90 130 2 0 {name=p4 lab=SW_MINUS}
C {devices/iopin.sym} 440 140 0 0 {name=p5 lab=SW_PLUS}
C {devices/lab_wire.sym} 35 280 0 0 {name=p6 sig_type=std_logic lab=nSW_ON}
C {devices/lab_wire.sym} -210 -180 0 0 {name=p7 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} -210 -140 0 0 {name=p8 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 460 -340 1 0 {name=M2
L=15
W=16
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 460 -90 1 1 {name=M4
L=15
W=16
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 570 -370 0 0 {name=p11 sig_type=std_logic lab=nSW_ON}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -385 160 0 0 {name=M6
L=0.5
W=2
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -385 80 0 0 {name=M7
L=0.5
W=2
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} -365 50 0 0 {name=p12 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} -365 220 0 0 {name=p13 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -605 150 0 0 {name=M8
L=0.5
W=2
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -605 70 0 0 {name=M10
L=0.5
W=2
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} -585 40 0 0 {name=p14 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} -585 210 0 0 {name=p15 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -115 -20 0 0 {name=p16 sig_type=std_logic lab=SW_ON_BUF}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -200 160 0 0 {name=M5
L=0.5
W=2
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -200 80 0 0 {name=M9
L=0.5
W=2
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} -180 50 0 0 {name=p9 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} -180 220 0 0 {name=p10 sig_type=std_logic lab=vss}
