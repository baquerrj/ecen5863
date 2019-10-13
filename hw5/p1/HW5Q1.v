module HW5Q1(
   input wire        clk,        // clock
   input wire        RdPtrClr,   // Read Pointer Clear, to reset the read pointer
   input wire        WrPtrClr,   // Write Pointer Clear, to reset the write pointer
   input wire        rdinc,      // read pointer increment signal
   input wire        wrinc,      // write pointer increment signal
   input wire  [8:0] DataIn,     // data input bus 9-bits wide
   input wire        rden,       // read (output) enable
   input wire        wden,       // write (input) enable
   output reg  [8:0] DataOut     // data output bus 9-bits wide
);

reg [2:0] readPtr = 0;
reg [2:0] writePtr = 0;

reg [8:0] FIFO [0:7];

always @ (posedge clk) begin
      if( RdPtrClr == 1'b1 || readPtr == 8 ) begin
         readPtr <= 0;
      end
      if ( WrPtrClr == 1'b1 || writePtr == 8 ) begin
         writePtr <= 0;
      end
      if ( rden == 1'b1 ) begin
         DataOut <= FIFO[ readPtr ];
         if ( rdinc == 1'b1 ) begin
            readPtr <= readPtr + 1;
         end
		end
      else begin
         DataOut <= 9'bZZZZZZZZZ;
      end
      if ( wden == 1'b1 ) begin
         FIFO[ writePtr ] <= DataIn;
         if ( wrinc == 1'b1 ) begin
            writePtr <= writePtr + 1;
         end
      end
end

endmodule