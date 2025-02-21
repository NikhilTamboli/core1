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
    fwdsignalr2<=(icex[15:12]==rw);
end    
endmodule
