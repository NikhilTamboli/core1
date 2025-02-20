`timescale 1ns / 1ps

module ifid(
    input clk,
    output reg [3:0] readreg1,
    output reg [3:0] readreg2,
    output reg [3:0] writedst,
    input [31:0] ic,
    output reg [15:0] immidata
    );

always@(posedge clk) begin
    case(ic[31:24])
        6'b000000: begin
            writedst <= ic[23:20];
            immidata <= ic[15:0];
            readreg1 <= 0;
            readreg2 <= 0; 
        end
        default: begin
            writedst <= 0;
            immidata <= 0;
            readreg1 <= 0;
            readreg2 <= 0; 
        end
    endcase
end

endmodule
