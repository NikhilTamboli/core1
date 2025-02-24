`timescale 1ns / 1ps

module fwd(
    input [15:0] data,
    input [31:0] icex,
    input [3:0] rw,
    output reg fwdsignalr1,
    output reg fwdsignalr2,
    output reg [15:0] dataout
    );
    
always@(*) begin
    dataout<=data;
    fwdsignalr1<=(icex[19:16]==rw);
    if(icex[27:24]==4'b0011||icex[27:24]==4'b0100||icex[27:24]==4'b0101||icex[27:24]==4'b0110||icex[27:24]==4'b0111) begin //not immidiate inst 
        fwdsignalr2<=0;
    end
    else begin
        fwdsignalr2<=(icex[15:12]==rw);
    end
end    
endmodule
