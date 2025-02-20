`timescale 1ns / 1ps

module instructions(
    input clk,
    input reset,
    output [31:0] ic);
    
reg [31:0] inst [0:249];
reg [4:0] pc;

initial begin
  $readmemb("machine_code.data", inst);
end

always@(posedge clk or posedge reset) begin
    if(reset) pc <= 0;
    else pc <= pc+1;
end

assign ic = inst[pc];
endmodule
