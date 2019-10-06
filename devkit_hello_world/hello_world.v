// ============================================================================
//   Ver  :| Author					:| Mod. Date :| Changes Made:
//   V1.1 :| Roberto Baquerizo	:| 07/30/2019:| Added Verilog file
// ============================================================================


`define ENABLE_ADC_CLOCK
`define ENABLE_CLOCK1
`define ENABLE_CLOCK2
`define ENABLE_SDRAM
`define ENABLE_HEX0
`define ENABLE_HEX1
`define ENABLE_HEX2
`define ENABLE_HEX3
`define ENABLE_HEX4
`define ENABLE_HEX5
`define ENABLE_KEY
`define ENABLE_LED
`define ENABLE_SW
`define ENABLE_VGA
`define ENABLE_ACCELEROMETER
`define ENABLE_ARDUINO
`define ENABLE_GPIO

`timescale 1 ps/ 1ps
module hello_world(

	// clock
	input				MAX10_CLK1_50,

	// switches and LED
	input		[1:0] SW,
	output	[1:0] LEDR);

endmodule
