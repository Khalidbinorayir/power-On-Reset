v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1070 -1600 -270 -1200 {flags=graph
y1=-4.04e-07
y2=1.7999997
ypos1=-4.6e-09
ypos2=6.5e-05
divy=5
subdivy=1
unity=1
x1=-1.5413054e-07
x2=9.84587e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="VA
VDD 
N26
N46
n16"
color="7 4 6 9 8"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
B 2 -1080 -1060 -280 -660 {flags=graph
y1=0

ypos1=-4.6e-09
ypos2=6.5e-05
divy=5
subdivy=1
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out_pex
color=16
dataset=-1
unitx=1
logx=0
logy=0
digital=0
y2=4

x1=-1.5413054e-07
x2=9.84587e-06}
B 2 -1060 -530 -260 -130 {flags=graph


ypos1=-4.6e-09
ypos2=6.5e-05
divy=5
subdivy=1
unity=1
x1=-1.5413054e-07
x2=9.84587e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
digital=0
y2=300U
color=4
node=I(vmeas)
y1=0}
B 2 240 -1870 1040 -1470 {flags=graph
y1=0
y2=4
ypos1=-4.6e-09
ypos2=6.5e-05
divy=5
subdivy=1
unity=1
x1=-1.5413054e-07

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=Vout
color=7
dataset=-1
unitx=1
logx=0
logy=0
digital=0
x2=9.84587e-06}
N 110 -440 110 -410 {
lab=VSS}
N 110 -350 110 -310 {
lab=GND}
N -30 -350 -30 -310 {
lab=GND}
N -30 -440 -30 -410 {
lab=#net1}
N -30 -530 -30 -500 {
lab=VDD}
N 240 -700 240 -670 {
lab=VSS}
N 260 -890 260 -860 {
lab=VDD}
N 400 -730 420 -730 {
lab=Vout}
N 400 -770 420 -770 {
lab=Vb}
N 400 -810 420 -810 {
lab=Va}
N 80 -770 100 -770 {
lab=PAD}
N 350 -1320 350 -1290 {
lab=VDD}
N 160 -1200 180 -1200 {
lab=PAD}
N 180 -1200 190 -1200 {
lab=PAD}
N 330 -1130 330 -1100 {
lab=VSS}
N 490 -1240 510 -1240 {
lab=Vap}
N 490 -1200 510 -1200 {
lab=Vbp}
N 490 -1160 510 -1160 {
lab=out_pex}
C {devices/vsource.sym} -30 -380 0 0 {name=VDD value="pwl 0 0  1u 1.8" savecurrent=false}
C {devices/gnd.sym} -30 -310 0 0 {name=l3 lab=GND}
C {devices/code.sym} 910 -1150 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 920 -1000 0 0 {name=s1 only_toplevel=false value=
"
.options acct list savecurrents numdgt=14
.temp = -40
.include /home/rga1/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
save all
save @m.xm6.msky130_fd_pr__pfet_01v8[Vgs]
save @m.xm6.msky130_fd_pr__pfet_01v8[Vds]
save @m.xm6.msky130_fd_pr__pfet_01v8[Vth]
save @m.xm6.msky130_fd_pr__pfet_01v8[gm]
save @m.xm5.msky130_fd_pr__pfet_01v8[Vgs]
save @m.xm5.msky130_fd_pr__pfet_01v8[Vds]
save @m.xm5.msky130_fd_pr__pfet_01v8[Vth]
save @m.xm5.msky130_fd_pr__pfet_01v8[gm]
save @m.xm4.msky130_fd_pr__pfet_01v8[vgs]
save @m.xm4.msky130_fd_pr__pfet_01v8[vds]
save @m.xm4.msky130_fd_pr__pfet_01v8[vth]
save @m.xm4.msky130_fd_pr__pfet_01v8[gm]

 op
 write POR.raw
 set appendwrite 

 tran 0.01u 10u
* plot 
 write POR.raw
.measure tran y_value TRIG v(out) VAL=1.0 TD=1n
+ TARG v(out) AT=1.0
 .endc 
 "}
C {devices/launcher.sym} -740 -1150 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/POR.raw tran"
}
C {devices/launcher.sym} -690 -600 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 110 -380 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_wire.sym} 110 -440 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 110 -310 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -30 -530 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/ammeter.sym} -30 -470 2 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {/home/rga1/por.sym} 250 -780 0 0 {name=x1}
C {devices/lab_wire.sym} 240 -670 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -890 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 420 -730 1 0 {name=p6 sig_type=std_logic lab=Vout}
C {devices/lab_wire.sym} 420 -770 1 0 {name=p7 sig_type=std_logic lab=Vb}
C {devices/lab_wire.sym} 420 -810 1 0 {name=p8 sig_type=std_logic lab=Va}
C {devices/lab_wire.sym} 80 -770 3 0 {name=p9 sig_type=std_logic lab=PAD}
C {/home/rga1/por.sym} 340 -1210 0 0 {name=x2
schematic= POR_PEX
spice_def_sym=".include /home/rga1/por_pex.spice"}
C {devices/lab_wire.sym} 350 -1320 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 160 -1200 3 0 {name=p2 sig_type=std_logic lab=PAD}
C {devices/lab_wire.sym} 330 -1100 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 510 -1240 1 0 {name=p10 sig_type=std_logic lab=Vap}
C {devices/lab_wire.sym} 510 -1200 1 0 {name=p11 sig_type=std_logic lab=Vbp}
C {devices/lab_wire.sym} 510 -1160 1 0 {name=p13 sig_type=std_logic lab=out_pex}
