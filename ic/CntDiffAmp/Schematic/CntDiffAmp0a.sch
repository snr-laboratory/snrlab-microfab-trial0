v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Lengths are scaled to um} 140 -460 0 0 0.4 0.4 {}
N 860 -520 980 -520 {
lab=Vc1}
N 980 -520 980 -500 {
lab=Vc1}
N 740 -420 740 -400 {
lab=Vbn1}
N 980 -420 980 -400 {
lab=Vdo}
N 740 -340 740 -320 {
lab=Vss}
N 740 -320 980 -320 {
lab=Vss}
N 980 -340 980 -320 {
lab=Vss}
N 860 -370 940 -370 {
lab=Vbn1}
N 860 -540 860 -520 {
lab=Vc1}
N 740 -520 860 -520 {
lab=Vc1}
N 740 -420 860 -420 {
lab=Vbn1}
N 860 -420 860 -370 {
lab=Vbn1}
N 780 -370 860 -370 {
lab=Vbn1}
N 540 -620 540 -600 {
lab=Vdd}
N 540 -620 860 -620 {
lab=Vdd}
N 860 -620 860 -600 {
lab=Vdd}
N 600 -570 820 -570 {
lab=Vbp1}
N 540 -520 540 -400 {
lab=Vbp1}
N 540 -340 540 -320 {
lab=Vss}
N 540 -320 740 -320 {
lab=Vss}
N 980 -420 1020 -420 {
lab=Vdo}
N 980 -440 980 -420 {
lab=Vdo}
N 500 -570 540 -570 {
lab=Vdd}
N 700 -370 740 -370 {
lab=Vss}
N 940 -470 980 -470 {
lab=Vdd}
N 860 -570 900 -570 {
lab=Vdd}
N 980 -370 1020 -370 {
lab=Vss}
N 600 -570 600 -520 {
lab=Vbp1}
N 580 -570 600 -570 {
lab=Vbp1}
N 540 -520 600 -520 {
lab=Vbp1}
N 540 -540 540 -520 {
lab=Vbp1}
N 540 -860 540 -840 {
lab=Vdd}
N 540 -770 540 -760 {
lab=GND}
N 600 -860 600 -840 {
lab=Vss}
N 540 -780 540 -770 {
lab=GND}
N 600 -780 600 -770 {
lab=GND}
N 540 -770 600 -770 {
lab=GND}
N 600 -770 840 -770 {
lab=GND}
N 840 -780 840 -770 {
lab=GND}
N 840 -860 840 -840 {
lab=#net1}
N 840 -770 910 -770 {
lab=GND}
N 910 -780 910 -770 {
lab=GND}
N 970 -840 970 -830 {
lab=Vcm}
N 910 -840 970 -840 {
lab=Vcm}
N 970 -850 970 -840 {
lab=Vcm}
N 860 -620 1170 -620 {
lab=Vdd}
N 1170 -620 1170 -600 {
lab=Vdd}
N 1170 -570 1210 -570 {
lab=Vdd}
N 1110 -570 1130 -570 {
lab=Vbp1}
N 980 -320 1170 -320 {
lab=Vss}
N 1170 -340 1170 -320 {
lab=Vss}
N 1170 -540 1170 -520 {
lab=#net2}
N 1110 -370 1130 -370 {
lab=Vdo}
N 1170 -370 1210 -370 {
lab=Vss}
N 1170 -440 1170 -400 {
lab=Vbo}
N 540 -210 580 -210 {
lab=Vss}
N 480 -210 500 -210 {
lab=Vc1}
N 740 -210 780 -210 {
lab=Vdd}
N 680 -210 700 -210 {
lab=Vbn1}
N 540 -260 540 -240 {
lab=Vdd}
N 740 -180 740 -160 {
lab=Vss}
N 540 -180 540 -160 {
lab=Vc1s}
N 740 -260 740 -240 {
lab=Vbn1s}
N 1320 -570 1360 -570 {
lab=Vss}
N 1170 -620 1320 -620 {
lab=Vdd}
N 1320 -620 1320 -600 {
lab=Vdd}
N 1170 -440 1260 -440 {
lab=Vbo}
N 1170 -460 1170 -440 {
lab=Vbo}
N 1260 -570 1260 -440 {
lab=Vbo}
N 1260 -570 1280 -570 {
lab=Vbo}
N 980 -210 1020 -210 {
lab=Vdd}
N 920 -210 940 -210 {
lab=Vdo}
N 980 -180 980 -160 {
lab=Vss}
N 980 -260 980 -240 {
lab=Vdos}
N 1320 -540 1320 -520 {
lab=Vbos}
C {sky130_fd_pr/corner.sym} 20 -430 0 0 {name=CORNER only_toplevel=true corner=tt
lvs_format=" "}
C {devices/launcher.sym} 90 -270 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 90 -230 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code_shown.sym} 1640 -780 0 0 {name=NGSPICE
only_toplevel=true
lvs_format=" "
value="* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1
.option savecurrents acct abstol=1e-15
*reltol=1e-6
*gmin=1e-15

.control
save all
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vdsat]
save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[vdsat]
save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[vth]
save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[vdsat]

op
write CntDiffAmp0.raw

dc Vcm 0.0 1.8 0.01
plot v(Vdo), v(Vbo) vs v(Vcm)
plot v(Vc1), v(Vbp1), v(Vbn1) vs v(Vcm)
plot @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm], @m.xm4.msky130_fd_pr__nfet_01v8_lvt[gm] vs V(Vcm)

