`timescale 1ns / 1ps
`default_nettype none

module fake_envelope_generator(clk,rst_b,note_on,note_off, a, b, c, d, x, y, z, out_value, busy,done);
	input wire clk, rst_b;
	input wire note_on, note_off;
	input wire [17:0] a, b, c, d;
	input wire [31:0] x, y, z;
	output wire [17:0] out_value;
	output reg busy, done;
	
	wire [4:0] IDLE    = 5'b00001;
	wire [4:0] ATTACK  = 5'b00010;
	wire [4:0] DECAY   = 5'b00100;
	wire [4:0] SUSTAIN = 5'b01000;
	wire [4:0] RELEASE = 5'b10000;
	
	reg [4:0] current = 5'b00001, next;
	
	reg [31:0] counter;
	wire [31:0] counter1;
	
   reg [17:0] startfrom;
	reg [17:0] goal;
	
	reg [31:0] ticks;
	
	wire [17:0] out_value1;
	reg [17:0] out_value0;
	assign out_value = out_value0;

	
	wire up, down;
	assign up = (goal > startfrom);
	assign down = (goal < startfrom);
	
	assign counter1 = counter + 1;
	assign out_value1 = up ? out_value + 1 : 
	                down ? out_value - 1 : out_value;


	reg [31:0] counter0;
	
	
	//assign counter0 = 

  	always @(posedge clk, negedge rst_b) begin
		if(~rst_b) begin
			counter <= 0;
			startfrom <= 0;
			current <= 0;
			out_value0 <= 0;
		end else begin
			
			if(current != next) begin
				counter <= 0;
            startfrom <= out_value;
			end else if (current == IDLE || current == SUSTAIN)
				counter <= 0;
			else
			   if(counter == ticks) begin
				  out_value0 <= out_value1;
				  counter <= 0;
				end
			else
				counter <= counter1;
			
			current <= next;
		end	
  	end	

  	//next state logic
  	always @* begin
  		done = 0;
		//ticks = -1;
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
				else if(out_value == b)
  					next = DECAY;
  				else
  					next = ATTACK;
  			end
  			DECAY: begin
  				if(note_off)
					next = RELEASE;
				else if(out_value == c) 
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
  				if(out_value == d) begin
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
		goal = 0;
		ticks = -1;
		case(current)
  			IDLE:begin   
  				busy = 1'b0;
  			end
  			ATTACK:begin
				busy = 1'b1;
				goal = b;
				ticks = x;
  			end
  			DECAY:begin
				busy = 1'b1;
				goal = c;
				ticks = y;
  			end
  			SUSTAIN:begin
  				busy = 1'b1;
  			end
  			RELEASE:begin
				goal = d;
				busy = 1'b1;
				ticks = z;
  			end
  		endcase
  	end
	
endmodule
