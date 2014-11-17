`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:30:50 11/17/2014 
// Design Name: 
// Module Name:    fixed_point 
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

// 2's complement to signed magnitude
/*module switchm (input [w-1:0] i, output [w-1:0] o);
	parameter w=16;
	wire s = i[w-1];
	assign o[w-1] = s;
	assign o[w-2:0] = s ? -i[w-2:0] : i[w-2:0];
endmodule

module sm_to_tc (input [w-1:0] i, output [w-1:0] o);
	parameter w=16;
	switchm x (i, o);
endmodule


module tc_to_sm (input [w-1:0] i, output [w-1:0] o);
	parameter w=16;
	switchm x (i, o);
endmodule
*/
module u_fixed_mult (
	input [aiw-1:0] ai,
	input [afw-1:0] af,
	input [biw-1:0] bi,
	input [bfw-1:0] bf,
	output [aiw+biw-1:0] oi,
	output [afw+bfw-1:0] of
	);
	parameter aiw=8;
	parameter afw=8;
	parameter biw=8;
	parameter bfw=8;




endmoudle


