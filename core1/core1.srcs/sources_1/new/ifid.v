`timescale 1ns / 1ps

module ifid(
    input clk,
    output reg [3:0] readreg1,
    output reg [3:0] readreg2,
    output reg [3:0] writedst,
    input [31:0] ic,
    output reg [15:0] writedata,
    output jmp,
    output [4:0] jmpto,
    input [7:0] flag,
    output reg [31:0] icid,
    input [31:0] icwb,
    output reg regwrite,
    input [15:0] resultwb
    );

always@(negedge clk) begin
    case(icwb[31:24])
        8'b00001111: begin
            writedst <= icwb[23:20];
            writedata <= icwb[15:0];
            regwrite <= 1;
        end        
        default: begin
            writedst <= icwb[23:20];
            writedata <= resultwb;      
            regwrite <=1;  
        end
    endcase  
end
    
always@(posedge clk) begin
    icid<=ic;
    regwrite<=0;
    case(ic[31:24])                 
        default: begin
            readreg1 <= ic[19:16];
            readreg2 <= ic[15:12];
        end        
    endcase  
end

endmodule
