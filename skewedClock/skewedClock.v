// Copyright (C) 2016  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
// CREATED		"Sun Nov 03 14:30:10 2019"

module skewedClock(
	CLK,
	PRE,
	sQ0,
	sQ1,
	sQ2,
	sQ3
);


input wire	CLK;
input wire	PRE;
output wire	sQ0;
output wire	sQ1;
output wire	sQ2;
output wire	sQ3;

wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_1;
reg	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_3;
reg	DFF_inst3;
reg	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_5;
reg	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_7;

assign	sQ0 = SYNTHESIZED_WIRE_9;
assign	sQ1 = SYNTHESIZED_WIRE_10;
assign	sQ2 = SYNTHESIZED_WIRE_11;
assign	sQ3 = DFF_inst3;
assign	SYNTHESIZED_WIRE_8 = 1;




always@(posedge CLK or negedge SYNTHESIZED_WIRE_8 or negedge PRE)
begin
if (!SYNTHESIZED_WIRE_8)
	begin
	SYNTHESIZED_WIRE_9 <= 0;
	end
else
if (!PRE)
	begin
	SYNTHESIZED_WIRE_9 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge SYNTHESIZED_WIRE_9 or negedge SYNTHESIZED_WIRE_8 or negedge PRE)
begin
if (!SYNTHESIZED_WIRE_8)
	begin
	SYNTHESIZED_WIRE_10 <= 0;
	end
else
if (!PRE)
	begin
	SYNTHESIZED_WIRE_10 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_3;
	end
end

assign	SYNTHESIZED_WIRE_7 =  ~DFF_inst3;


always@(posedge SYNTHESIZED_WIRE_10 or negedge SYNTHESIZED_WIRE_8 or negedge PRE)
begin
if (!SYNTHESIZED_WIRE_8)
	begin
	SYNTHESIZED_WIRE_11 <= 0;
	end
else
if (!PRE)
	begin
	SYNTHESIZED_WIRE_11 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_5;
	end
end


always@(posedge SYNTHESIZED_WIRE_11 or negedge SYNTHESIZED_WIRE_8 or negedge PRE)
begin
if (!SYNTHESIZED_WIRE_8)
	begin
	DFF_inst3 <= 0;
	end
else
if (!PRE)
	begin
	DFF_inst3 <= 1;
	end
else
	begin
	DFF_inst3 <= SYNTHESIZED_WIRE_7;
	end
end


assign	SYNTHESIZED_WIRE_1 =  ~SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_3 =  ~SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_5 =  ~SYNTHESIZED_WIRE_11;


endmodule
