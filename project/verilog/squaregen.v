`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:36:58 11/04/2014 
// Design Name: 
// Module Name:    squaregen 
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

module squaregen (input wire clk, input wire en, input wire [25:0] period, output wire [23:0] tone);
    parameter amplitude = 24'hfffff; // TODO CHANGE?
	 //parameter freq = 440;
    reg [31:0] count = 0;
    
    //logic[31:0] period = (48000000 / freq);
    
    
    always @(posedge clk)
        if(count >= period)
            count <= 0;
        else if(en)
            count <= count + 1;
    
    assign tone = en ? 
        (count > (period >> 1)) ? amplitude : -amplitude // TODO CHANGE BOUNDS
        : 0;
    //assign tone = count << 6;



endmodule

`default_nettype wire