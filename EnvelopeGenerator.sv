module envelope_generator(clk,rst_b,note_on,note_off, a, b, c, d, x, y, z, out_value, busy);
	input logic clk, rst_b;
	input logic note_on, note_off;
	input [7:0] a, b, c, d;
	input [7:0] x, y, z;
	output [7:0] out_value;
	output logic busy;

	enum logic {
	IDLE = 5'b00001, 
	ATTACK = 5'b00010,
	DECAY = 5'b00100,
	SUSTAIN = 5'b01000,
	RELEASE = 5'b10000
	} cs, ns;

  	always_ff@(posedge clk, negedge rst_b) begin
    	if(~rst_b) cs <= IDLE;
    	else cs <= ns;
  	end	

  	//next state logic
  	always_comb begin
  		case(cs)
  			IDLE: begin
  				if(note_on)
  					ns = ATTACK;
  				else
  					ns = IDLE;
  			end
  			ATTACK: begin
  				if((a+(b-a)/x)>b)
  					ns = DECAY;
  				else
  					ns = ATTACK;
  			end
  			DECAY: begin
  				if((b-(b-c)/y<c)
  					ns = SUSTAIN;
  				else
  					ns = DECAY;
  			end
  			SUSTAIN: begin
  				if(note_off)
  					ns = RELEASE;
  				else
  					ns = SUSTAIN;
  			end
  			RELEASE: begin
  				if((c-(c-d)/z<d)
  					ns = IDLE;
  				else
  					ns = RELEASE;
  			end
  		endcase
  	end

  	//output logic
  	always_comb begin
  		case(cs)
  			IDLE:begin
  				out_value = a;
  				busy = 1'b0;
  			end
  			ATTACK:begin
  				out_value = a + (b-a)/x;
  				busy = 1'b1;
  			end
  			DECAY:begin
  				out_value = b - (b-c)/y;
  				busy = 1'b1;
  			end
  			SUSTAIN:begin
  				out_value = c;
  				busy = 1'b1;
  			end
  			RELEASE:begin
  				out_value = c - (c-d)/z;
  				busy = 1'b1;
  			end
  		endcase
  	end


