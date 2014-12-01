module xillydemo
  (
  input  clk_100,
  input  otg_oc,   
  inout [55:0] PS_GPIO,
  inout scl1,
  inout sda1,
  inout scl_alt1,
  inout sda_alt1,  
  inout scl2,
  inout sda2,
  inout scl_alt2,
  inout sda_alt2,  
  inout scl3,
  inout sda3,
  inout scl_alt3,
  inout sda_alt3,
  output [3:0] GPIO_LED,
  output [3:0] vga4_blue,
  output [3:0] vga4_green,
  output [3:0] vga4_red,
  output  vga_hsync,
  output  vga_vsync,

// NEW AUDIO
           output AC_ADR0,
           output AC_ADR1 , 
           output AC_GPIO0 ,
           input AC_GPIO1 ,
           input AC_GPIO2 ,
           input AC_GPIO3 ,
           output AC_MCLK  ,
           output AC_SCK   ,
           inout AC_SDA   
// END NEW AUDIO

  /*output  audio_mclk,
  output  audio_dac,
  input   audio_adc,
  input   audio_bclk,
  input   audio_lrclk,
*/
  /*output smb_sclk,
  inout  smb_sdata,
  output [1:0] smbus_addr
*/
  ); 
  parameter banks = 1;


// IBUFG: Single-ended global clock input buffer
//        7 Series
// Xilinx HDL Libraries Guide, version 13.2

wire clk_100_buffered;

IBUFG #(
   .IBUF_LOW_PWR("TRUE"), // Low power="TRUE", Highest performance="FALSE"
   .IOSTANDARD("DEFAULT")  // Specify the input I/O standard
) IBUFG_inst (
   .O(clk_100_buffered), // Clock buffer output
   .I(clk_100)  // Clock buffer input (connect directly to top-level port)
);

// End of IBUFG_inst instantiation


   // Clock and quiesce
   wire    bus_clk;
   wire    quiesce;

   // Memory arrays
   reg [7:0] demoarray[0:31];
   
   reg [7:0] litearray0[0:31];
   reg [7:0] litearray1[0:31];
   reg [7:0] litearray2[0:31];
   reg [7:0] litearray3[0:31];

   // Wires related to /dev/xillybus_mem_8
   /* wire      user_r_mem_8_rden;
   wire      user_r_mem_8_empty;
   reg [7:0] user_r_mem_8_data;
   wire      user_r_mem_8_eof;
   wire      user_r_mem_8_open;
   wire      user_w_mem_8_wren;
   wire      user_w_mem_8_full;
   wire [7:0] user_w_mem_8_data;
   wire       user_w_mem_8_open;
   wire [4:0] user_mem_8_addr;
   wire       user_mem_8_addr_update;*/

   // Wires related to /dev/xillybus_read_32
   wire       user_r_read_32_rden;
   wire       user_r_read_32_empty;
   wire [31:0] user_r_read_32_data;
   wire        user_r_read_32_eof;
   wire        user_r_read_32_open;

   // Wires related to /dev/xillybus_read_8
   wire        user_r_read_8_rden;
   wire        user_r_read_8_empty;
   wire [7:0]  user_r_read_8_data;
   wire        user_r_read_8_eof;
   wire        user_r_read_8_open;

   // Wires related to /dev/xillybus_write_32
   wire        user_w_write_32_wren;
   wire        user_w_write_32_full;
   wire [31:0] user_w_write_32_data;
   wire        user_w_write_32_open;

   // Wires related to /dev/xillybus_write_8
   wire        user_w_write_8_wren;
   wire        user_w_write_8_full;
   wire [7:0]  user_w_write_8_data;
   wire        user_w_write_8_open;

   // Wires related to /dev/xillybus_audio
   /*wire        user_r_audio_rden;
   wire        user_r_audio_empty;
   wire [31:0] user_r_audio_data;
   wire        user_r_audio_eof;
   wire        user_r_audio_open;
   wire        user_w_audio_wren;
   wire        user_w_audio_full;
   wire [31:0] user_w_audio_data;
   wire        user_w_audio_open;*/
 
   // Wires related to /dev/xillybus_smb
   /*wire        user_r_smb_rden;
   wire        user_r_smb_empty;
   wire [7:0]  user_r_smb_data;
   wire        user_r_smb_eof;
   wire        user_r_smb_open;
   wire        user_w_smb_wren;
   wire        user_w_smb_full;
   wire [7:0]  user_w_smb_data;
   wire        user_w_smb_open;*/

   // Wires related to Xillybus Lite
   wire        user_clk;
   wire        user_wren;
   wire [3:0]  user_wstrb;
   wire        user_rden;
   reg [31:0]  user_rd_data;
   wire [31:0] user_wr_data;
   wire [31:0] user_addr;
   wire        user_irq;


