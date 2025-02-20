`timescale 1ns / 1ps
module core(
    input clk,
    input reset
    );
    
wire [31:0] ic;
wire [3:0] writedst, readreg1, readreg2;
wire [16:0] immidata, data1, data2, aluresult, writedata;
wire regwrite, writewhat;

instructions IF(.clk(clk), .reset(reset), .ic(ic));

controller ctrl(.ic(ic), .regwrite(regwrite), .writewhat(writewhat), .clk(clk));

ifid ifid(.clk(clk), .readreg1(readreg1), 
            .readreg2(readreg2), .writedst(writedst), .ic(ic), .immidata(immidata));
            
registers regs(.reset(reset), .clk(clk), .regwrite(regwrite), 
                .readreg1(readreg1), .readreg2(readreg2), .writedst(writedst), 
                .writedata(writedata), .data1(data1), .data2(data2));

                
//assign writedata = writewhat?immidata:aluresult;
assign writedata = immidata;
endmodule
