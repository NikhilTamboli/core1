`timescale 1ns / 1ps

module core_tb();

reg clk, reset;

core uut (.clk(clk), .reset(reset));

initial begin
    clk=1;
    repeat(42) #10 clk=~clk;
    $finish;
end

initial begin
    reset = 1;
    #5 reset = 0;
end
endmodule
