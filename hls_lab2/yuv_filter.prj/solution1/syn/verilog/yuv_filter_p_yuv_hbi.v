// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module yuv_filter_p_yuv_hbi_ram (addr0, ce0, d0, we0, q0,  clk);

parameter DWIDTH = 8;
parameter AWIDTH = 22;
parameter MEM_SIZE = 2457600;

input[AWIDTH-1:0] addr0;
input ce0;
input[DWIDTH-1:0] d0;
input we0;
output wire[DWIDTH-1:0] q0;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];
wire [AWIDTH-1:0] addr0_t0; 
(* EQUIVALENT_REGISTER_REMOVAL="NO" *)reg [AWIDTH-1:0] addr0_t1; 
wire [DWIDTH-1:0] d0_t0; 
wire we0_t0; 
(* EQUIVALENT_REGISTER_REMOVAL="NO" *)reg [DWIDTH-1:0] d0_t1; 
(* EQUIVALENT_REGISTER_REMOVAL="NO" *)reg we0_t1; 
reg [DWIDTH-1:0] q0_t0;
reg [DWIDTH-1:0] q0_t1;


assign addr0_t0 = addr0;
assign d0_t0 = d0;
assign we0_t0 = we0;
assign q0 = q0_t1;

always @(posedge clk)  
begin
    if (ce0) 
    begin
        addr0_t1 <= addr0_t0; 
        d0_t1 <= d0_t0;
        we0_t1 <= we0_t0;
        q0_t1 <= q0_t0;
    end
end


always @(posedge clk)  
begin 
    if (ce0) 
    begin
        if (we0_t1) 
        begin 
            ram[addr0_t1] <= d0_t1; 
            q0_t0 <= d0_t1;
        end 
        else 
            q0_t0 <= ram[addr0_t1];
    end
end


endmodule


`timescale 1 ns / 1 ps
module yuv_filter_p_yuv_hbi(
    reset,
    clk,
    address0,
    ce0,
    we0,
    d0,
    q0);

parameter DataWidth = 32'd8;
parameter AddressRange = 32'd2457600;
parameter AddressWidth = 32'd22;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
input we0;
input[DataWidth - 1:0] d0;
output[DataWidth - 1:0] q0;



yuv_filter_p_yuv_hbi_ram yuv_filter_p_yuv_hbi_ram_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .d0( d0 ),
    .we0( we0 ),
    .q0( q0 ));

endmodule

