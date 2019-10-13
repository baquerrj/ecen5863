/////////////////////////////////////////////////////////////////////
// @file HW5Q2.v
// @brief:	Verilog implementation of clocked 32-bit ALU
//				Inputs are 32-bit A and B. Opcode is 5-bits wide.
//				One additional clock input
//				Output is 32-bits as well.
// @author: Roberto Baquerizo
/////////////////////////////////////////////////////////////////////
	

module HW5Q2( 
	input  wire [31:0] A,	// A input to ALU
	input  wire [31:0] B,	// B input to ALU
	input	 wire [4:0]	 Op,	// Input ALU Opcodes
	input	 wire clk,			// Clock
	output reg	[31:0] Y		// Output
	);

wire [2:0]	upper;
wire [2:0]	lower;
reg  [31:0] ALU_OUT;

assign upper = Op[4:2];	// arithmetic and logical operations opcode
assign lower = Op[1:0];	// operation on output (left/right shift, pass-through, or pass 0's)

always @ (posedge clk) begin
	case (upper)
		3'b000:	// pass A
			ALU_OUT <= A;
		3'b001:	// A + B
			ALU_OUT <= A + B;
		3'b010:	// A - B
			ALU_OUT <= A - B;
		3'b011:	// Logical A and B
			ALU_OUT <= A & B;
		3'b100:	// Logical A or B
			ALU_OUT <= A | B;
		3'b101:	// Increment A
			ALU_OUT <= A + 1;
		3'b110:	// Decrement A
			ALU_OUT <= A - 1;
		3'b111:	// pass B
			ALU_OUT <= B;
		default:
			ALU_OUT <= 32'hZ;
	endcase
	case (lower)
		2'b00:	// pass ALU_OUT
			Y <= ALU_OUT;
		2'b01:	// shift left
			Y <= ALU_OUT << 1;
		2'b10:	// shift right
			Y <= ALU_OUT >> 1;
		2'b11:	// pass 0's
			Y <= 32'h0;
		default:
			Y = 32'hZ;
	endcase
end

	
endmodule	