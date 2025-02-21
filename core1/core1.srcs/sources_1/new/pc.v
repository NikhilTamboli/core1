`timescale 1ns / 1ps

module pc(
    input clk,
    input reset,
    input [4:0] jmpto,
    input jmp,
    output reg [4:0] pc);

always@(posedge clk or posedge reset) begin
    if(reset) pc <= 0;
    else if(jmpto!=5'bx) pc<=jmpto;
    else pc <= pc+1;
    
end    
endmodule
