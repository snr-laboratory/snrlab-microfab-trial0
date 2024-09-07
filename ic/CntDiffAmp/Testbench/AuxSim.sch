v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Lengths are scaled to um} 140 -460 0 0 0.4 0.4 {}
N 520 -510 520 -490 {
lab=Vdd}
N 520 -510 730 -510 {
lab=Vdd}
N 520 -410 520 -290 {
lab=Vbp1}
N 520 -230 520 -210 {
lab=Vss}
N 520 -210 730 -210 {
lab=Vss}
N 480 -460 520 -460 {
lab=Vdd}
N 580 -460 580 -410 {
lab=Vbp1}
N 560 -460 580 -460 {
lab=Vbp1}
N 520 -410 580 -410 {
lab=Vbp1}
N 520 -430 520 -410 {
lab=Vbp1}
N 520 -750 520 -730 {
lab=Vdd}
N 520 -660 520 -650 {
lab=GND}
N 580 -750 580 -730 {
lab=Vss}
N 520 -670 520 -660 {
lab=GND}
N 580 -670 580 -660 {
lab=GND}
N 520 -660 580 -660 {
lab=GND}
N 580 -660 820 -660 {
lab=GND}
N 820 -670 820 -660 {
lab=GND}
N 820 -750 820 -730 {
lab=Vph}
N 820 -660 890 -660 {
lab=GND}
N 890 -670 890 -660 {
lab=GND}
N 950 -730 950 -720 {
lab=Vcm}
N 890 -730 950 -730 {
lab=Vcm}
N 950 -740 950 -730 {
lab=Vcm}
N 730 -510 730 -490 {
lab=Vdd}
N 730 -460 770 -460 {
lab=Vdd}
N 670 -460 690 -460 {
lab=Vbp1}
N 730 -230 730 -210 {
lab=Vss}
N 730 -430 730 -410 {
lab=#net1}
N 670 -260 690 -260 {
lab=Vinp}
N 730 -260 770 -260 {
lab=Vss}
N 730 -350 730 -290 {
lab=Vout}
N 900 -260 940 -260 {
lab=Vss}
N 900 -230 900 -210 {
lab=Vss}
N 730 -210 900 -210 {
lab=Vss}
N 900 -300 900 -290 {
lab=Vbn1}
N 850 -300 900 -300 {
lab=Vbn1}
N 900 -310 900 -300 {
lab=Vbn1}
N 850 -300 850 -260 {
lab=Vbn1}
N 850 -260 860 -260 {
lab=Vbn1}
N 730 -510 900 -510 {
lab=Vdd}
N 900 -510 900 -370 {
lab=Vdd}
C {sky130_fd_pr/corner.sym} 20 -430 0 0 {name=CORNER only_toplevel=true corner=tt}
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
C {devices/code_shown.sym} 1100 -840 0 0 {name=NGSPICE
only_toplevel=true
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
save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vth]
save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vdsat]

op
write AuxSim.raw

dc Vcm 0.0 1.8 0.01
plot v(Vout), v(Vbp1) vs v(Vcm)
plot i(Vm1) vs v(Vcm)
plot @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm], @m.xm3.msky130_fd_pr__nfet_01v8_lvt[gm] vs V(Vcm)

set appendwrite
write AuxSim.raw

ac dec 10 1 1e9
plot db(v(Vout))

write AuxSim.raw
.endc
"
}
C {devices/code.sym} 20 -580 0 0 {name=MODEL
only_toplevel=true
place=beginning
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
C {devices/lab_pin.sym} 520 -210 0 0 {name=p12 sig_type=std_logic lab=Vss}
C {devices/isource.sym} 520 -260 0 0 {name=I0 value=10n}
C {devices/lab_pin.sym} 520 -510 0 0 {name=p14 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 480 -460 0 0 {name=p20 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 950 -660 0 1 {name=p21 sig_type=std_logic lab=Vinn}
C {devices/vsource.sym} 520 -700 0 0 {name=Vdd value=1.8 only_toplevel=true}
C {devices/vsource.sym} 580 -700 0 0 {name=Vgnd value=0 only_toplevel=true}
C {devices/lab_pin.sym} 580 -750 0 0 {name=p23 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 520 -750 0 0 {name=p24 sig_type=std_logic lab=Vdd}
C {devices/gnd.sym} 520 -650 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 950 -770 0 0 {name=Vinp value="0.0 ac 1" only_toplevel=true}
C {devices/vsource.sym} 950 -690 0 0 {name=Vinn value=0.0 only_toplevel=true}
C {devices/lab_pin.sym} 950 -800 0 1 {name=p25 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 520 -410 0 0 {name=p27 sig_type=std_logic lab=Vbp1}
C {devices/vsource.sym} 820 -700 0 0 {name=Vph value=1.8 only_toplevel=true}
C {devices/lab_pin.sym} 820 -750 0 1 {name=p30 sig_type=std_logic lab=Vph}
C {devices/vsource.sym} 890 -700 0 0 {name=Vcm value=0.8 only_toplevel=true}
C {devices/ngspice_get_value.sym} 690 -510 0 0 {name=r1 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 740 -510 0 0 {name=r2 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[vdsat])
descr="vdsat="}
C {devices/ngspice_get_value.sym} 690 -180 0 0 {name=r3 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 740 -180 0 0 {name=r4 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8_lvt[vdsat])
descr="vdsat="}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 540 -460 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 710 -460 0 0 {name=M2
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
C {devices/lab_pin.sym} 770 -460 0 1 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 670 -460 0 0 {name=p2 sig_type=std_logic lab=Vbp1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 710 -260 0 0 {name=M3
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
C {devices/ammeter.sym} 730 -380 0 0 {name=Vm1}
C {devices/lab_pin.sym} 730 -310 0 1 {name=p4 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 770 -260 0 1 {name=p5 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 950 -730 0 1 {name=p3 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 670 -260 0 0 {name=p6 sig_type=std_logic lab=Vinp}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Yuan Mei"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 880 -260 0 0 {name=M4
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
C {devices/lab_pin.sym} 940 -260 0 1 {name=p7 sig_type=std_logic lab=Vss}
C {devices/isource.sym} 900 -340 0 0 {name=I1 value=\{3.735n/2\}}
C {devices/lab_pin.sym} 850 -300 0 0 {name=p8 sig_type=std_logic lab=Vbn1}
