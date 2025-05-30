v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {Target 1mA switching current}
E {}
T {half size transistors for glitch compensation} 570 -330 0 0 0.4 0.4 {}
N -180 160 -180 190 {
lab=vss}
N -180 50 -180 80 {
lab=vdd}
N -290 -180 -200 -180 {
lab=vdd}
N -290 -140 -210 -140 {
lab=vss}
N -210 -140 -200 -140 {
lab=vss}
N -320 120 -260 120 {
lab=SW_ON}
N -260 80 -260 120 {
lab=SW_ON}
N -260 80 -220 80 {
lab=SW_ON}
N -260 120 -260 160 {
lab=SW_ON}
N -260 160 -220 160 {
lab=SW_ON}
N -180 110 -180 130 {
lab=~SW_ON}
N 90 130 200 130 {
lab=SW+}
N 200 30 200 130 {
lab=SW+}
N 200 30 230 30 {
lab=SW+}
N 200 130 200 240 {
lab=SW+}
N 200 240 230 240 {
lab=SW+}
N 290 30 340 30 {
lab=SW-}
N 340 30 340 240 {
lab=SW-}
N 290 240 340 240 {
lab=SW-}
N 340 140 440 140 {
lab=SW-}
N -180 130 -100 130 {
lab=~SW_ON}
N -180 190 -180 220 {
lab=vss}
N 230 30 260 30 {
lab=SW+}
N 260 240 290 240 {
lab=SW-}
N -100 130 -60 130 {
lab=~SW_ON}
N -60 130 -60 280 {
lab=~SW_ON}
N -60 280 260 280 {
lab=~SW_ON}
N -260 -20 -260 80 {
lab=SW_ON}
N -260 -20 260 -20 {
lab=SW_ON}
N 260 -20 260 -10 {
lab=SW_ON}
N 400 -320 400 -220 {
lab=SW-}
N 400 -320 430 -320 {
lab=SW-}
N 400 -220 400 -110 {
lab=SW-}
N 400 -110 430 -110 {
lab=SW-}
N 490 -320 540 -320 {
lab=SW-}
N 540 -320 540 -110 {
lab=SW-}
N 490 -110 540 -110 {
lab=SW-}
N 430 -320 460 -320 {
lab=SW-}
N 460 -110 490 -110 {
lab=SW-}
N 460 -370 460 -360 {
lab=~SW_ON}
N 400 -220 540 -220 {
lab=SW-}
N 260 -20 460 -20 {
lab=SW_ON}
N 460 -70 460 -20 {
lab=SW_ON}
N 400 20 400 140 {
lab=SW-}
N 400 20 540 20 {
lab=SW-}
N 540 -110 540 20 {
lab=SW-}
N 460 -370 580 -370 {
lab=~SW_ON}
C {devices/iopin.sym} -200 -180 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -200 -140 0 0 {name=p2 lab=vss
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -200 160 0 0 {name=M5
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -200 80 0 0 {name=M9
L=0.5
W=1
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 260 10 1 0 {name=M1
L=0.5
W=16
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 260 260 1 1 {name=M3
L=0.5
W=16
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} -320 120 0 0 {name=p3 lab=SW_ON}
C {devices/iopin.sym} 90 130 2 0 {name=p4 lab=SW+}
C {devices/iopin.sym} 440 140 0 0 {name=p5 lab=SW-}
C {devices/lab_wire.sym} -100 130 0 0 {name=p6 sig_type=std_logic lab=~SW_ON}
C {devices/lab_wire.sym} -210 -180 0 0 {name=p7 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} -210 -140 0 0 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -180 50 0 0 {name=p9 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} -180 220 0 0 {name=p10 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 460 -340 1 0 {name=M2
L=0.5
W=8
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 460 -90 1 1 {name=M4
L=0.5
W=8
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 570 -370 0 0 {name=p11 sig_type=std_logic lab=~SW_ON}
