///////////////////////////////////////////////////////////////////////////////
// @file: counter.v
// @brief: Verilog model of a 16-bit counter
// @author: Roberto Baquerizo
///////////////////////////////////////////////////////////////////////////////

module Counter (
   input wire clk,
	input wire ce,			// active high count enable
   input wire resetn,	// active low reset signal
   output wire TC,		// terminal count
	output reg [15:0] Q = 16'h0000	// 16-bit counter
);

assign TC = (Q == 16'hFFFF) ? 1'b1 : 1'b0;

always @ (posedge clk)
begin
   if (resetn == 1'b0)
      begin
         Q <= 16'h0000;
      end
   else if (ce)
      begin
         Q <= Q + 1'd1;
      end
	else
		begin
			// do nothing
		end
end

endmodule