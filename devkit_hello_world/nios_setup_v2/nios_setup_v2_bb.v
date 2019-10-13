
module nios_setup_v2 (
	clk_clk,
	led_external_connection_export,
	reset_reset_n,
	switch_external_connection_export);	

	input		clk_clk;
	output	[1:0]	led_external_connection_export;
	input		reset_reset_n;
	input	[1:0]	switch_external_connection_export;
endmodule