// HAMSTER TIEM


wire [31:0] fromps;
reg [23:0] audio;

reg [22:0] period = 0;

always @(posedge clk_calc)
	if(fromps[22:0] != 0)
		period <= fromps[22:0];



clocking clocker(
	.CLK_IN1(clk_100_buffered),
	.CLK_audio(clk_48),
	.CLK_calc(clk_calc)
);

adau1761_test adau (
			  .clk_48(clk_48),
           .AC_ADR0(AC_ADR0)  ,
           .AC_ADR1(AC_ADR1)  ,
           .AC_GPIO0(AC_GPIO0) ,
           .AC_GPIO1(AC_GPIO1) ,
           .AC_GPIO2(AC_GPIO2) ,
           .AC_GPIO3(AC_GPIO3) ,
           .AC_MCLK(AC_MCLK) ,
           .AC_SCK(AC_SCK)  ,
           .AC_SDA(AC_SDA) ,
			  .audio(audio),
           .sw()     


);



//wire [17:0] adsr_out;

//wire [23:0] audio_pre_filter;
//wire [41:0] audio_post_filter;



//(input clk, input en, input [25:0] period, output logic [23:0] tone);
//squaregen sq (
//.clk(clk_calc),
//.en(/*fromps[22:0] != 0*/ 1'b1),
//.period(period),
//.tone(audio_pre_filter)
//);

//assign audio_post_filter = $signed(audio_pre_filter + 42'b0) * $signed(adsr_out);
//assign audio = audio_post_filter[41:(42-24)];//audio_post_filter[35:18];//(35-18+1)];
//assign audio = audio_post_filter;//adsr_out;
//assign audio = audio_post_filter;


//reg nevent;
//reg [22:0] oldfromps;
//always @(posedge clk_calc) begin
//	nevent <= (fromps[22:0] != oldfromps);
//	oldfromps <= fromps[22:0];
//end
//
//envelope_generator egtest (
//	.clk(clk_calc),
//	.rst_b(1'b1),
//	.note_on(nevent && fromps[22:0] != 0),
//	.note_off(nevent && fromps[22:0] == 0), 
//	.a(0),
//	.b(127), 
//	.c(63), 
//	.d(0), 
//	.x(480000), 
//	.y(480000), 
//	.z(480000), 
//	.out_value(adsr_out), 
//	.busy()
//	);

//assign fromps = user_w_write_32_data;
 //assign audio;








