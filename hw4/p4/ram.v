////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//               Application Assignment 4 Module 1 Course 2                   //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//
// @file HW4P2 .v
// @brief 128x32 RAM Verilog Model
// @version: 1.0
// Date of current revision:  @date 2019-09-30
// Target FPGA: [Intel Altera Cyclone IV]
// Tools used: [Quartus Prime 16.1] for editing && synthesis
//             [Modeltech ModelSIM 10.4a Student Edition] for simulation
//             [Quartus Prime 16.1]  for place && route if applied
//
//  Functional Description:  This file contains the Verilog which describes the
//               				   FPGA implementation of a 128x32 RAM

//  Hierarchy:  There is only one level in this simple design.
//
//
//                [www.customer, phone number]
//  Designed by:  @author Roberto Baquerizo
//                CU Boulder
//                roba8460@colorado.edu
//
//
//////////////////////////////////////////////////////////////////////////////


module ram(clk, we, w_addr, r_addr, d, q);
// parameters for address and data widths
parameter AWIDTH = 7;   // Number of address bits  (2^7 = 128)
parameter DWIDTH = 32;  // Number of bits in word

input wire clk;                     // Clock
input wire we;                      // Write-enable
input wire [(AWIDTH-1):0] w_addr;   // Write address
input wire [(AWIDTH-1):0] r_addr;   // Read address
input wire [(DWIDTH-1):0] d;        // Data to write
output wire [DWIDTH-1:0]  q;        // Data output

reg [(DWIDTH-1):0] mem[2**AWIDTH-1:0]; // memory variable 128
reg [(DWIDTH-1):0] data;

initial
begin
   $readmemh("initialRam.txt", mem);
end

// write operation
always @ (posedge clk)
begin
   if (we)
   begin
      mem[ w_addr ] <= d;
   end
   data <= mem[ r_addr ];
end

// read operation - continous assignment
assign q = data;

endmodule