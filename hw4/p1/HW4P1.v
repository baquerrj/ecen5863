////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//               Application Assignment 4 Module 1 Course 2                   //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//
// @file HW4P1.v
// @brief 2-bit Comparator
// @version: 1.0 
// Date of current revision:  @date 2019-09-30 
// Target FPGA: [Intel Altera MAX10] 
// Tools used: [Quartus Prime 16.1] for editing and synthesis 
//             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
//             [Quartus Prime 16.1]  for place and route if applied
//             
//  Functional Description:  This file contains the Verilog which describes the 
//               FPGA implementation of a 2-bit comparator
 
//  Hierarchy:  There is only one level in this simple design.
//  
//  Designed for: [Customer] 
//                [Address]
//                [City, ST ZIP]
//                [www.customer, phone number]
//  Designed by:  @author Roberto Baquerizo
//                CU Boulder
//                roba8460@colorado.edu 
// 
//      Copyright (c) 2019 by Tim Scherr
//
// Redistribution, modification or use of this software in source or binary
// forms is permitted as long as the files maintain this copyright. Users are
// permitted to modify this and use it to learn about the field of HDl code.
// Tim Scherr and the University of Colorado are not liable for any misuse
// of this material.
//////////////////////////////////////////////////////////////////////////////
// 

module HW4P1( 
	input wire [1:0] A,
	input wire [1:0] B,
	output reg Equals
	);
	
	always @* begin
		if (A === B) begin
			Equals = 1;
		end
		else begin
			Equals = 0;
		end
	end
endmodule




    