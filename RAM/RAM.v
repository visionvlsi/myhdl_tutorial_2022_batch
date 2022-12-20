// File: RAM.v
// Generated by MyHDL 0.11
// Date: Mon Dec 12 10:48:10 2022


`timescale 1ns/10ps

module RAM (
    dout,
    din,
    addr,
    we,
    clk
);
// Ram model 

output [7:0] dout;
wire [7:0] dout;
input [7:0] din;
input [6:0] addr;
input we;
input clk;

reg [7:0] mem [0:128-1];



always @(posedge clk) begin: RAM_WRITE
    if (we) begin
        mem[addr] <= din;
    end
end



assign dout = mem[addr];

endmodule