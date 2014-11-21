`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:46 11/20/2014 
// Design Name: 
// Module Name:    notebank 
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
module notebank(
    input clk,
	 input rst_b,
	 input note_on,
	 input note_off,
	 input [31:0] period, a, b, c, d, x, y, z, // adjust sizes later
	 
	 
	 output [] audio,
	 output done
    );


endmodule
