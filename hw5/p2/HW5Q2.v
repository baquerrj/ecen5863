/////////////////////////////////////////////////////////////////////
// @file HW5Q2.v
// @brief:	Verilog implementation of unclocked 32-bit ALU
//				Inputs are 32-bit A and B. Opcode is 5-bits wide.
//				Output is 32-bits as well.
// @author: Roberto Baquerizo
/////////////////////////////////////////////////////////////////////
	

module HW5Q2( 
	input  wire [31:0]	A,		// A input to ALU
	input  wire [31:0]	B,		// B input to ALU
	input	 wire [4:0]		Op,	// Input ALU Opcodes
	output wire	[31:0]	Y		// Output
	);

wire [2:0]	upper;
wire [2:0]	lower;
reg  [31:0] ALU_OUT;

assign upper = Op[4:2];	// arithmetic and logical operations opcode
assign lower = Op[1:0];	// operation on output (left/right shift, pass-through, or pass 0's)

assign Y	= setOutput(ALU_OUT);

function automatic [31:0] setOutput;
	input [31:0] a;
	begin
		case (lower)
			2'b00:	// pass ALU_OUT
				setOutput = a;
			2'b01:	// shift left
				setOutput = a << 1;
			2'b10:	// shift right
				setOutput = a >> 1;
			2'b11:	// pass 0's
				setOutput = 32'h0;
			default:
				setOutput = 32'hZ;
		endcase
	end
endfunction

always @ (*) begin
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
end

	
endmodule	