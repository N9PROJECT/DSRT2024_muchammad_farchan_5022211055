v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 980 -1020 980 -950 {
lab=VOUT}
N 940 -1050 940 -920 {
lab=VIN}
N 980 -1050 1050 -1050 {
lab=VDD}
N 1050 -1070 1050 -1050 {
lab=VDD}
N 1050 -1080 1050 -1070 {
lab=VDD}
N 980 -1080 1050 -1080 {
lab=VDD}
N 980 -920 1060 -920 {
lab=GND}
N 1060 -920 1060 -890 {
lab=GND}
N 980 -890 1060 -890 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 960 -920 0 0 {name=M1
W=0.55
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 960 -1050 0 0 {name=M2
W=1.65
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 1100 -920 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 1170 -920 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} 980 -890 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1100 -890 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1170 -890 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 980 -1080 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1100 -950 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 940 -990 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 1170 -950 1 0 {name=p4 sig_type=std_logic lab=VIN}
C {devices/code.sym} 1410 -980 0 0 {name=control only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
dc V2 0 1.8 0.01
plot V(VIN) V(VOUT)
.endc"}
C {devices/code.sym} 1280 -980 0 0 {name=TT
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.include \\\\$::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

.param mc_mm_switch=0
.param mc_pr_switch=1
"
}
C {devices/lab_pin.sym} 980 -980 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/title-3.sym} 0 0 0 0 {name=l4 author="Muchammad Farchan 5022211007" rev=1.0 lock=false}
