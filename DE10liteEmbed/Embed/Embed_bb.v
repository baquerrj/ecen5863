
module Embed (
	clk_clk,
	clk_0_clk,
	reset_reset_n,
	reset_0_reset_n,
	led_pio_external_export,
	slide_pio_external_export);	

	input		clk_clk;
	input		clk_0_clk;
	input		reset_reset_n;
	input		reset_0_reset_n;
	output	[9:0]	led_pio_external_export;
	input	[9:0]	slide_pio_external_export;
endmodule
