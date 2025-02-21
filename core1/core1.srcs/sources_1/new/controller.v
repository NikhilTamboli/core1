`timescale 1ns / 1ps

module controller(
    input [31:0] ic,
    input clk,
    output reg regwrite,
    output reg writewhat,
    output reg [3:0] alucontrol,
    output reg aluwhat
    );

initial begin
    writewhat <= 1;
end

always@(negedge clk) begin
    regwrite = !(ic[31:24]==8'b00000011);
end

always@(posedge clk) begin
    regwrite = 0;
    writewhat = !(ic[31:28]==4'b1111);
    aluwhat = !(ic[27:24]==4'b0011||ic[27:24]==4'b0100);
    alucontrol = ic[27:24];
end

endmodule
