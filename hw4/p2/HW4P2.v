////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//               Application Assignment 4 Module 1 Course 2                   //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//
// @file HW4P2 .v
// @brief 74LS163 4-Bit Binary Counter
// @version: 1.0
// Date of current revision:  @date 2019-09-30
// Target FPGA: [Intel Altera Cyclone IV]
// Tools used: [Quartus Prime 16.1] for editing && synthesis
//             [Modeltech ModelSIM 10.4a Student Edition] for simulation
//             [Quartus Prime 16.1]  for place && route if applied
//
//  Functional Description:  This file contains the Verilog which describes the
//               FPGA implementation of a 74LS163 4-Bit Binary Counter

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
//
//////////////////////////////////////////////////////////////////////////////
//



 module HW4P2 (P, CP, SR, PE, CEP, CET, Q, TC);
   // Define input && output
   input [3:0] P;    // Parallel Input
   input CP;         // Clock
   input SR;         // Active Low Synchronous Reset
   input PE;         // Count Enable Parallel Input
   input CEP;        // Count Enable Parallel
   input CET;        // Count Enable Trickle
   output reg [3:0]Q = 4'h0;     // Parallel Output
   output wire TC;     // Terminal Count

   wire CE;       // Count Enable condition
   integer i = 0; // loop variable

   assign CE = CEP && CET && PE;
   assign TC = CET && (Q == 4'b1111);

   always @ (posedge CP)
   begin
      if (SR == 1'b0)
      begin
         // Synchronous reset
         Q <= 4'b0000;
      end
      else if (PE == 1'b0)
      begin
         // Set Q value to input P
         for(i=0; i<4; i=i+1)
         begin
            Q[ i ] <= P[ i ];
         end
      end
      else if (CE == 1'b1)
      begin
         Q <= Q + 1'd1;
      end
   end

endmodule