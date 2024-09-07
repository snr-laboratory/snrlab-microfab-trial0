v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Lengths are scaled to um} 140 -460 0 0 0.4 0.4 {}
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
N 730 -220 820 -220 {
lab=Vdo}
N 620 -390 620 -220 {
lab=Vt1}
N 620 -220 670 -220 {
lab=Vt1}
N 800 -410 820 -410 {
lab=Vdo}
N 820 -410 820 -220 {
lab=Vdo}
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
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vdsat]
save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[vdsat]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vth]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vdsat]

op
write CntDiffAmp1_tb.raw

dc Vcm 0.0 1.8 0.01
plot v(x1.Vbn1), v(x1.Vc1), v(x1.Vdo), v(Vbp1), v(Vbo) vs v(Vcm)
plot i(v.x1.Vm1) vs v(Vcm)
plot @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gm], @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm] vs V(Vcm)

set appendwrite
write CntDiffAmp1_tb.raw

ac dec 10 1 1e9
plot vdb(x1.Vdo), vdb(Vbo)

write CntDiffAmp1_tb.raw
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
C {devices/isource.sym} 720 -300 0 0 {name=I0 value=10n}
C {devices/lab_pin.sym} 950 -660 0 1 {name=p21 sig_type=std_logic lab=Vinn}
C {devices/vsource.sym} 520 -700 0 0 {name=Vdd value=1.8 only_toplevel=true}
C {devices/vsource.sym} 580 -700 0 0 {name=Vgnd value=0 only_toplevel=true}
C {devices/lab_pin.sym} 580 -750 0 0 {name=p23 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 520 -750 0 0 {name=p24 sig_type=std_logic lab=Vdd}
C {devices/gnd.sym} 520 -650 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 950 -770 0 0 {name=Vinp value="0.0" only_toplevel=true}
C {devices/vsource.sym} 950 -690 0 0 {name=Vinn value="0.0 ac 1" only_toplevel=true}
C {devices/lab_pin.sym} 950 -800 0 1 {name=p25 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} 820 -700 0 0 {name=Vph value=1.8 only_toplevel=true}
C {devices/lab_pin.sym} 820 -750 0 1 {name=p30 sig_type=std_logic lab=Vph}
C {devices/vsource.sym} 890 -700 0 0 {name=Vcm value=0.8 only_toplevel=true}
C {devices/lab_pin.sym} 950 -730 0 1 {name=p3 sig_type=std_logic lab=Vcm}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Yuan Mei"}
C {../Schematic/CntDiffAmp1.sym} 720 -410 0 0 {name=x1}
C {devices/lab_pin.sym} 720 -370 0 1 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 720 -350 0 1 {name=p2 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 720 -270 0 1 {name=p4 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 620 -430 0 0 {name=p5 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 560 -390 0 0 {name=p6 sig_type=std_logic lab=Vinn}
C {devices/lab_pin.sym} 820 -410 0 1 {name=p7 sig_type=std_logic lab=Vdo}
C {devices/lab_pin.sym} 720 -330 0 1 {name=p8 sig_type=std_logic lab=Vbp1}
C {devices/res.sym} 700 -220 1 0 {name=R1
value=1000G
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 590 -390 1 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 620 -330 0 1 {name=p10 sig_type=std_logic lab=Vt1}
C {../Schematic/CntDiffAmp1a.sym} 570 -970 0 0 {name=x2}
C {devices/lab_pin.sym} 570 -930 0 1 {name=p9 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 570 -910 0 1 {name=p11 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 470 -980 0 0 {name=p12 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 470 -950 0 0 {name=p13 sig_type=std_logic lab=Vinn}
