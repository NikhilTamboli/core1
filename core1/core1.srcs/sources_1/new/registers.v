`timescale 1ns / 1ps

module registers(
    input reset,
    input clk,
    input regwrite,
    input [3:0] readreg1,
    input [3:0] readreg2,
    input [3:0] writedst,
    input [15:0] writedata,
    output [15:0] data1,
    output [15:0] data2
    );
    
reg [15:0] regs[0:15];

integer i;

assign data1 = regs[readreg1];
assign data2 = regs[readreg2];

always @(posedge regwrite) begin
    if(regwrite) regs[writedst]=writedata;
end

always @(posedge reset) begin
    if(reset==1) begin
        for(i=0; i<16; i=i+1) begin
            regs[i]<=0;
        end 
    end
end   
endmodule
