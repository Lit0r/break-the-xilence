`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:22 11/25/2014 
// Design Name: 
// Module Name:    mult_timing 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module env_tb;

reg clk;

always 
	#104.17  clk =  ! clk; 
	
reg note_on, note_off;
wire [23:0] a_out;
reg [17:0] a, b, c, d;
reg [31:0] x, y, z;
wire busy;
wire done;
wire [22:0] period = 1000;
reg rst_b;
//envelope_generator uut (clk, rst_b, note_on, note_off, a, b, c, d, x, y, z, out_value, busy, done);

notebank bank(
    .clk_slow(clk),
    .clk_fast(),
	 .rst_b(1'b1),
	 .note_on(note_on),
	 .note_off(note_off),
	 .period(period), 
	 .fa(), 
	 .fb(), 
	 .fc(), 
	 .fd(), 
	 .ab(b), 
	 .ac(c), 
	 .x(x), 
	 .y(y), 
	 .z(z), 	 
	 .audio_out(a_out),
	 .done(done)
    );


initial begin
rst_b = 0;
clk = 0;
note_on = 0;
note_off = 0;
a = 0;
b = 128;
c = 64;
d = 0;
x = 10000;
y = 10000;
z = 10000;
#1 rst_b = 1;
#1000
note_on = 1;
@(posedge clk)
note_on = 0;
#10000001
note_off = 1;
@(posedge clk)
note_off = 0;
#10000002
$display("bees!");
$finish;
end

//initial
	//#20000 $finish;


endmodule
