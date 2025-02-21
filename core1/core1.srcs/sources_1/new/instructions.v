`timescale 1ns / 1ps

module instructions(
    input clk,
    input reset,
    output [31:0] ic,
    input [4:0] pc);
    
reg [31:0] inst [0:249];

initial begin
  $readmemb("machine_code.data", inst);
end

assign ic = inst[pc];
endmodule