// END HAMSTER TIEM











   // Note that none of the ARM processor's direct connections to pads is
   // attached in the instantion below. Normally, they should be connected as
   // toplevel ports here, but that confuses Vivado 2013.4 to think that
   // some of these ports are real I/Os, causing an implementation failure.
   // This detachment results in a lot of warnings during synthesis and
   // implementation, but has no practical significance, as these pads are
   // completely unrelated to the FPGA bitstream.

   xillybus xillybus_ins (

    // Ports related to /dev/xillybus_mem_8
    // FPGA to CPU signals:
    /*.user_r_mem_8_rden(user_r_mem_8_rden),
    .user_r_mem_8_empty(user_r_mem_8_empty),
    .user_r_mem_8_data(user_r_mem_8_data),
    .user_r_mem_8_eof(user_r_mem_8_eof),
    .user_r_mem_8_open(user_r_mem_8_open),

    // CPU to FPGA signals:
    .user_w_mem_8_wren(user_w_mem_8_wren),
    .user_w_mem_8_full(user_w_mem_8_full),
    .user_w_mem_8_data(user_w_mem_8_data),
    .user_w_mem_8_open(user_w_mem_8_open),

    // Address signals:
    .user_mem_8_addr(user_mem_8_addr),
    .user_mem_8_addr_update(user_mem_8_addr_update),
*/

    // Ports related to /dev/xillybus_read_32
    // FPGA to CPU signals:
    .user_r_read_32_rden(user_r_read_32_rden),
    .user_r_read_32_empty(user_r_read_32_empty),
    .user_r_read_32_data(user_r_read_32_data),
    .user_r_read_32_eof(user_r_read_32_eof),
    .user_r_read_32_open(user_r_read_32_open),


    // Ports related to /dev/xillybus_read_8
    // FPGA to CPU signals:
    .user_r_read_8_rden(user_r_read_8_rden),
    .user_r_read_8_empty(user_r_read_8_empty),
    .user_r_read_8_data(user_r_read_8_data),
    .user_r_read_8_eof(user_r_read_8_eof),
    .user_r_read_8_open(user_r_read_8_open),


    // Ports related to /dev/xillybus_write_32
    // CPU to FPGA signals:
    .user_w_write_32_wren(user_w_write_32_wren),
    .user_w_write_32_full(user_w_write_32_full),
    .user_w_write_32_data(user_w_write_32_data),
    .user_w_write_32_open(user_w_write_32_open),


    // Ports related to /dev/xillybus_write_8
    // CPU to FPGA signals:
    .user_w_write_8_wren(user_w_write_8_wren),
    .user_w_write_8_full(user_w_write_8_full),
    .user_w_write_8_data(user_w_write_8_data),
    .user_w_write_8_open(user_w_write_8_open),
/*
    // Ports related to /dev/xillybus_audio
    // FPGA to CPU signals:
    .user_r_audio_rden(user_r_audio_rden),
    .user_r_audio_empty(user_r_audio_empty),
    .user_r_audio_data(user_r_audio_data),
    .user_r_audio_eof(user_r_audio_eof),
    .user_r_audio_open(user_r_audio_open),

    // CPU to FPGA signals:
    .user_w_audio_wren(user_w_audio_wren),
    .user_w_audio_full(user_w_audio_full),
    .user_w_audio_data(user_w_audio_data),
    .user_w_audio_open(user_w_audio_open),

    // Ports related to /dev/xillybus_smb
    // FPGA to CPU signals:
    .user_r_smb_rden(user_r_smb_rden),
    .user_r_smb_empty(user_r_smb_empty),
    .user_r_smb_data(user_r_smb_data),
    .user_r_smb_eof(user_r_smb_eof),
    .user_r_smb_open(user_r_smb_open),

    // CPU to FPGA signals:
    .user_w_smb_wren(user_w_smb_wren),
    .user_w_smb_full(user_w_smb_full),
    .user_w_smb_data(user_w_smb_data),
    .user_w_smb_open(user_w_smb_open),
*/
    // Xillybus Lite signals:
    .user_clk ( user_clk ),
    .user_wren ( user_wren ),
    .user_wstrb ( user_wstrb ),
    .user_rden ( user_rden ),
    .user_rd_data ( user_rd_data ),
    .user_wr_data ( user_wr_data ),
    .user_addr ( user_addr ),
    .user_irq ( user_irq ),
			  			  
    // General signals
    .clk_100(clk_100_buffered),
    .otg_oc(otg_oc),
    .PS_GPIO(PS_GPIO),
    .GPIO_LED(GPIO_LED),
    .bus_clk(bus_clk),
    .quiesce(quiesce),

    // VGA port related outputs
			    
    .vga4_blue(vga4_blue),
    .vga4_green(vga4_green),
    .vga4_red(vga4_red),
    .vga_hsync(vga_hsync),
    .vga_vsync(vga_vsync)
  );

   assign      user_irq = 0; // No interrupts for now
   
   always @(posedge user_clk)
     begin
	if (user_wstrb[0])
	  litearray0[user_addr[6:2]] <= user_wr_data[7:0];

	if (user_wstrb[1])
	  litearray1[user_addr[6:2]] <= user_wr_data[15:8];

	if (user_wstrb[2])
	  litearray2[user_addr[6:2]] <= user_wr_data[23:16];

	if (user_wstrb[3])
	  litearray3[user_addr[6:2]] <= user_wr_data[31:24];
	
	if (user_rden)
	  user_rd_data <= { litearray3[user_addr[6:2]],
			    litearray2[user_addr[6:2]],
			    litearray1[user_addr[6:2]],
			    litearray0[user_addr[6:2]] };
     end
   
   // A simple inferred RAM
  /* always @(posedge bus_clk)
     begin
	if (user_w_mem_8_wren)
	  demoarray[user_mem_8_addr] <= user_w_mem_8_data;
	
	if (user_r_mem_8_rden)
	  user_r_mem_8_data <= demoarray[user_mem_8_addr];	  
     end
*/
   //assign  user_r_mem_8_empty = 0;
   //assign  user_r_mem_8_eof = 0;
   //assign  user_w_mem_8_full = 0;

