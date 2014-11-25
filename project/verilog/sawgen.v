`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:58 11/20/2014 
// Design Name: 
// Module Name:    sawgen 
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
module sawgen(input clk, input en, input [25:0] period, output reg [23:0] tone);
    parameter amplitude = 24'hfffff; // TODO CHANGE?
	 //parameter freq = 440;
    reg [31:0] count = 0;
    
    //logic[31:0] period = (48000000 / freq);
    
    reg [23:0] tone0;
	 reg [55:0] tone1;
	 reg [23:0] tone2;
	 reg en0, en1;
	 //wire [95:0] m_axis_dout_tdata;
	 /*
	 multiplier your_instance_name (
  .clk(clk), // input clk
  .a({count}), // input [63 : 0] a
  .b(amplitude * 2), // input [23 : 0] b
  .p(tone0) // output [87 : 0] p
);
	 
	 div_gen_v4_0 your_instance_name2 (
  .aclk(aclk), // input aclk
  .s_axis_divisor_tvalid(1'b1), // input s_axis_divisor_tvalid
  .s_axis_divisor_tready(), // output s_axis_divisor_tready
  .s_axis_divisor_tdata(period), // input [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(1'b1), // input s_axis_dividend_tvalid
  .s_axis_dividend_tready(), // output s_axis_dividend_tready
  .s_axis_dividend_tdata(tone0), // input [63 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(m_axis_dout_tvalid), // output m_axis_dout_tvalid
  .m_axis_dout_tdata(m_axis_dout_tdata) // output [95 : 0] m_axis_dout_tdata
);
	 assign tone1 = m_axis_dout_tdata[95:32];
	 
	 
	 
	 
	 */
    always @(posedge clk) begin
		  en0 <= en;
		  en1 <= en0;
		  tone0 <= $signed(count + 56'b0) * $signed(amplitude * 2);
		  tone1 <= $signed(tone0) / $signed(period);
		  tone <= en1 ? 
		          //m_axis_dout_tvalid 
					 $signed(tone1) + $signed(-amplitude) : 0;
				//	 tone
				//	 : 0;
			 
	 
	 
        if(count >= period)
            count <= 0;
        else 
			 if(en)
            count <= count + 1;
	 end
	 //out_value = $signed({1'b0, b}) + $signed({32'b0, counter}) * $signed(c - b) / $signed(y);
	 
	 
	 
	 
	 
    //assign tone = en ? 
    //    $signed(-amplitude) + $signed({32'b0, count}) * $signed(amplitude * 2) / $signed(period)
    //    : 0;
    //assign tone = count << 6;



endmodule
