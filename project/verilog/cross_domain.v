/*module Flag_CrossDomain(
    input clkA,
    input FlagIn_clkA, 
    input clkB,
    input ready_to_get_more_data,
    output FlagOut_clkB,
    output user_w_mydevice_full
);

// this changes level when the FlagIn_clkA is seen in clkA
reg FlagToggle_clkA;
always @(posedge clkA) FlagToggle_clkA <= FlagToggle_clkA ^ FlagIn_clkA;

// which can then be sync-ed to clkB
reg [2:0] SyncA_clkB;
always @(posedge clkB) SyncA_clkB <= {SyncA_clkB[1:0], FlagToggle_clkA};

// and recreate the flag in clkB
assign FlagOut_clkB = (SyncA_clkB[2] ^ SyncA_clkB[1]);

always @(posedge clkA)
  if (ready_to_get_more_data)
    user_w_mydevice_full <= 0; 
  else
    user_w_mydevice_full <= 1; 


endmodule*/


module Signal_CrossDomain(
    input clkA,   // we actually don't need clkA in that example, but it is here for completeness as we'll need it in further examples
    input SignalIn_clkA,
    input clkB,
    output SignalOut_clkB
);

// We use a two-stages shift-register to synchronize SignalIn_clkA to the clkB clock domain
reg [1:0] SyncA_clkB;
always @(posedge clkB) SyncA_clkB[0] <= SignalIn_clkA;   // notice that we use clkB
always @(posedge clkB) SyncA_clkB[1] <= SyncA_clkB[0];   // notice that we use clkB

assign SignalOut_clkB = SyncA_clkB[1];  // new signal synchronized to (=ready to be used in) clkB domain
endmodule


module FlagAck_CrossDomain(
    input clkA,
    input FlagIn_clkA,
    output Busy_clkA,
    input clkB,
    output FlagOut_clkB
);

reg FlagToggle_clkA;
always @(posedge clkA) FlagToggle_clkA <= FlagToggle_clkA ^ (FlagIn_clkA & ~Busy_clkA);

reg [2:0] SyncA_clkB;
always @(posedge clkB) SyncA_clkB <= {SyncA_clkB[1:0], FlagToggle_clkA};

reg [1:0] SyncB_clkA;
always @(posedge clkA) SyncB_clkA <= {SyncB_clkA[0], SyncA_clkB[2]};

assign FlagOut_clkB = (SyncA_clkB[2] ^ SyncA_clkB[1]);
assign Busy_clkA = FlagToggle_clkA ^ SyncB_clkA[1];
endmodule