reg [banks-1:0] note_on;
reg note_off[0:banks-1];
reg [25:0] periods [0:banks-1];
wire [23:0] bank_out [0:banks-1];
wire done [0:banks-1];
reg [4:0] bank_done; // which note bank is done
wire is_note_on_event;

reg note_done;
wire [4:0] note_event_bank;



//wire seen = 1'b1;
	//always @(posedge clk_48)
	  //  seen <= user_w_write_32_wren;

// since the clocks are integer multiples, I only really need to do this for flags, right?
wire seen; // JACOB: this may need a testbench. check waveforms to see that 'seen' is a signal in the clk_48 domain that rises when clk_calc rises.
FlagAck_CrossDomain(clk_calc, 1'b1, ,clk_48, seen);

wire no_new_note;
wire [31:0] dout;


   // 32-bit loopback
  fif_async_32 f32 (
  .rst(1'b0), // input rst JACOB
  .wr_clk(clk_100_buffered), // input wr_clk
  .rd_clk(clk_48), // input rd_clk
  .din(write_32_data), // input [31 : 0] din
  .wr_en(write_32_wren), // input wr_en
  .rd_en(seen), // input rd_en
  .dout(dout), // output [31 : 0] dout
  .full(full), // output full
  .empty(no_new_note) // output empty
);
	
	
	fif_async_8 f8 (
  .rst(1'b0), // input rst JACOB
  .wr_clk(clk_48), // input wr_clk
  .rd_clk(clk_100_buffered), // input rd_clk
  .din(bank_done), // input [7 : 0] din
  .wr_en(note_done), // input wr_en
  .rd_en(read_8_rden), // input rd_en
  .dout(read_8_data), // output [7 : 0] dout
  .full(read_8_full), // output full
  .empty(read_8_empty) // output empty
);


//assign dout = user_w_write_32_data;


assign note_event_bank = dout[27:23]; // JACOB: I fgorget the exact bits. fix this!
assign note_period = dout[22:0]; // JACOB: same thing

// JACOB: please find a way to determine the "new_note_event" signal.
// if (seen && ~no_new_note) probably should do it??
assign new_note_event = seen && ~no_new_note;
assign is_note_on_event = new_note_event && (note_period != 0);

// JACOB: x, y, z are the same as envelope.
// fa fb fc fd are a, b, c, d for the _filter_
// ab and ac are for _amplitude_ envelope (aa and ad are 0)
// the pmods should hook to those variables!
wire [15:0] pmod1, pmod2, pmod3;
wire [11:0] dial1, dial2, dial3, dial4, dial5, dial6;
wire [11:0] slider1, slider2, slider3, slider4, slider5, slider6;


masterControler mc1(, clk_100_buffered, scl1, sda1, pmod1[15:0], scl_alt1, sda_alt1);
masterControler mc2(, clk_100_buffered, scl2, sda2, pmod2[15:0], scl_alt2, sda_alt2);
masterControler mc3(, clk_100_buffered, scl3, sda3, pmod3[15:0], scl_alt3, sda_alt3);

decoder d1(clk_calc, pmod1[15:0], dial1, dial2, dial3, dial4);
decoder d2(clk_calc, pmod2[15:0], dial5, dial6, slider1, slider2);
decoder d3(clk_calc, pmod3[15:0], slider3, slider4, slider5, slider6);

//JACOB DEFINE fa fb fc fd ab ac x y z appropriately based on what pmod does
wire [11:0] fa, fb, fc, fd, ab, ac, x, y, z;

//assign fa = slider1;
//assign fb = slider2;
//assign fc = slider3;
//assign fd = slider4;
//assign ab = slider5;
//assign ac = slider6;
assign fa = 12'h7ff;
assign fb = 12'h123;
assign fc = 12'h7ff;
assign fd = 12'h034;
assign ab = 12'hfff;
assign ac = 12'h7ff;
assign x = dial1;
assign y = dial2;
assign z = dial3;





genvar j;
generate
for(j = 0; j < banks; j = j + 1) begin
  notebank (clk_calc, clk_48, 1'b1, 
    note_on[j], note_off[j], periods[j],
    fa + 32'b0, 
    fb + 32'b0, 
    fc + 32'b0, 
    fd + 32'b0, 
    ab + 32'b0, 
    ac + 32'b0, 
    x + 32'b0, 
    y + 32'b0, 
    z + 32'b0,
    bank_out[j], 
    done[j]);
end
endgenerate

//reg bank_done;
reg [31:0] i;
always @(posedge clk_calc) begin
  note_done = 0;
  bank_done = 0;
  audio = 0;
  for(i = 0; i < banks; i = i + 1) begin
    if(done[i]) begin
      note_done = 1;
      bank_done = i;
      //break;
    end
  end
  
  for(i = 0; i < banks; i = i + 1) begin
    note_on[i] = 0;
    note_off[i] = 0;
  end
  
  if(new_note_event) begin
    if(is_note_on_event) begin
      note_on[note_event_bank] = 1;
      periods[note_event_bank] = note_period;
    end else
      note_off[note_event_bank] = 1;
  end
  
  // sum them signals, please work.
  for(i = 0; i < banks; i = i + 1)
    audio = audio + bank_out[i];
  
  
  
end





	/*
	fifo_32x512 fifo_32
     (
      .clk(bus_clk),
      .srst(!user_w_write_32_open && !user_r_read_32_open),
      .din(user_w_write_32_data),
      .wr_en(user_w_write_32_wren),
      .rd_en(seen),//.rd_en(user_r_read_32_rden),
      .dout(user_r_read_32_data),
      .full(user_w_write_32_full),
      .empty(user_r_read_32_empty)
      );


   assign  user_r_read_32_eof = 0;
   
   // 8-bit loopback
   fifo_8x2048 fifo_8
     (
      .clk(bus_clk),
      .srst(!user_w_write_8_open && !user_r_read_8_open),
      .din(user_w_write_8_data),
      .wr_en(user_w_write_8_wren),
      .rd_en(user_r_read_8_rden),
      .dout(user_r_read_8_data),
      .full(user_w_write_8_full),
      .empty(user_r_read_8_empty)
      );

   assign  user_r_read_8_eof = 0;*/
/*
   i2s_audio audio
     (
      .bus_clk(bus_clk),
      .clk_100(clk_100),
      .quiesce(quiesce),

      .audio_mclk(audio_mclk),
      .audio_dac(audio_dac),
      .audio_adc(audio_adc),
      .audio_bclk(audio_bclk),
      .audio_lrclk(audio_lrclk),
      
      .user_r_audio_rden(user_r_audio_rden),
      .user_r_audio_empty(user_r_audio_empty),
      .user_r_audio_data(user_r_audio_data),
      .user_r_audio_eof(user_r_audio_eof),
      .user_r_audio_open(user_r_audio_open),
      
      .user_w_audio_wren(user_w_audio_wren),
      .user_w_audio_full(user_w_audio_full),
      .user_w_audio_data(user_w_audio_data),
      .user_w_audio_open(user_w_audio_open)
      );
   
   smbus smbus
     (
      .bus_clk(bus_clk),
      .quiesce(quiesce),

      .smb_sclk(smb_sclk),
      .smb_sdata(smb_sdata),
      .smbus_addr(smbus_addr),

      .user_r_smb_rden(user_r_smb_rden),
      .user_r_smb_empty(user_r_smb_empty),
      .user_r_smb_data(user_r_smb_data),
      .user_r_smb_eof(user_r_smb_eof),
      .user_r_smb_open(user_r_smb_open),
      
      .user_w_smb_wren(user_w_smb_wren),
      .user_w_smb_full(user_w_smb_full),
      .user_w_smb_data(user_w_smb_data),
      .user_w_smb_open(user_w_smb_open)
      );
*/
endmodule