dc Vinp -1.0 1.0 0.01
plot v(Vdo), v(Vbo) vs v(Vinp)

set appendwrite
write CntDiffAmp0.raw

ac dec 10 1 1e9
plot vdb(Vdo), vdb(Vbo)

write CntDiffAmp0.raw
.endc
"
}
C {devices/code.sym} 20 -580 0 0 {name=MODEL
only_toplevel=true
place=beginning
lvs_format=" "
value="
** CntFET model
.subckt cntnfet_a d g s b
.param l=1 w=0.01 mult=1
mcntnfet_a d g s b cntnfet l=\{l\} w=\{w\}
* BSIM4 model
.model cntnfet nmos
+ level=54 version=4.8.2
+ toxe=7e-9
.ends cntnfet_a

.subckt cntpfet_a d g s b
.param l=1 w=0.01 mult=1
mcntpfet_a d g s b cntpfet l=\{l\} w=\{w\}
* BSIM4 model
.model cntpfet pmos
+ level=54 version=4.8.2
+ toxe=100e-9 U0=1.09e-4 VTH0=-2.02
.ends cntnfet_a

.model cntnfet_b nmos level=54 version=4.8.2 toxe=5e-9
.model cntpfet_b nmos level=54 version=4.8.2 toxe=5e-9
"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 960 -370 0 0 {name=M5
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 760 -370 0 1 {name=M4
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 540 -320 0 0 {name=p12 sig_type=std_logic lab=Vss}
C {devices/isource.sym} 540 -370 0 0 {name=I0 value=10n only_toplevel=true}
C {devices/lab_pin.sym} 1020 -420 0 1 {name=p13 sig_type=std_logic lab=Vdo}
C {devices/lab_pin.sym} 540 -620 0 0 {name=p14 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 700 -370 0 0 {name=p16 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 1020 -370 0 1 {name=p17 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 900 -570 0 1 {name=p19 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 940 -470 0 0 {name=p15 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 500 -570 0 0 {name=p20 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 970 -770 0 1 {name=p21 sig_type=std_logic lab=Vinn}
C {devices/vsource.sym} 540 -810 0 0 {name=Vdd value=1.8 only_toplevel=true
lvs_format=" "}
C {devices/vsource.sym} 600 -810 0 0 {name=Vgnd value=0 only_toplevel=true
lvs_format=" "}
C {devices/lab_pin.sym} 600 -860 0 0 {name=p23 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 540 -860 0 0 {name=p24 sig_type=std_logic lab=Vdd}
C {devices/gnd.sym} 540 -760 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 970 -880 0 0 {name=Vinp value="0.0 ac 1" only_toplevel=true
lvs_format=" "}
C {devices/vsource.sym} 970 -800 0 0 {name=Vinn value=0.0 only_toplevel=true
lvs_format=" "}
C {devices/lab_pin.sym} 970 -910 0 1 {name=p25 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 1020 -470 0 1 {name=p26 sig_type=std_logic lab=Vinn}
C {devices/lab_pin.sym} 540 -520 0 0 {name=p27 sig_type=std_logic lab=Vbp1}
C {devices/lab_pin.sym} 860 -420 0 1 {name=p28 sig_type=std_logic lab=Vbn1}
C {devices/lab_pin.sym} 980 -520 0 1 {name=p29 sig_type=std_logic lab=Vc1}
C {devices/vsource.sym} 840 -810 0 0 {name=Vph value=1.8 only_toplevel=true
lvs_format=" "}
C {devices/vsource.sym} 910 -810 0 0 {name=Vcm value=0.8 only_toplevel=true
lvs_format=" "}
C {devices/ngspice_get_value.sym} 800 -620 0 0 {name=r1 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 860 -620 0 0 {name=r2 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vdsat])
descr="vdsat="}
C {devices/ngspice_get_value.sym} 690 -290 0 0 {name=r3 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 740 -290 0 0 {name=r4 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8_lvt[vdsat])
descr="vdsat="}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 840 -570 0 0 {name=M1
L=2
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 560 -570 0 1 {name=M6
L=2
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1000 -470 0 1 {name=M3
L=2
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1150 -570 0 0 {name=M7
L=2
W=100
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1210 -570 0 1 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 1110 -570 0 0 {name=p2 sig_type=std_logic lab=Vbp1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1150 -370 0 0 {name=M8
L=1
W=100
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/ammeter.sym} 1170 -490 0 0 {name=Vm1}
C {devices/lab_pin.sym} 1170 -420 0 1 {name=p4 sig_type=std_logic lab=Vbo}
C {devices/lab_pin.sym} 1210 -370 0 1 {name=p5 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 970 -840 0 1 {name=p3 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 1110 -370 0 0 {name=p6 sig_type=std_logic lab=Vdo}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Yuan Mei"}
C {devices/iopin.sym} 60 -860 0 0 {name=pio4 lab=Vc1 sim_pinnumber=4}
C {devices/opin.sym} 60 -890 0 0 {name=pio3 lab=Vbo sim_pinnumber=3}
C {devices/ipin.sym} 80 -830 0 0 {name=pio5 lab=Vinn sim_pinnumber=5}
C {devices/iopin.sym} 60 -950 0 0 {name=pio1 lab=Vdd sim_pinnumber=1}
C {devices/iopin.sym} 60 -920 0 0 {name=pio2 lab=Vss sim_pinnumber=2}
C {devices/iopin.sym} 60 -800 0 0 {name=pio6 lab=Vbp1 sim_pinnumber=6}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 520 -210 0 0 {name=M9
L=1
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 580 -210 0 1 {name=p30 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 480 -210 0 0 {name=p32 sig_type=std_logic lab=Vc1}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 720 -210 0 0 {name=M10
L=2
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 780 -210 0 1 {name=p33 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 680 -210 0 0 {name=p34 sig_type=std_logic lab=Vbn1}
C {devices/lab_pin.sym} 540 -160 0 1 {name=p35 sig_type=std_logic lab=Vc1s}
C {devices/lab_pin.sym} 740 -260 0 1 {name=p36 sig_type=std_logic lab=Vbn1s}
C {devices/opin.sym} 60 -770 0 0 {name=pio7 lab=Vc1s sim_pinnumber=7}
C {devices/opin.sym} 60 -740 0 0 {name=pio8 lab=Vbn1s sim_pinnumber=8}
C {devices/lab_pin.sym} 540 -260 0 0 {name=p39 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 740 -160 0 0 {name=p40 sig_type=std_logic lab=Vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1300 -570 0 0 {name=M11
L=1
W=100
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1360 -570 0 1 {name=p41 sig_type=std_logic lab=Vss}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 960 -210 0 0 {name=M12
L=2
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1020 -210 0 1 {name=p42 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 920 -210 0 0 {name=p43 sig_type=std_logic lab=Vdo}
C {devices/lab_pin.sym} 980 -260 0 1 {name=p44 sig_type=std_logic lab=Vdos}
C {devices/lab_pin.sym} 980 -160 0 0 {name=p45 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 1320 -520 0 1 {name=p46 sig_type=std_logic lab=Vbos}
C {devices/opin.sym} 60 -710 0 0 {name=pio9 lab=Vdos sim_pinnumber=9}
C {devices/opin.sym} 60 -680 0 0 {name=pio10 lab=Vbos sim_pinnumber=10}
C {devices/iopin.sym} 120 -860 0 0 {name=pio11 lab=Vbn1 sim_pinnumber=11}
