`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:01:21 12/05/2014 
// Design Name: 
// Module Name:    tremolo 
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
module tremolo (input wire clk, input wire [23:0] audio_in, input wire [24:0] period, output wire [23:0] audio_out, input wire bypass);
    //parameter amplitude = 24'hfffff; // TODO CHANGE?
	 //parameter freq = 440;
    reg [31:0] count = 0;
    
    //logic[31:0] period = (48000000 / freq);
    
    
    always @(posedge clk)
        if(count >= (period))
            count <= 0;
        else 
		      count <= count + 1;
    
    assign audio_out = (bypass || (count > (period >> 1))) ? audio_in : 0;



endmodule