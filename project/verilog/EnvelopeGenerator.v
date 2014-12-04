`default_nettype none

module envelope_generator(clk,rst_b,note_on,note_off, a, b, c, d, x, y, z, out_value, busy,done);
	input wire clk, rst_b;
	input wire note_on, note_off;
	input wire [17:0] a, b, c, d;
	input wire [31:0] x, y, z;
	output wire [17:0] out_value;
	output reg busy, done;

	//reg [17:0] out_value1;
	//typedef enum {IDLE,ATTACK,DECAY,SUSTAIN,RELEASE} estate;
	
	wire [4:0] IDLE    = 5'b00001;
	wire [4:0] ATTACK  = 5'b00010;
	wire [4:0] DECAY   = 5'b00100;
	wire [4:0] SUSTAIN = 5'b01000;
	wire [4:0] RELEASE = 5'b10000;
	
	reg [4:0] current = 5'b00001, next;
	
	reg [17:0] riv = ~0; // relase state initial value
	
	
	reg [31:0] counter = 0;
	wire [31:0] counter1;
	assign counter1 = counter + 1;

  	always@(posedge clk) begin
    	//if(~rst_b) begin 
		//	current <= IDLE;
			//out_value1 <= 0;
		//	riv <= 0;
		//	counter <= 0;
    	//end else begin
			if(current != next) begin
				counter <= 0;

			end else if (current == IDLE)
				counter <= 0;
			else
				counter <= counter1;
				
			if(current != RELEASE)
				riv <= out_value;
			current <= next;
			
			/*sub <= subv1 - subv2;
			mult <= $signed(multv + 40'b0) * $signed(sub);
			div <= $signed(mult) / $signed(divv);
			add <= subv2 + div;*/
		//end
  	end	

	reg [17:0] subva = 0;
	reg [17:0] subvb = 0;
	reg [31:0] divv = 0; 
	reg predef;
	reg [17:0] predefv;
	wire [17:0] pipe_res;







  	//next state logic
  	always @* begin
  		done = 0;
		case(current)
  			IDLE: begin
  				if(note_on)
  					next = ATTACK;
  				else
  					next = IDLE;
  			end
  			ATTACK: begin
  				if(note_off)
					next = RELEASE;
				else if(counter1 >= x)
  					next = DECAY;
  				else
  					next = ATTACK;
  			end
  			DECAY: begin
  				if(note_off)
					next = RELEASE;
				else if(counter1 >= y) 
					next = SUSTAIN;
  				else
  					next = DECAY;
  			end
  			SUSTAIN: begin
  				if(note_off)
  					next = RELEASE;
  				else
  					next = SUSTAIN;
  			end
  			RELEASE: begin
  				if(counter1 >= z) begin
  					next = IDLE;
					done = 1'b1;
  				end else
  					next = RELEASE;
  			end
			default:
				next = IDLE;
  		endcase
  	end
		
  	//output logic
  	always @* begin
  		busy = 0;
		//out_value1 = 0;
		divv = 1;
		predef = 0;
		predefv = 0;
		subva = 0;
		subvb = 0;
		
		
		case(current)
  			IDLE:begin
  				//out_value1 = a;
				predef = 1;
				predefv = a;
  				busy = 1'b0;
  			end
  			ATTACK:begin
  				//out_value1 = $signed({1'b0, a}) + $signed({32'b0, counter}) * $signed(b - a) / $signed(x);
  				subva = b;
				subvb = a;
				divv = x;
				busy = 1'b1;
  			end
  			DECAY:begin
  				//out_value1 = $signed({1'b0, b}) + $signed({32'b0, counter}) * $signed(c - b) / $signed(y);
  				subva = c;
				subvb = b;
				divv = y;
				busy = 1'b1;
  			end
  			SUSTAIN:begin
  				//out_value1 = c;
				predef = 1;
				subva = c;
				subvb = c;
				divv = 1;
				predefv = c;
  				busy = 1'b1;
  			end
  			RELEASE:begin
				//out_value1 = $signed({1'b0, riv}) + $signed({32'b0, counter}) * $signed(d - riv) / $signed(z);
  				subva = d;
				subvb = riv;
				divv = z;
				busy = 1'b1;
  			end
  		endcase
  	end
	
	envgenmath e (clk, counter, subva, subvb, divv, predef, predefv, pipe_res);	
	assign out_value = pipe_res;

endmodule:envelope_generator

module envgenmath (
	input wire clk, 
	input wire [31:0] counter, 
	input wire [17:0] subva,
	input wire [17:0] subvb, 
	input wire [31:0] divv,
	input wire predef,
	input wire [17:0] predefv, 
	
	output wire [17:0] pipe_res);

	wire [17:0] sub, div;
	wire [87:0] div0;
   wire[49:0] mult;
	wire dividend_, divisor_;

	engen_sub i_sub (clk, subva, subvb, sub);
   engen_mult i_mult (clk, sub, counter, mult);
	engen_div i_div (clk, divisor_, dividend_, divisor_, dividend_, , divv, {6'b0, mult}, div0);
	assign div = div0[49:32];
	engen_add i_add (clk, div, subvb, pipe_res);


endmodule

/*module envgenpipeline (
	input clk, 
	input [31:0] counter, 
	input [17:0] subva,
	input [17:0] subvb, 
	input [17:0] divv,
	input predef,
	input [17:0] predefv, 
	
	output [17:0] pipe_res);
	
	
	reg [31:0] counter0,  counter1;
	reg [17:0]             subv1=~0;
	reg [17:0]  subva0; 
	reg [17:0]  subvb0,    subvb1,    subvb2,    subvb3; 
	reg [49:0]                       mult2=~0;
	reg [17:0] divv0,     divv1,     divv2; 
	reg [17:0]                                  div3=~0; 
	reg [17:0]                                             add4=~0;
	reg        predef0,   predef1,   predef2,   predef3,   predef4;
	reg [17:0] predefv0,  predefv1,  predefv2,  predefv3,  predefv4;
	
always @(posedge clk) begin
	counter0 <= counter;
	subva0 <= subva;
	subvb0 <= subvb;
	divv0 <= divv;
	predef0 <= predef;
	predefv0 <= predefv;
	
	counter1 <= counter0;
	subv1 <= subva0 - subvb0;
	subvb1 <= subvb0;
	divv1 <= divv0;
	predef1 <= predef0;
	predefv1 <= predefv0;
	
	subvb2 <= subvb1;
	mult2 <= $signed(subv1) * $signed(counter1 + 50'b0);
	divv2 <= divv1;
	predef2 <= predef1;
	predefv2 <= predefv1;
	
	subvb3 <= subvb2;
	div3 <= $signed(mult2) / $signed(divv2);
	predef3 <= predef2;
	predefv3 <= predefv2;
	
	add4 <= subvb3 + div3;
	predef4 <= predef3;
	predefv4 <= predefv3;
	
	
end
	
	assign pipe_res = predef4 ? predefv4 : add4;
	

	
	
	
	
	
//struct packed {
//	wire [31:0] counter;
//	wire [7:0] subv1;
//	wire [7:0] subv2;
//	wire [31:0] divv;
//	} t0o, t1i;
//	
//assign t0o.counter = counter;
//assign t0o.subv1 = subv1;
//assign t0o.subv2 = subv2;
//assign t0o.divv = divv;
//
//register #(.bits(t0o)) t01 (clk, 1'b1, t0o, t1i, 1'b1);
//
//assign t1o.sub = t1i.subv1 - t1i.subv2;
//assign t1o.counter = t1i.counter;
//assign t1o.divv = t1i.divv;
//assign t1o.subv2 = t1i.subv2;
//	
//register #(.bits(t1o)) t12 (clk, 1'b1, t1o, t2i, 1'b1);
//	
//assign t2o.mult = t2i.counter * t2i.sub;
//assign t2o.divv = t2i.divv;
//assign t2o.subv2 = t2i.subv2;
	
endmodule:envgenpipeline*/

//`default_nettype wire