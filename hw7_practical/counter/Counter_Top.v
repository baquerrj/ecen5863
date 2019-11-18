///////////////////////////////////////////////////////////////////////////////
// @file: Counter_Top.v
// @brief: Top level design instantiating a lot of 16-bit counters
// @author: Roberto Baquerizo
///////////////////////////////////////////////////////////////////////////////

module Counter_Top
   #(parameter N = 2)
(
   input  wire clk,
   input	 wire	resetn
);


genvar i;
integer j;

wire [15:0] gnd = 16'h0000;

// generate for-loop to instantiate 16-bit counters N times
generate for (i = 0; i < N; i = i + 1) begin : GEN_LOOP
			Counter counter (
				.clk(clk),
				.ce(1'b1),
				.resetn(resetn),
				.TC(gnd[0]),
				.Q(gnd)
				);
end
endgenerate

for (j = 0; j < N; j = j +1) begin
	if (j > 0)
		begin
			assign GEN_LOOP[j].counter.ce = GEN_LOOP[j-1].counter.TC;
		end
end


endmodule