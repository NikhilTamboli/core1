# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new core work:core:NOFILE -nosplit
load symbol instructions work:instructions:NOFILE HIERBOX pin clk input.left pin reset input.left pinBus ic output.right [31:0] pinBus pc input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol alu work:alu:NOFILE HIERBOX pinBus a input.left [15:0] pinBus alucontrol input.left [7:0] pinBus b input.left [15:0] pinBus flag output.right [7:0] pinBus result output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX2 work MUX pin S input.bot pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus O output.right [15:0] fillcolor 1
load symbol exwb work:exwb:NOFILE HIERBOX pin clk input.left pinBus icex input.left [31:0] pinBus icwb output.right [31:0] pinBus result input.left [15:0] pinBus resultwb output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol fwd work:fwd:NOFILE HIERBOX pin fwdsignalr1 output.right pin fwdsignalr2 output.right pinBus data input.left [15:0] pinBus dataout output.right [15:0] pinBus icex input.left [31:0] pinBus rw input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol idex work:idex:NOFILE HIERBOX pin clk input.left pinBus a output.right [15:0] pinBus alucontrol output.right [7:0] pinBus b output.right [15:0] pinBus data1 input.left [15:0] pinBus data2 input.left [15:0] pinBus icex output.right [31:0] pinBus icid input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ifid work:ifid:NOFILE HIERBOX pin clk input.left pin jmp output.right pin regwrite output.right pinBus flag input.left [7:0] pinBus ic input.left [31:0] pinBus icid output.right [31:0] pinBus icwb input.left [31:0] pinBus jmpto output.right [4:0] pinBus readreg1 output.right [3:0] pinBus readreg2 output.right [3:0] pinBus resultwb input.left [15:0] pinBus writedata output.right [15:0] pinBus writedst output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol pc work:pc:NOFILE HIERBOX pin clk input.left pin jmp input.left pin reset input.left pinBus jmpto input.left [4:0] pinBus pc output.right [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol registers work:registers:NOFILE HIERBOX pin regwrite input.left pin reset input.left pinBus data1 output.right [15:0] pinBus data2 output.right [15:0] pinBus readreg1 input.left [3:0] pinBus readreg2 input.left [3:0] pinBus writedata input.left [15:0] pinBus writedst input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load port clk input -pg 1 -lvl 0 -x 0 -y 500
load port reset input -pg 1 -lvl 0 -x 0 -y 420
load inst IF instructions work:instructions:NOFILE -autohide -attr @cell(#000000) instructions -pinBusAttr ic @name ic[31:0] -pinBusAttr pc @name pc[4:0] -pg 1 -lvl 9 -x 2720 -y 210
load inst alu alu work:alu:NOFILE -autohide -attr @cell(#000000) alu -pinBusAttr a @name a[15:0] -pinBusAttr alucontrol @name alucontrol[7:0] -pinBusAttr b @name b[15:0] -pinBusAttr flag @name flag[7:0] -pinBusAttr result @name result[15:0] -pg 1 -lvl 5 -x 1470 -y 210
load inst alusrc1_i RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 4 -x 1220 -y 60
load inst alusrc2_i RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 4 -x 1220 -y 240
load inst exwb exwb work:exwb:NOFILE -autohide -attr @cell(#000000) exwb -pinBusAttr icex @name icex[31:0] -pinBusAttr icwb @name icwb[31:0] -pinBusAttr result @name result[15:0] -pinBusAttr resultwb @name resultwb[15:0] -pg 1 -lvl 6 -x 1790 -y 230
load inst fwd fwd work:fwd:NOFILE -autohide -attr @cell(#000000) fwd -pinBusAttr data @name data[15:0] -pinBusAttr dataout @name dataout[15:0] -pinBusAttr icex @name icex[31:0] -pinBusAttr rw @name rw[3:0] -pg 1 -lvl 3 -x 900 -y 210
load inst idex idex work:idex:NOFILE -autohide -attr @cell(#000000) idex -pinBusAttr a @name a[15:0] -pinBusAttr alucontrol @name alucontrol[7:0] -pinBusAttr b @name b[15:0] -pinBusAttr data1 @name data1[15:0] -pinBusAttr data2 @name data2[15:0] -pinBusAttr icex @name icex[31:0] -pinBusAttr icid @name icid[31:0] -pg 1 -lvl 2 -x 500 -y 410
load inst ifid ifid work:ifid:NOFILE -autohide -attr @cell(#000000) ifid -pinBusAttr flag @name flag[7:0] -pinBusAttr ic @name ic[31:0] -pinBusAttr icid @name icid[31:0] -pinBusAttr icwb @name icwb[31:0] -pinBusAttr jmpto @name jmpto[4:0] -pinBusAttr readreg1 @name readreg1[3:0] -pinBusAttr readreg2 @name readreg2[3:0] -pinBusAttr resultwb @name resultwb[15:0] -pinBusAttr writedata @name writedata[15:0] -pinBusAttr writedst @name writedst[3:0] -pg 1 -lvl 7 -x 2130 -y 110
load inst pcounter pc work:pc:NOFILE -autohide -attr @cell(#000000) pc -pinBusAttr jmpto @name jmpto[4:0] -pinBusAttr pc @name pc[4:0] -pg 1 -lvl 8 -x 2520 -y 110
load inst regs registers work:registers:NOFILE -autohide -attr @cell(#000000) registers -pinBusAttr data1 @name data1[15:0] -pinBusAttr data2 @name data2[15:0] -pinBusAttr readreg1 @name readreg1[3:0] -pinBusAttr readreg2 @name readreg2[3:0] -pinBusAttr writedata @name writedata[15:0] -pinBusAttr writedst @name writedst[3:0] -pg 1 -lvl 1 -x 180 -y 350
load net a[0] -attr @rip a[0] -pin alusrc1_i I1[0] -pin idex a[0]
load net a[10] -attr @rip a[10] -pin alusrc1_i I1[10] -pin idex a[10]
load net a[11] -attr @rip a[11] -pin alusrc1_i I1[11] -pin idex a[11]
load net a[12] -attr @rip a[12] -pin alusrc1_i I1[12] -pin idex a[12]
load net a[13] -attr @rip a[13] -pin alusrc1_i I1[13] -pin idex a[13]
load net a[14] -attr @rip a[14] -pin alusrc1_i I1[14] -pin idex a[14]
load net a[15] -attr @rip a[15] -pin alusrc1_i I1[15] -pin idex a[15]
load net a[1] -attr @rip a[1] -pin alusrc1_i I1[1] -pin idex a[1]
load net a[2] -attr @rip a[2] -pin alusrc1_i I1[2] -pin idex a[2]
load net a[3] -attr @rip a[3] -pin alusrc1_i I1[3] -pin idex a[3]
load net a[4] -attr @rip a[4] -pin alusrc1_i I1[4] -pin idex a[4]
load net a[5] -attr @rip a[5] -pin alusrc1_i I1[5] -pin idex a[5]
load net a[6] -attr @rip a[6] -pin alusrc1_i I1[6] -pin idex a[6]
load net a[7] -attr @rip a[7] -pin alusrc1_i I1[7] -pin idex a[7]
load net a[8] -attr @rip a[8] -pin alusrc1_i I1[8] -pin idex a[8]
load net a[9] -attr @rip a[9] -pin alusrc1_i I1[9] -pin idex a[9]
load net alucontrol[0] -attr @rip alucontrol[0] -pin alu alucontrol[0] -pin idex alucontrol[0]
load net alucontrol[1] -attr @rip alucontrol[1] -pin alu alucontrol[1] -pin idex alucontrol[1]
load net alucontrol[2] -attr @rip alucontrol[2] -pin alu alucontrol[2] -pin idex alucontrol[2]
load net alucontrol[3] -attr @rip alucontrol[3] -pin alu alucontrol[3] -pin idex alucontrol[3]
load net alucontrol[4] -attr @rip alucontrol[4] -pin alu alucontrol[4] -pin idex alucontrol[4]
load net alucontrol[5] -attr @rip alucontrol[5] -pin alu alucontrol[5] -pin idex alucontrol[5]
load net alucontrol[6] -attr @rip alucontrol[6] -pin alu alucontrol[6] -pin idex alucontrol[6]
load net alucontrol[7] -attr @rip alucontrol[7] -pin alu alucontrol[7] -pin idex alucontrol[7]
load net alusrc1[0] -attr @rip O[0] -pin alu a[0] -pin alusrc1_i O[0]
load net alusrc1[10] -attr @rip O[10] -pin alu a[10] -pin alusrc1_i O[10]
load net alusrc1[11] -attr @rip O[11] -pin alu a[11] -pin alusrc1_i O[11]
load net alusrc1[12] -attr @rip O[12] -pin alu a[12] -pin alusrc1_i O[12]
load net alusrc1[13] -attr @rip O[13] -pin alu a[13] -pin alusrc1_i O[13]
load net alusrc1[14] -attr @rip O[14] -pin alu a[14] -pin alusrc1_i O[14]
load net alusrc1[15] -attr @rip O[15] -pin alu a[15] -pin alusrc1_i O[15]
load net alusrc1[1] -attr @rip O[1] -pin alu a[1] -pin alusrc1_i O[1]
load net alusrc1[2] -attr @rip O[2] -pin alu a[2] -pin alusrc1_i O[2]
load net alusrc1[3] -attr @rip O[3] -pin alu a[3] -pin alusrc1_i O[3]
load net alusrc1[4] -attr @rip O[4] -pin alu a[4] -pin alusrc1_i O[4]
load net alusrc1[5] -attr @rip O[5] -pin alu a[5] -pin alusrc1_i O[5]
load net alusrc1[6] -attr @rip O[6] -pin alu a[6] -pin alusrc1_i O[6]
load net alusrc1[7] -attr @rip O[7] -pin alu a[7] -pin alusrc1_i O[7]
load net alusrc1[8] -attr @rip O[8] -pin alu a[8] -pin alusrc1_i O[8]
load net alusrc1[9] -attr @rip O[9] -pin alu a[9] -pin alusrc1_i O[9]
load net alusrc2[0] -attr @rip O[0] -pin alu b[0] -pin alusrc2_i O[0]
load net alusrc2[10] -attr @rip O[10] -pin alu b[10] -pin alusrc2_i O[10]
load net alusrc2[11] -attr @rip O[11] -pin alu b[11] -pin alusrc2_i O[11]
load net alusrc2[12] -attr @rip O[12] -pin alu b[12] -pin alusrc2_i O[12]
load net alusrc2[13] -attr @rip O[13] -pin alu b[13] -pin alusrc2_i O[13]
load net alusrc2[14] -attr @rip O[14] -pin alu b[14] -pin alusrc2_i O[14]
load net alusrc2[15] -attr @rip O[15] -pin alu b[15] -pin alusrc2_i O[15]
load net alusrc2[1] -attr @rip O[1] -pin alu b[1] -pin alusrc2_i O[1]
load net alusrc2[2] -attr @rip O[2] -pin alu b[2] -pin alusrc2_i O[2]
load net alusrc2[3] -attr @rip O[3] -pin alu b[3] -pin alusrc2_i O[3]
load net alusrc2[4] -attr @rip O[4] -pin alu b[4] -pin alusrc2_i O[4]
load net alusrc2[5] -attr @rip O[5] -pin alu b[5] -pin alusrc2_i O[5]
load net alusrc2[6] -attr @rip O[6] -pin alu b[6] -pin alusrc2_i O[6]
load net alusrc2[7] -attr @rip O[7] -pin alu b[7] -pin alusrc2_i O[7]
load net alusrc2[8] -attr @rip O[8] -pin alu b[8] -pin alusrc2_i O[8]
load net alusrc2[9] -attr @rip O[9] -pin alu b[9] -pin alusrc2_i O[9]
load net b[0] -attr @rip b[0] -pin alusrc2_i I1[0] -pin idex b[0]
load net b[10] -attr @rip b[10] -pin alusrc2_i I1[10] -pin idex b[10]
load net b[11] -attr @rip b[11] -pin alusrc2_i I1[11] -pin idex b[11]
load net b[12] -attr @rip b[12] -pin alusrc2_i I1[12] -pin idex b[12]
load net b[13] -attr @rip b[13] -pin alusrc2_i I1[13] -pin idex b[13]
load net b[14] -attr @rip b[14] -pin alusrc2_i I1[14] -pin idex b[14]
load net b[15] -attr @rip b[15] -pin alusrc2_i I1[15] -pin idex b[15]
load net b[1] -attr @rip b[1] -pin alusrc2_i I1[1] -pin idex b[1]
load net b[2] -attr @rip b[2] -pin alusrc2_i I1[2] -pin idex b[2]
load net b[3] -attr @rip b[3] -pin alusrc2_i I1[3] -pin idex b[3]
load net b[4] -attr @rip b[4] -pin alusrc2_i I1[4] -pin idex b[4]
load net b[5] -attr @rip b[5] -pin alusrc2_i I1[5] -pin idex b[5]
load net b[6] -attr @rip b[6] -pin alusrc2_i I1[6] -pin idex b[6]
load net b[7] -attr @rip b[7] -pin alusrc2_i I1[7] -pin idex b[7]
load net b[8] -attr @rip b[8] -pin alusrc2_i I1[8] -pin idex b[8]
load net b[9] -attr @rip b[9] -pin alusrc2_i I1[9] -pin idex b[9]
load net clk -pin IF clk -port clk -pin exwb clk -pin idex clk -pin ifid clk -pin pcounter clk
netloc clk 1 0 9 NJ 500 360 360 690J 420 NJ 420 NJ 420 1670 140 2020 40 2410 220 NJ
load net data1[0] -attr @rip data1[0] -pin idex data1[0] -pin regs data1[0]
load net data1[10] -attr @rip data1[10] -pin idex data1[10] -pin regs data1[10]
load net data1[11] -attr @rip data1[11] -pin idex data1[11] -pin regs data1[11]
load net data1[12] -attr @rip data1[12] -pin idex data1[12] -pin regs data1[12]
load net data1[13] -attr @rip data1[13] -pin idex data1[13] -pin regs data1[13]
load net data1[14] -attr @rip data1[14] -pin idex data1[14] -pin regs data1[14]
load net data1[15] -attr @rip data1[15] -pin idex data1[15] -pin regs data1[15]
load net data1[1] -attr @rip data1[1] -pin idex data1[1] -pin regs data1[1]
load net data1[2] -attr @rip data1[2] -pin idex data1[2] -pin regs data1[2]
load net data1[3] -attr @rip data1[3] -pin idex data1[3] -pin regs data1[3]
load net data1[4] -attr @rip data1[4] -pin idex data1[4] -pin regs data1[4]
load net data1[5] -attr @rip data1[5] -pin idex data1[5] -pin regs data1[5]
load net data1[6] -attr @rip data1[6] -pin idex data1[6] -pin regs data1[6]
load net data1[7] -attr @rip data1[7] -pin idex data1[7] -pin regs data1[7]
load net data1[8] -attr @rip data1[8] -pin idex data1[8] -pin regs data1[8]
load net data1[9] -attr @rip data1[9] -pin idex data1[9] -pin regs data1[9]
load net data2[0] -attr @rip data2[0] -pin idex data2[0] -pin regs data2[0]
load net data2[10] -attr @rip data2[10] -pin idex data2[10] -pin regs data2[10]
load net data2[11] -attr @rip data2[11] -pin idex data2[11] -pin regs data2[11]
load net data2[12] -attr @rip data2[12] -pin idex data2[12] -pin regs data2[12]
load net data2[13] -attr @rip data2[13] -pin idex data2[13] -pin regs data2[13]
load net data2[14] -attr @rip data2[14] -pin idex data2[14] -pin regs data2[14]
load net data2[15] -attr @rip data2[15] -pin idex data2[15] -pin regs data2[15]
load net data2[1] -attr @rip data2[1] -pin idex data2[1] -pin regs data2[1]
load net data2[2] -attr @rip data2[2] -pin idex data2[2] -pin regs data2[2]
load net data2[3] -attr @rip data2[3] -pin idex data2[3] -pin regs data2[3]
load net data2[4] -attr @rip data2[4] -pin idex data2[4] -pin regs data2[4]
load net data2[5] -attr @rip data2[5] -pin idex data2[5] -pin regs data2[5]
load net data2[6] -attr @rip data2[6] -pin idex data2[6] -pin regs data2[6]
load net data2[7] -attr @rip data2[7] -pin idex data2[7] -pin regs data2[7]
load net data2[8] -attr @rip data2[8] -pin idex data2[8] -pin regs data2[8]
load net data2[9] -attr @rip data2[9] -pin idex data2[9] -pin regs data2[9]
load net dataout[0] -attr @rip dataout[0] -pin alusrc1_i I0[0] -pin alusrc2_i I0[0] -pin fwd dataout[0]
load net dataout[10] -attr @rip dataout[10] -pin alusrc1_i I0[10] -pin alusrc2_i I0[10] -pin fwd dataout[10]
load net dataout[11] -attr @rip dataout[11] -pin alusrc1_i I0[11] -pin alusrc2_i I0[11] -pin fwd dataout[11]
load net dataout[12] -attr @rip dataout[12] -pin alusrc1_i I0[12] -pin alusrc2_i I0[12] -pin fwd dataout[12]
load net dataout[13] -attr @rip dataout[13] -pin alusrc1_i I0[13] -pin alusrc2_i I0[13] -pin fwd dataout[13]
load net dataout[14] -attr @rip dataout[14] -pin alusrc1_i I0[14] -pin alusrc2_i I0[14] -pin fwd dataout[14]
load net dataout[15] -attr @rip dataout[15] -pin alusrc1_i I0[15] -pin alusrc2_i I0[15] -pin fwd dataout[15]
load net dataout[1] -attr @rip dataout[1] -pin alusrc1_i I0[1] -pin alusrc2_i I0[1] -pin fwd dataout[1]
load net dataout[2] -attr @rip dataout[2] -pin alusrc1_i I0[2] -pin alusrc2_i I0[2] -pin fwd dataout[2]
load net dataout[3] -attr @rip dataout[3] -pin alusrc1_i I0[3] -pin alusrc2_i I0[3] -pin fwd dataout[3]
load net dataout[4] -attr @rip dataout[4] -pin alusrc1_i I0[4] -pin alusrc2_i I0[4] -pin fwd dataout[4]
load net dataout[5] -attr @rip dataout[5] -pin alusrc1_i I0[5] -pin alusrc2_i I0[5] -pin fwd dataout[5]
load net dataout[6] -attr @rip dataout[6] -pin alusrc1_i I0[6] -pin alusrc2_i I0[6] -pin fwd dataout[6]
load net dataout[7] -attr @rip dataout[7] -pin alusrc1_i I0[7] -pin alusrc2_i I0[7] -pin fwd dataout[7]
load net dataout[8] -attr @rip dataout[8] -pin alusrc1_i I0[8] -pin alusrc2_i I0[8] -pin fwd dataout[8]
load net dataout[9] -attr @rip dataout[9] -pin alusrc1_i I0[9] -pin alusrc2_i I0[9] -pin fwd dataout[9]
load net flag[0] -attr @rip flag[0] -pin alu flag[0] -pin ifid flag[0]
load net flag[1] -attr @rip flag[1] -pin alu flag[1] -pin ifid flag[1]
load net flag[2] -attr @rip flag[2] -pin alu flag[2] -pin ifid flag[2]
load net flag[3] -attr @rip flag[3] -pin alu flag[3] -pin ifid flag[3]
load net flag[4] -attr @rip flag[4] -pin alu flag[4] -pin ifid flag[4]
load net flag[5] -attr @rip flag[5] -pin alu flag[5] -pin ifid flag[5]
load net flag[6] -attr @rip flag[6] -pin alu flag[6] -pin ifid flag[6]
load net flag[7] -attr @rip flag[7] -pin alu flag[7] -pin ifid flag[7]
load net fwdsignalr1 -pin alusrc1_i S -pin fwd fwdsignalr1
netloc fwdsignalr1 1 3 1 1070 120n
load net fwdsignalr2 -pin alusrc2_i S -pin fwd fwdsignalr2
netloc fwdsignalr2 1 3 1 1070 260n
load net ic[0] -attr @rip ic[0] -pin IF ic[0] -pin ifid ic[0]
load net ic[10] -attr @rip ic[10] -pin IF ic[10] -pin ifid ic[10]
load net ic[11] -attr @rip ic[11] -pin IF ic[11] -pin ifid ic[11]
load net ic[12] -attr @rip ic[12] -pin IF ic[12] -pin ifid ic[12]
load net ic[13] -attr @rip ic[13] -pin IF ic[13] -pin ifid ic[13]
load net ic[14] -attr @rip ic[14] -pin IF ic[14] -pin ifid ic[14]
load net ic[15] -attr @rip ic[15] -pin IF ic[15] -pin ifid ic[15]
load net ic[16] -attr @rip ic[16] -pin IF ic[16] -pin ifid ic[16]
load net ic[17] -attr @rip ic[17] -pin IF ic[17] -pin ifid ic[17]
load net ic[18] -attr @rip ic[18] -pin IF ic[18] -pin ifid ic[18]
load net ic[19] -attr @rip ic[19] -pin IF ic[19] -pin ifid ic[19]
load net ic[1] -attr @rip ic[1] -pin IF ic[1] -pin ifid ic[1]
load net ic[20] -attr @rip ic[20] -pin IF ic[20] -pin ifid ic[20]
load net ic[21] -attr @rip ic[21] -pin IF ic[21] -pin ifid ic[21]
load net ic[22] -attr @rip ic[22] -pin IF ic[22] -pin ifid ic[22]
load net ic[23] -attr @rip ic[23] -pin IF ic[23] -pin ifid ic[23]
load net ic[24] -attr @rip ic[24] -pin IF ic[24] -pin ifid ic[24]
load net ic[25] -attr @rip ic[25] -pin IF ic[25] -pin ifid ic[25]
load net ic[26] -attr @rip ic[26] -pin IF ic[26] -pin ifid ic[26]
load net ic[27] -attr @rip ic[27] -pin IF ic[27] -pin ifid ic[27]
load net ic[28] -attr @rip ic[28] -pin IF ic[28] -pin ifid ic[28]
load net ic[29] -attr @rip ic[29] -pin IF ic[29] -pin ifid ic[29]
load net ic[2] -attr @rip ic[2] -pin IF ic[2] -pin ifid ic[2]
load net ic[30] -attr @rip ic[30] -pin IF ic[30] -pin ifid ic[30]
load net ic[31] -attr @rip ic[31] -pin IF ic[31] -pin ifid ic[31]
load net ic[3] -attr @rip ic[3] -pin IF ic[3] -pin ifid ic[3]
load net ic[4] -attr @rip ic[4] -pin IF ic[4] -pin ifid ic[4]
load net ic[5] -attr @rip ic[5] -pin IF ic[5] -pin ifid ic[5]
load net ic[6] -attr @rip ic[6] -pin IF ic[6] -pin ifid ic[6]
load net ic[7] -attr @rip ic[7] -pin IF ic[7] -pin ifid ic[7]
load net ic[8] -attr @rip ic[8] -pin IF ic[8] -pin ifid ic[8]
load net ic[9] -attr @rip ic[9] -pin IF ic[9] -pin ifid ic[9]
load net icex[0] -attr @rip icex[0] -pin exwb icex[0] -pin fwd icex[0] -pin idex icex[0]
load net icex[10] -attr @rip icex[10] -pin exwb icex[10] -pin fwd icex[10] -pin idex icex[10]
load net icex[11] -attr @rip icex[11] -pin exwb icex[11] -pin fwd icex[11] -pin idex icex[11]
load net icex[12] -attr @rip icex[12] -pin exwb icex[12] -pin fwd icex[12] -pin idex icex[12]
load net icex[13] -attr @rip icex[13] -pin exwb icex[13] -pin fwd icex[13] -pin idex icex[13]
load net icex[14] -attr @rip icex[14] -pin exwb icex[14] -pin fwd icex[14] -pin idex icex[14]
load net icex[15] -attr @rip icex[15] -pin exwb icex[15] -pin fwd icex[15] -pin idex icex[15]
load net icex[16] -attr @rip icex[16] -pin exwb icex[16] -pin fwd icex[16] -pin idex icex[16]
load net icex[17] -attr @rip icex[17] -pin exwb icex[17] -pin fwd icex[17] -pin idex icex[17]
load net icex[18] -attr @rip icex[18] -pin exwb icex[18] -pin fwd icex[18] -pin idex icex[18]
load net icex[19] -attr @rip icex[19] -pin exwb icex[19] -pin fwd icex[19] -pin idex icex[19]
load net icex[1] -attr @rip icex[1] -pin exwb icex[1] -pin fwd icex[1] -pin idex icex[1]
load net icex[20] -attr @rip icex[20] -pin exwb icex[20] -pin fwd icex[20] -pin idex icex[20]
load net icex[21] -attr @rip icex[21] -pin exwb icex[21] -pin fwd icex[21] -pin idex icex[21]
load net icex[22] -attr @rip icex[22] -pin exwb icex[22] -pin fwd icex[22] -pin idex icex[22]
load net icex[23] -attr @rip icex[23] -pin exwb icex[23] -pin fwd icex[23] -pin idex icex[23]
load net icex[24] -attr @rip icex[24] -pin exwb icex[24] -pin fwd icex[24] -pin idex icex[24]
load net icex[25] -attr @rip icex[25] -pin exwb icex[25] -pin fwd icex[25] -pin idex icex[25]
load net icex[26] -attr @rip icex[26] -pin exwb icex[26] -pin fwd icex[26] -pin idex icex[26]
load net icex[27] -attr @rip icex[27] -pin exwb icex[27] -pin fwd icex[27] -pin idex icex[27]
load net icex[28] -attr @rip icex[28] -pin exwb icex[28] -pin fwd icex[28] -pin idex icex[28]
load net icex[29] -attr @rip icex[29] -pin exwb icex[29] -pin fwd icex[29] -pin idex icex[29]
load net icex[2] -attr @rip icex[2] -pin exwb icex[2] -pin fwd icex[2] -pin idex icex[2]
load net icex[30] -attr @rip icex[30] -pin exwb icex[30] -pin fwd icex[30] -pin idex icex[30]
load net icex[31] -attr @rip icex[31] -pin exwb icex[31] -pin fwd icex[31] -pin idex icex[31]
load net icex[3] -attr @rip icex[3] -pin exwb icex[3] -pin fwd icex[3] -pin idex icex[3]
load net icex[4] -attr @rip icex[4] -pin exwb icex[4] -pin fwd icex[4] -pin idex icex[4]
load net icex[5] -attr @rip icex[5] -pin exwb icex[5] -pin fwd icex[5] -pin idex icex[5]
load net icex[6] -attr @rip icex[6] -pin exwb icex[6] -pin fwd icex[6] -pin idex icex[6]
load net icex[7] -attr @rip icex[7] -pin exwb icex[7] -pin fwd icex[7] -pin idex icex[7]
load net icex[8] -attr @rip icex[8] -pin exwb icex[8] -pin fwd icex[8] -pin idex icex[8]
load net icex[9] -attr @rip icex[9] -pin exwb icex[9] -pin fwd icex[9] -pin idex icex[9]
load net icid[0] -attr @rip icid[0] -pin idex icid[0] -pin ifid icid[0]
load net icid[10] -attr @rip icid[10] -pin idex icid[10] -pin ifid icid[10]
load net icid[11] -attr @rip icid[11] -pin idex icid[11] -pin ifid icid[11]
load net icid[12] -attr @rip icid[12] -pin idex icid[12] -pin ifid icid[12]
load net icid[13] -attr @rip icid[13] -pin idex icid[13] -pin ifid icid[13]
load net icid[14] -attr @rip icid[14] -pin idex icid[14] -pin ifid icid[14]
load net icid[15] -attr @rip icid[15] -pin idex icid[15] -pin ifid icid[15]
load net icid[16] -attr @rip icid[16] -pin idex icid[16] -pin ifid icid[16]
load net icid[17] -attr @rip icid[17] -pin idex icid[17] -pin ifid icid[17]
load net icid[18] -attr @rip icid[18] -pin idex icid[18] -pin ifid icid[18]
load net icid[19] -attr @rip icid[19] -pin idex icid[19] -pin ifid icid[19]
load net icid[1] -attr @rip icid[1] -pin idex icid[1] -pin ifid icid[1]
load net icid[20] -attr @rip icid[20] -pin idex icid[20] -pin ifid icid[20]
load net icid[21] -attr @rip icid[21] -pin idex icid[21] -pin ifid icid[21]
load net icid[22] -attr @rip icid[22] -pin idex icid[22] -pin ifid icid[22]
load net icid[23] -attr @rip icid[23] -pin idex icid[23] -pin ifid icid[23]
load net icid[24] -attr @rip icid[24] -pin idex icid[24] -pin ifid icid[24]
load net icid[25] -attr @rip icid[25] -pin idex icid[25] -pin ifid icid[25]
load net icid[26] -attr @rip icid[26] -pin idex icid[26] -pin ifid icid[26]
load net icid[27] -attr @rip icid[27] -pin idex icid[27] -pin ifid icid[27]
load net icid[28] -attr @rip icid[28] -pin idex icid[28] -pin ifid icid[28]
load net icid[29] -attr @rip icid[29] -pin idex icid[29] -pin ifid icid[29]
load net icid[2] -attr @rip icid[2] -pin idex icid[2] -pin ifid icid[2]
load net icid[30] -attr @rip icid[30] -pin idex icid[30] -pin ifid icid[30]
load net icid[31] -attr @rip icid[31] -pin idex icid[31] -pin ifid icid[31]
load net icid[3] -attr @rip icid[3] -pin idex icid[3] -pin ifid icid[3]
load net icid[4] -attr @rip icid[4] -pin idex icid[4] -pin ifid icid[4]
load net icid[5] -attr @rip icid[5] -pin idex icid[5] -pin ifid icid[5]
load net icid[6] -attr @rip icid[6] -pin idex icid[6] -pin ifid icid[6]
load net icid[7] -attr @rip icid[7] -pin idex icid[7] -pin ifid icid[7]
load net icid[8] -attr @rip icid[8] -pin idex icid[8] -pin ifid icid[8]
load net icid[9] -attr @rip icid[9] -pin idex icid[9] -pin ifid icid[9]
load net icwb[0] -attr @rip icwb[0] -pin exwb icwb[0] -pin ifid icwb[0]
load net icwb[10] -attr @rip icwb[10] -pin exwb icwb[10] -pin ifid icwb[10]
load net icwb[11] -attr @rip icwb[11] -pin exwb icwb[11] -pin ifid icwb[11]
load net icwb[12] -attr @rip icwb[12] -pin exwb icwb[12] -pin ifid icwb[12]
load net icwb[13] -attr @rip icwb[13] -pin exwb icwb[13] -pin ifid icwb[13]
load net icwb[14] -attr @rip icwb[14] -pin exwb icwb[14] -pin ifid icwb[14]
load net icwb[15] -attr @rip icwb[15] -pin exwb icwb[15] -pin ifid icwb[15]
load net icwb[16] -attr @rip icwb[16] -pin exwb icwb[16] -pin ifid icwb[16]
load net icwb[17] -attr @rip icwb[17] -pin exwb icwb[17] -pin ifid icwb[17]
load net icwb[18] -attr @rip icwb[18] -pin exwb icwb[18] -pin ifid icwb[18]
load net icwb[19] -attr @rip icwb[19] -pin exwb icwb[19] -pin ifid icwb[19]
load net icwb[1] -attr @rip icwb[1] -pin exwb icwb[1] -pin ifid icwb[1]
load net icwb[20] -attr @rip icwb[20] -pin exwb icwb[20] -pin ifid icwb[20]
load net icwb[21] -attr @rip icwb[21] -pin exwb icwb[21] -pin ifid icwb[21]
load net icwb[22] -attr @rip icwb[22] -pin exwb icwb[22] -pin ifid icwb[22]
load net icwb[23] -attr @rip icwb[23] -pin exwb icwb[23] -pin ifid icwb[23]
load net icwb[24] -attr @rip icwb[24] -pin exwb icwb[24] -pin ifid icwb[24]
load net icwb[25] -attr @rip icwb[25] -pin exwb icwb[25] -pin ifid icwb[25]
load net icwb[26] -attr @rip icwb[26] -pin exwb icwb[26] -pin ifid icwb[26]
load net icwb[27] -attr @rip icwb[27] -pin exwb icwb[27] -pin ifid icwb[27]
load net icwb[28] -attr @rip icwb[28] -pin exwb icwb[28] -pin ifid icwb[28]
load net icwb[29] -attr @rip icwb[29] -pin exwb icwb[29] -pin ifid icwb[29]
load net icwb[2] -attr @rip icwb[2] -pin exwb icwb[2] -pin ifid icwb[2]
load net icwb[30] -attr @rip icwb[30] -pin exwb icwb[30] -pin ifid icwb[30]
load net icwb[31] -attr @rip icwb[31] -pin exwb icwb[31] -pin ifid icwb[31]
load net icwb[3] -attr @rip icwb[3] -pin exwb icwb[3] -pin ifid icwb[3]
load net icwb[4] -attr @rip icwb[4] -pin exwb icwb[4] -pin ifid icwb[4]
load net icwb[5] -attr @rip icwb[5] -pin exwb icwb[5] -pin ifid icwb[5]
load net icwb[6] -attr @rip icwb[6] -pin exwb icwb[6] -pin ifid icwb[6]
load net icwb[7] -attr @rip icwb[7] -pin exwb icwb[7] -pin ifid icwb[7]
load net icwb[8] -attr @rip icwb[8] -pin exwb icwb[8] -pin ifid icwb[8]
load net icwb[9] -attr @rip icwb[9] -pin exwb icwb[9] -pin ifid icwb[9]
load net jmp -pin ifid jmp -pin pcounter jmp
netloc jmp 1 7 1 N 140
load net jmpto[0] -attr @rip jmpto[0] -pin ifid jmpto[0] -pin pcounter jmpto[0]
load net jmpto[1] -attr @rip jmpto[1] -pin ifid jmpto[1] -pin pcounter jmpto[1]
load net jmpto[2] -attr @rip jmpto[2] -pin ifid jmpto[2] -pin pcounter jmpto[2]
load net jmpto[3] -attr @rip jmpto[3] -pin ifid jmpto[3] -pin pcounter jmpto[3]
load net jmpto[4] -attr @rip jmpto[4] -pin ifid jmpto[4] -pin pcounter jmpto[4]
load net pc[0] -attr @rip pc[0] -pin IF pc[0] -pin pcounter pc[0]
load net pc[1] -attr @rip pc[1] -pin IF pc[1] -pin pcounter pc[1]
load net pc[2] -attr @rip pc[2] -pin IF pc[2] -pin pcounter pc[2]
load net pc[3] -attr @rip pc[3] -pin IF pc[3] -pin pcounter pc[3]
load net pc[4] -attr @rip pc[4] -pin IF pc[4] -pin pcounter pc[4]
load net readreg1[0] -attr @rip readreg1[0] -pin ifid readreg1[0] -pin regs readreg1[0]
load net readreg1[1] -attr @rip readreg1[1] -pin ifid readreg1[1] -pin regs readreg1[1]
load net readreg1[2] -attr @rip readreg1[2] -pin ifid readreg1[2] -pin regs readreg1[2]
load net readreg1[3] -attr @rip readreg1[3] -pin ifid readreg1[3] -pin regs readreg1[3]
load net readreg2[0] -attr @rip readreg2[0] -pin ifid readreg2[0] -pin regs readreg2[0]
load net readreg2[1] -attr @rip readreg2[1] -pin ifid readreg2[1] -pin regs readreg2[1]
load net readreg2[2] -attr @rip readreg2[2] -pin ifid readreg2[2] -pin regs readreg2[2]
load net readreg2[3] -attr @rip readreg2[3] -pin ifid readreg2[3] -pin regs readreg2[3]
load net regwrite -pin ifid regwrite -pin regs regwrite
netloc regwrite 1 0 8 40 160 NJ 160 NJ 160 NJ 160 NJ 160 1630J 180 1960J 320 2350
load net reset -pin IF reset -pin pcounter reset -pin regs reset -port reset
netloc reset 1 0 9 20 540 NJ 540 NJ 540 NJ 540 NJ 540 NJ 540 NJ 540 2430 260 NJ
load net result[0] -attr @rip result[0] -pin alu result[0] -pin exwb result[0]
load net result[10] -attr @rip result[10] -pin alu result[10] -pin exwb result[10]
load net result[11] -attr @rip result[11] -pin alu result[11] -pin exwb result[11]
load net result[12] -attr @rip result[12] -pin alu result[12] -pin exwb result[12]
load net result[13] -attr @rip result[13] -pin alu result[13] -pin exwb result[13]
load net result[14] -attr @rip result[14] -pin alu result[14] -pin exwb result[14]
load net result[15] -attr @rip result[15] -pin alu result[15] -pin exwb result[15]
load net result[1] -attr @rip result[1] -pin alu result[1] -pin exwb result[1]
load net result[2] -attr @rip result[2] -pin alu result[2] -pin exwb result[2]
load net result[3] -attr @rip result[3] -pin alu result[3] -pin exwb result[3]
load net result[4] -attr @rip result[4] -pin alu result[4] -pin exwb result[4]
load net result[5] -attr @rip result[5] -pin alu result[5] -pin exwb result[5]
load net result[6] -attr @rip result[6] -pin alu result[6] -pin exwb result[6]
load net result[7] -attr @rip result[7] -pin alu result[7] -pin exwb result[7]
load net result[8] -attr @rip result[8] -pin alu result[8] -pin exwb result[8]
load net result[9] -attr @rip result[9] -pin alu result[9] -pin exwb result[9]
load net resultwb[0] -attr @rip resultwb[0] -pin exwb resultwb[0] -pin ifid resultwb[0]
load net resultwb[10] -attr @rip resultwb[10] -pin exwb resultwb[10] -pin ifid resultwb[10]
load net resultwb[11] -attr @rip resultwb[11] -pin exwb resultwb[11] -pin ifid resultwb[11]
load net resultwb[12] -attr @rip resultwb[12] -pin exwb resultwb[12] -pin ifid resultwb[12]
load net resultwb[13] -attr @rip resultwb[13] -pin exwb resultwb[13] -pin ifid resultwb[13]
load net resultwb[14] -attr @rip resultwb[14] -pin exwb resultwb[14] -pin ifid resultwb[14]
load net resultwb[15] -attr @rip resultwb[15] -pin exwb resultwb[15] -pin ifid resultwb[15]
load net resultwb[1] -attr @rip resultwb[1] -pin exwb resultwb[1] -pin ifid resultwb[1]
load net resultwb[2] -attr @rip resultwb[2] -pin exwb resultwb[2] -pin ifid resultwb[2]
load net resultwb[3] -attr @rip resultwb[3] -pin exwb resultwb[3] -pin ifid resultwb[3]
load net resultwb[4] -attr @rip resultwb[4] -pin exwb resultwb[4] -pin ifid resultwb[4]
load net resultwb[5] -attr @rip resultwb[5] -pin exwb resultwb[5] -pin ifid resultwb[5]
load net resultwb[6] -attr @rip resultwb[6] -pin exwb resultwb[6] -pin ifid resultwb[6]
load net resultwb[7] -attr @rip resultwb[7] -pin exwb resultwb[7] -pin ifid resultwb[7]
load net resultwb[8] -attr @rip resultwb[8] -pin exwb resultwb[8] -pin ifid resultwb[8]
load net resultwb[9] -attr @rip resultwb[9] -pin exwb resultwb[9] -pin ifid resultwb[9]
load net writedata[0] -attr @rip writedata[0] -pin fwd data[0] -pin ifid writedata[0] -pin regs writedata[0]
load net writedata[10] -attr @rip writedata[10] -pin fwd data[10] -pin ifid writedata[10] -pin regs writedata[10]
load net writedata[11] -attr @rip writedata[11] -pin fwd data[11] -pin ifid writedata[11] -pin regs writedata[11]
load net writedata[12] -attr @rip writedata[12] -pin fwd data[12] -pin ifid writedata[12] -pin regs writedata[12]
load net writedata[13] -attr @rip writedata[13] -pin fwd data[13] -pin ifid writedata[13] -pin regs writedata[13]
load net writedata[14] -attr @rip writedata[14] -pin fwd data[14] -pin ifid writedata[14] -pin regs writedata[14]
load net writedata[15] -attr @rip writedata[15] -pin fwd data[15] -pin ifid writedata[15] -pin regs writedata[15]
load net writedata[1] -attr @rip writedata[1] -pin fwd data[1] -pin ifid writedata[1] -pin regs writedata[1]
load net writedata[2] -attr @rip writedata[2] -pin fwd data[2] -pin ifid writedata[2] -pin regs writedata[2]
load net writedata[3] -attr @rip writedata[3] -pin fwd data[3] -pin ifid writedata[3] -pin regs writedata[3]
load net writedata[4] -attr @rip writedata[4] -pin fwd data[4] -pin ifid writedata[4] -pin regs writedata[4]
load net writedata[5] -attr @rip writedata[5] -pin fwd data[5] -pin ifid writedata[5] -pin regs writedata[5]
load net writedata[6] -attr @rip writedata[6] -pin fwd data[6] -pin ifid writedata[6] -pin regs writedata[6]
load net writedata[7] -attr @rip writedata[7] -pin fwd data[7] -pin ifid writedata[7] -pin regs writedata[7]
load net writedata[8] -attr @rip writedata[8] -pin fwd data[8] -pin ifid writedata[8] -pin regs writedata[8]
load net writedata[9] -attr @rip writedata[9] -pin fwd data[9] -pin ifid writedata[9] -pin regs writedata[9]
load net writedst[0] -attr @rip writedst[0] -pin fwd rw[0] -pin ifid writedst[0] -pin regs writedst[0]
load net writedst[1] -attr @rip writedst[1] -pin fwd rw[1] -pin ifid writedst[1] -pin regs writedst[1]
load net writedst[2] -attr @rip writedst[2] -pin fwd rw[2] -pin ifid writedst[2] -pin regs writedst[2]
load net writedst[3] -attr @rip writedst[3] -pin fwd rw[3] -pin ifid writedst[3] -pin regs writedst[3]
load netBundle @ic 32 ic[31] ic[30] ic[29] ic[28] ic[27] ic[26] ic[25] ic[24] ic[23] ic[22] ic[21] ic[20] ic[19] ic[18] ic[17] ic[16] ic[15] ic[14] ic[13] ic[12] ic[11] ic[10] ic[9] ic[8] ic[7] ic[6] ic[5] ic[4] ic[3] ic[2] ic[1] ic[0] -autobundled
netbloc @ic 1 6 4 2020 300 NJ 300 NJ 300 2860
load netBundle @flag 8 flag[7] flag[6] flag[5] flag[4] flag[3] flag[2] flag[1] flag[0] -autobundled
netbloc @flag 1 5 2 1650 160 NJ
load netBundle @result 16 result[15] result[14] result[13] result[12] result[11] result[10] result[9] result[8] result[7] result[6] result[5] result[4] result[3] result[2] result[1] result[0] -autobundled
netbloc @result 1 5 1 1630 240n
load netBundle @alusrc1 16 alusrc1[15] alusrc1[14] alusrc1[13] alusrc1[12] alusrc1[11] alusrc1[10] alusrc1[9] alusrc1[8] alusrc1[7] alusrc1[6] alusrc1[5] alusrc1[4] alusrc1[3] alusrc1[2] alusrc1[1] alusrc1[0] -autobundled
netbloc @alusrc1 1 4 1 1340 60n
load netBundle @alusrc2 16 alusrc2[15] alusrc2[14] alusrc2[13] alusrc2[12] alusrc2[11] alusrc2[10] alusrc2[9] alusrc2[8] alusrc2[7] alusrc2[6] alusrc2[5] alusrc2[4] alusrc2[3] alusrc2[2] alusrc2[1] alusrc2[0] -autobundled
netbloc @alusrc2 1 4 1 1340 240n
load netBundle @icwb 32 icwb[31] icwb[30] icwb[29] icwb[28] icwb[27] icwb[26] icwb[25] icwb[24] icwb[23] icwb[22] icwb[21] icwb[20] icwb[19] icwb[18] icwb[17] icwb[16] icwb[15] icwb[14] icwb[13] icwb[12] icwb[11] icwb[10] icwb[9] icwb[8] icwb[7] icwb[6] icwb[5] icwb[4] icwb[3] icwb[2] icwb[1] icwb[0] -autobundled
netbloc @icwb 1 6 1 1980 200n
load netBundle @resultwb 16 resultwb[15] resultwb[14] resultwb[13] resultwb[12] resultwb[11] resultwb[10] resultwb[9] resultwb[8] resultwb[7] resultwb[6] resultwb[5] resultwb[4] resultwb[3] resultwb[2] resultwb[1] resultwb[0] -autobundled
netbloc @resultwb 1 6 1 2000 220n
load netBundle @dataout 16 dataout[15] dataout[14] dataout[13] dataout[12] dataout[11] dataout[10] dataout[9] dataout[8] dataout[7] dataout[6] dataout[5] dataout[4] dataout[3] dataout[2] dataout[1] dataout[0] -autobundled
netbloc @dataout 1 3 1 1090 50n
load netBundle @a 16 a[15] a[14] a[13] a[12] a[11] a[10] a[9] a[8] a[7] a[6] a[5] a[4] a[3] a[2] a[1] a[0] -autobundled
netbloc @a 1 2 2 670 70 NJ
load netBundle @alucontrol 8 alucontrol[7] alucontrol[6] alucontrol[5] alucontrol[4] alucontrol[3] alucontrol[2] alucontrol[1] alucontrol[0] -autobundled
netbloc @alucontrol 1 2 3 NJ 440 NJ 440 1360
load netBundle @b 16 b[15] b[14] b[13] b[12] b[11] b[10] b[9] b[8] b[7] b[6] b[5] b[4] b[3] b[2] b[1] b[0] -autobundled
netbloc @b 1 2 2 790 300 1090J
load netBundle @icex 32 icex[31] icex[30] icex[29] icex[28] icex[27] icex[26] icex[25] icex[24] icex[23] icex[22] icex[21] icex[20] icex[19] icex[18] icex[17] icex[16] icex[15] icex[14] icex[13] icex[12] icex[11] icex[10] icex[9] icex[8] icex[7] icex[6] icex[5] icex[4] icex[3] icex[2] icex[1] icex[0] -autobundled
netbloc @icex 1 2 4 750 320 NJ 320 NJ 320 1690J
load netBundle @icid 32 icid[31] icid[30] icid[29] icid[28] icid[27] icid[26] icid[25] icid[24] icid[23] icid[22] icid[21] icid[20] icid[19] icid[18] icid[17] icid[16] icid[15] icid[14] icid[13] icid[12] icid[11] icid[10] icid[9] icid[8] icid[7] icid[6] icid[5] icid[4] icid[3] icid[2] icid[1] icid[0] -autobundled
netbloc @icid 1 1 7 400 340 710J 400 NJ 400 NJ 400 NJ 400 NJ 400 2390
load netBundle @jmpto 5 jmpto[4] jmpto[3] jmpto[2] jmpto[1] jmpto[0] -autobundled
netbloc @jmpto 1 7 1 N 160
load netBundle @readreg1 4 readreg1[3] readreg1[2] readreg1[1] readreg1[0] -autobundled
netbloc @readreg1 1 0 8 20 140 NJ 140 NJ 140 NJ 140 NJ 140 1630J 120 1960J 60 2310
load netBundle @readreg2 4 readreg2[3] readreg2[2] readreg2[1] readreg2[0] -autobundled
netbloc @readreg2 1 0 8 60 300 NJ 300 770J 380 NJ 380 NJ 380 NJ 380 NJ 380 2370
load netBundle @writedata 16 writedata[15] writedata[14] writedata[13] writedata[12] writedata[11] writedata[10] writedata[9] writedata[8] writedata[7] writedata[6] writedata[5] writedata[4] writedata[3] writedata[2] writedata[1] writedata[0] -autobundled
netbloc @writedata 1 0 8 40 520 NJ 520 730 340 NJ 340 NJ 340 NJ 340 NJ 340 2330
load netBundle @writedst 4 writedst[3] writedst[2] writedst[1] writedst[0] -autobundled
netbloc @writedst 1 0 8 60 560 NJ 560 810 360 NJ 360 NJ 360 NJ 360 NJ 360 2310
load netBundle @pc 5 pc[4] pc[3] pc[2] pc[1] pc[0] -autobundled
netbloc @pc 1 8 1 2650 140n
load netBundle @data1 16 data1[15] data1[14] data1[13] data1[12] data1[11] data1[10] data1[9] data1[8] data1[7] data1[6] data1[5] data1[4] data1[3] data1[2] data1[1] data1[0] -autobundled
netbloc @data1 1 1 1 380 400n
load netBundle @data2 16 data2[15] data2[14] data2[13] data2[12] data2[11] data2[10] data2[9] data2[8] data2[7] data2[6] data2[5] data2[4] data2[3] data2[2] data2[1] data2[0] -autobundled
netbloc @data2 1 1 1 340 420n
levelinfo -pg 1 0 180 500 900 1220 1470 1790 2130 2520 2720 2880
pagesize -pg 1 -db -bbox -sgen -80 0 2880 570
show
fullfit
#
# initialize ictrl to current module core work:core:NOFILE
ictrl init topinfo |
