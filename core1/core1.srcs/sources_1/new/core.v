`timescale 1ns / 1ps
module core(
    input clk,
    input reset
    );
    
wire [31:0] ic,icid,icex,icwb;
wire [3:0] writedst, readreg1, readreg2, alucontrol, r1r, r2r, rw;
wire [15:0] immidata, data1, data2, writedata, alusrc, result, a, b, resultwb, data, dataout, alusrc1, alusrc2;
wire regwrite, writewhat, aluwhat, jmp, fwdsignalr1, fwdsignalr2;
wire [7:0] flag;
wire [4:0] pc, jmpto;

pc pcounter(.clk(clk), .reset(reset), .pc(pc), .jmpto(jmpto), .jmp(jmp));

instructions IF(.clk(clk), .reset(reset), .ic(ic), .pc(pc));

ifid ifid(.clk(clk), .readreg1(readreg1), 
            .readreg2(readreg2), .writedst(writedst), .ic(ic), .icid(icid), .writedata(writedata), 
            .flag(flag), .jmp(jmp), .jmpto(jmpto), .icwb(icwb),
            .regwrite(regwrite), .resultwb(resultwb) ); 
            
registers regs(.reset(reset), .regwrite(regwrite), 
                .readreg1(readreg1), .readreg2(readreg2), .writedst(writedst), 
                .writedata(writedata), .data1(data1), .data2(data2));

idex idex(.clk(clk), .data1(data1), .data2(data2), 
            .a(a), .b(b), .icid(icid), .icex(icex), .alucontrol(alucontrol));

alu alu(.a(alusrc1), .b(alusrc2), .alucontrol(alucontrol), .flag(flag), .result(result));

exwb exwb(.clk(clk), .icex(icex), .icwb(icwb), .result(result), .resultwb(resultwb));

fwd fwd(.data(writedata), .icex(icex), .rw(writedst), .dataout(dataout), .fwdsignalr1(fwdsignalr1), .fwdsignalr2(fwdsignalr2));         

assign alusrc1 = fwdsignalr1?dataout:a;
assign alusrc2 = fwdsignalr2?dataout:b;       
endmodule
