`timescale 1ns / 1ps

module exwb(
    input clk,
    input [31:0] icex,
    output reg [31:0] icwb,
    input [15:0] result,
    output reg [15:0] resultwb
    );

initial begin
    icwb<=32'b0;
    resultwb<=16'b0;
end
    
always@(posedge clk) begin
    icwb<=icex;
    resultwb<=result;
end    
endmodule
