`default_nettype none







// generates filter coefficients on the fly
module coefficients (
  input wire clk_slow,
  input wire clk_fast,
  //input rst_b,
  input wire k_fixed,
  output wire [31:0] b0, b1, b2, a1, a2,
  output wire done);

// some constants, I might try to optimize these out later
wire [31:0] FP_1 = 32'h3f800000;
wire [31:0] FP_2 = 32'h40000000;
wire [31:0] FP__1 = 32'hbf800000;
wire [31:0] FP_4 = 32'h40800000;
wire [31:0] FP_1_4 = 32'h3e800000;

// declare more wires, because those are helpful
wire [17:0] k_fixed_Q;
wire [31:0] b0_D, b1_D, b2_D, a1_D, a2_D;
wire [31:0] k, kk, k_q, recip;
wire [31:0] recip_s1, recip_s2;
wire [31:0] a1_s1, a1_s2;
wire [31:0] a2_s1, a2_s2;





function [31:0] fp_double;
input [31:0] a;
begin
fp_double = {a[31], a[30:23]+1, a[22:0]};
end
endfunction

function [31:0] fp_negate;
input [31:0] a;
begin
fp_negate = {~a[31], a[30:0]};
end
endfunction














//reg reg_en = 0;
reg [8:0] counter = 0;


wire reg_en;
assign reg_en = (counter == 0);
//always @(posedge clk_fast)
//  if(reg_en)
//    reg_en <= 0;
//  else
//    reg_en <= (counter == 0);

// this should give you WAY more than enough time.

wire [8:0] counter1;
assign counter1 = counter + 1;
always @(posedge clk_fast)
  //if(counter1 == 8)
  //  counter <= 0;
  //else
    counter <= counter1;


register #(18) k_fixed_reg (clk_fast, k_fixed, k_fixed_Q, reg_en);

register #(32) tob0 (clk_fast, b0_D, b0, reg_en);
register #(32) tob1 (clk_fast, b1_D, b1, reg_en);
register #(32) tob2 (clk_fast, b2_D, b2, reg_en);
register #(32) toa1 (clk_fast, a1_D, a1, reg_en);
register #(32) toa2 (clk_fast, a2_D, a2, reg_en);


// K = tan(pi * f / Fs)
// K = pi * f / fs
// now we'll just convert k to float after it's supplied from outside because the scaling almost is perfect when you divide down...

// k conversion is handled implicitly by the floating point converter, which assumes 21 fractional bits of the input.

wire operation_nd = 1'b1; //because ain't nodoby got time for doing this neatly

fix_to_float_K k_convert (
  .a(k_fixed_Q + 22'b0), // input [21 : 0] a
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(k), // output [63 : 0] result
  .rdy() // output rdy
);

// k div q
coeff_mult i_k_q (
  .a(k), // input [63 : 0] a
  .b(FP_1_4), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(k_q), // output [63 : 0] result
  .rdy() // output rdy
);

//kk
coeff_mult i_kk (
  .a(k), // input [63 : 0] a
  .b(k), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(kk), // output [63 : 0] result
  .rdy() // output rdy
);

// recip = 1 / (1+  k/q + k*k)

coeff_add i_recip_s1 (
  .a(FP_1), // input [63 : 0] a
  .b(k_q), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(recip_s1), // output [63 : 0] result
  .rdy() // output rdy
);

coeff_add i_recip_s2(
  .a(recip_s1), // input [63 : 0] a
  .b(kk), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(recip_s2), // output [63 : 0] result
  .rdy() // output rdy
);

great_divide i_recip (
  .a(FP_1), // input [63 : 0] a
  .b(recip_s2), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(recip), // output [63 : 0] result
  .rdy() // output rdy
);


// b0 = kk * recip
coeff_mult i_b0 (
  .a(recip), // input [63 : 0] a
  .b(kk), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(b0_D), // output [63 : 0] result
  .rdy() // output rdy
);
// b1 = 2 * b0
assign b1_D = fp_double(b0_D);
// b2 = b0
assign b2_D = b0_D;

// a1 = 2 * (kk - 1) * recip
coeff_add i_a1_s1 (
  .a(kk), // input [63 : 0] a
  .b(FP__1), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(a1_s1), // output [63 : 0] result
  .rdy() // output rdy
);
coeff_mult i_a1_s2 (
  .a(a1_s1), // input [63 : 0] a
  .b(recip), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(a1_s2), // output [63 : 0] result
  .rdy() // output rdy
);
assign a1_D = fp_double(a1_s2);

// a2 = (1 + -k_q + kk) * recip
coeff_add i_a2_s1 (
  .a(FP_1), // input [63 : 0] a
  .b(fp_negate(k_q)), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(a2_s1), // output [63 : 0] result
  .rdy() // output rdy
);
coeff_add i_a2_s2 (
  .a(a2_s1), // input [63 : 0] a
  .b(kk), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(a2_s2), // output [63 : 0] result
  .rdy() // output rdy
);
coeff_mult i_a2 (
  .a(a2_s2), // input [63 : 0] a
  .b(recip), // input [63 : 0] b
  .operation_nd(operation_nd), // input operation_nd
  .clk(clk_fast), // input clk
  .result(a2_D), // output [63 : 0] result
  .rdy() // output rdy
);


endmodule

// WARNING: UNSAFE FOR UNDERFLOW NUMBERS. OR REALLY BIG ONES
// you are allowed to hit me for this
