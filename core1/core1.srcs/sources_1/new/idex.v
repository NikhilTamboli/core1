`timescale 1ns / 1ps

module idex(
    input clk,
    input [15:0] data1,
    input [15:0] data2,
    output reg [15:0] a,
    output reg [15:0] b, 
    input [31:0] icid,
    output reg [31:0] icex,
    output reg [7:0] alucontrol
    );

always@(posedge clk) begin    
    icex<=icid;
    if(icid[27:24]==4'b0011||icid[27:24]==4'b0100||icid[27:24]==4'b0101||icid[27:24]==4'b0110||icid[27:24]==4'b0111) b<=icid[15:0];
    else b <= data2;
    a <= data1;
    alucontrol <= icid[31:24]; 
end 
endmodule
