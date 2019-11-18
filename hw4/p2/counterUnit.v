module counterUnit 
(
	input wire [3:0]	P,
	input wire 			CP,         // Clock
   input wire 			SR1,        // Active Low Synchronous Reset for counter 1
	input wire			SR2,			// Active Low Synchronous Reset for counter 2
   input wire 			PE,         // Count Enable Parallel Input
   input wire 			CEP,        // Count Enable Parallel
   input wire 			CET,        // Count Enable Trickle
   output wire [3:0]	Q1 = 4'h0,  // Output of first counter
	output wire [3:0] Q2 = 4'h0,	// Output of second counter
   output wire 		TC1,			// Terminal count for counter 1
	output wire			TC2			// Terminal Count for counter 2
	);
	
	
	HW4P2 counter1 (.P(P), 
						 .CP(CP), 
						 .SR(SR1), 
						 .PE(PE), 
						 .CEP(CEP),
						 .CET(CET),
						 .Q(Q1),
						 .TC(TC1));
	
	HW4P2 counter2 (.P(P), 
						 .CP(CP), 
						 .SR(SR2), 
						 .PE(PE), 
						 .CEP(CEP),
						 .CET(CET),
						 .Q(Q2),
						 .TC(TC2));
						 
endmodule