`timescale 1ns / 1ps

module alu(
    input [15:0] a,
    input [15:0] b,
    input [3:0] alucontrol,
    output reg [15:0] result,
    output reg [7:0] flag
    );

always @(*) begin
    case(alucontrol) 
        0: begin
            result<=a+b;
        end
        1: begin
            result<=a-b;
        end
        2: begin
            result<=a*b;
        end
        3: begin
            result<=a>>b;
        end
        4: begin
            result<=a<<b;
        end
    endcase
end
endmodule
