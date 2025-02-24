`timescale 1ns / 1ps

module alu(
    input [15:0] a,
    input [15:0] b,
    input [7:0] alucontrol,
    output reg [15:0] result,
    output reg [7:0] flag
    );

reg [15:0] temp;

initial begin
    flag[7:0] <= 8'b0;
end

always @(*) begin
    case(alucontrol) 
        8'b11110000: begin
            {temp,result}<=a+b;
        end
        8'b11110001: begin
            {temp,result}<=a-b;
        end
        8'b11110010: begin
            {temp,result}<=a*b;
        end
        8'b11110011: begin
            {temp,result}<=a>>b;
        end
        8'b11110100: begin
            {temp,result}<=a<<b;
        end
        8'b11110101: begin
            {temp,result}<=a+b;
        end
        8'b11110110: begin
            {temp,result}<=a-b;
        end
        8'b11110111: begin
            {temp,result}<=a*b;
        end                        
        8'b00000000: begin
            {temp,result}<=a;
        end
        default: begin 
            result<=0;
            temp<=0;
        end
    endcase
    
    flag[0] <= result==0;
    flag[1] <= temp[0];
    flag[2] <= result[15];
    flag[3] <= temp|15'b0;
    flag[4] <= a<b;
    flag[5] <= a==b;
    flag[6] <= a>b;
    flag[7] <= 0;
end
endmodule
