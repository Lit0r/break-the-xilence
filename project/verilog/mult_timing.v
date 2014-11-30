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
module mult_timing;
/*
floating_point_v5_0 your_instance_name (
  .a(a), // input [63 : 0] a
  .b(b), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .operation_rfd(operation_rfd), // output operation_rfd
  .clk(clk), // input clk
  .result(result), // output [63 : 0] result
  .rdy(rdy) // output rdy
);
*/
reg clk, nd;
reg [63:0] floatsignalQ;
wire rdy, rfd;
wire [63:0] resultD;
floating_point_v5_0 your_instance_name10101 (
  .a(floatsignalQ), // input [63 : 0] a
  .b(floatsignalQ), // input [63 : 0] b
  .operation_nd(nd), // input operation_nd
  .operation_rfd(rfd), // output operation_rfd
  .clk(clk), // input clk
  .result(resultD), // output [63 : 0] result
  .rdy(rdy) // output rdy
);

always 
	#104.17  clk =  ! clk; 
	
initial begin
clk = 0; nd = 1;
floatsignalQ = 64'h5329_3868_5734_5874;
@(negedge clk) nd = 0;
@(negedge rdy);
@(negedge clk) nd = 1;
 floatsignalQ = 64'ha469_ff45_0a00_8f02;
@(negedge clk) nd = 0;
@(negedge rdy);
@(negedge clk) nd = 1;
floatsignalQ = 64'ha324_ff45_bee5_8f03;
@(negedge clk) nd = 0;
@(negedge rdy);



$display("bees!");
$finish;
end

//initial
	//#20000 $finish;


endmodule
