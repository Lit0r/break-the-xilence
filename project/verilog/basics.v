`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:54:16 11/17/2014 
// Design Name: 
// Module Name:    basics 
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

// Registers, just the way Elliot likes 'em. Oh baby.
module register(
	input clk,
	input rst_b,
	input [w-1:0] d,
	output reg [w-1:0] q,
	input en
	);
parameter w=1;

always @(posedge clk, negedge rst_b)
	if(~rst_b)
		q <= 0;
	else if(en)
		q <= d;
		
endmodule
/*
module register_periodic(
	input clk,
	input rst_b,
	input [w-1:0] d,
	output reg [w-1:0] q,
	);
parameter w=1;
parameter period=3;

reg [$clog2(period)-1:0] counter;
wire [$clog2(period)-1:0] counter1;
assign counter1 = counter + 1;


endmodule
*/
