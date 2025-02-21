`timescale 1ns / 1ps

module alu(
    input [15:0] a,
    input [15:0] b,
    input [3:0] alucontrol,
    output reg [15:0] result,
    output reg [7:0] flag
    );

reg [15:0] temp;

initial begin
    flag[7:0] <= 8'b0;
end

always @(*) begin
    case(alucontrol) 
        0: begin
            {temp,result}<=a+b;
        end
        1: begin
            {temp,result}<=a-b;
        end
        2: begin
            {temp,result}<=a*b;
        end
        3: begin
            {temp,result}<=a>>b;
        end
        4: begin
            {temp,result}<=a<<b;
        end
        default: begin 
            result<=0;
            temp<=0;
        end
    endcase
    
    flag[0] <= result==0;
    flag[1] <= temp[0];
    flag[2] <= result[15];
    flag[3] <= |temp;
    flag[7:4] <= 4'b0;
end
endmodule
