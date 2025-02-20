`timescale 1ns / 1ps

module controller(
    input [31:0] ic,
    input clk,
    output reg regwrite,
    output reg writewhat
    );

always@(negedge clk) begin
    regwrite = (ic[31:24]==6'b000000);
end

always@(posedge clk) begin
    regwrite = 0;
end

always@(*) begin
    writewhat = (ic[31:24]==6'b000000);
end
endmodule
