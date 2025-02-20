`timescale 1ns / 1ps
module core(
    input clk,
    input reset
    );
    
wire [31:0] ic;
wire [3:0] writedst, readreg1, readreg2, alucontrol;
wire [16:0] immidata, data1, data2, aluresult, writedata, alusrc, result;
wire regwrite, writewhat, aluwhat;
wire [7:0] flag;

instructions IF(.clk(clk), .reset(reset), .ic(ic));

controller ctrl(.ic(ic), .regwrite(regwrite), .writewhat(writewhat), .clk(clk), .alucontrol(alucontrol), .aluwhat(aluwhat));

ifid ifid(.clk(clk), .readreg1(readreg1), 
            .readreg2(readreg2), .writedst(writedst), .ic(ic), .immidata(immidata));
            
registers regs(.reset(reset), .clk(clk), .regwrite(regwrite), 
                .readreg1(readreg1), .readreg2(readreg2), .writedst(writedst), 
                .writedata(writedata), .data1(data1), .data2(data2));

alu alu(.a(data1), .b(alusrc), .alucontrol(alucontrol), .flag(flag), .result(result));
                
assign writedata = writewhat?immidata:aluresult;
assign alusrc = aluwhat?data2:immidata;
endmodule
