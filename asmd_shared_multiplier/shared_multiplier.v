module shared_multiplier
(
	input wire	clk,
	input wire	reset,
	input wire 	[1:0]	a,
	input	wire	[1:0]	b,
	input wire	[1:0]	c,
	output reg  [3:0]	d1,
	output reg	[3:0] d2,
	output reg	[3:0]	d3
);


localparam	[1:0]
				s1	= 1'b00,
				s2 = 1'b01,
				s3 = 1'b10;

reg	[1:0]	state_reg;
reg	[1:0]	state_next;
reg	[3:0]	d1_next, d2_next, d3_next;
reg	[1:0]	in1, in2;
wire	[3:0]	m_out;

always @(posedge clk, posedge reset)
begin
	if (reset)
		begin
			state_reg <= s1;
			d1 <= 4'hF;
			d2 <= 4'hF;
			d3 <= 4'hF;
		end
	else
		begin
			state_reg <= state_next;
			d1 <= d1_next;
			d2 <= d2_next;
			d3 <= d3_next;
		end
end

always @(*)
begin
	state_next = state_reg;
	d1_next = 4'h0;
	d2_next = 4'h0;
	d3_next = 4'h0;
	case (state_reg)
		s1:
			begin
				in1 = a;
				in2 = b;
				d1_next = m_out;
				state_next = s2;
			end
		s2:
			begin
				in1 = b;
				in2 = c;
				d2_next = m_out;
				state_next = s3;
			end
		s3:
			begin
				in1 = a;
				in2 = c;
				d3_next = m_out;
				state_next = s1;
			end
		default: state_next = s1;
	endcase
end

// explicit data path for multiplier
assign m_out = in1 * in2;

endmodule
	
