module asmd_multiplier
(
	input wire	clk,
	input wire	reset,
	input wire 	[3:0]	a,
	input	wire	[3:0]	b,
	input wire	[3:0]	c,
	output reg  [7:0]	d1,
	output reg	[7:0] d2,
	output reg	[7:0]	d3
);


localparam	[1:0]
				s1	= 1'b00,
				s2 = 1'b01,
				s3 = 1'b10;

reg	[1:0]	state_reg;
reg	[1:0]	state_next;
reg	[7:0]	d1_next, d2_next, d3_next;

always @(posedge clk, posedge reset)
begin
	if (reset)
		begin
			state_reg <= s1;
			d1 <= 8'hF;
			d2 <= 8'hF;
			d3 <= 8'hF;
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
	d1_next = 8'h0;
	d2_next = 8'h0;
	d3_next = 8'h0;
	case (state_reg)
		s1:
			begin
				d1_next = a * b;
				state_next = s2;
			end
		s2:
			begin
				d2_next = b * c;
				state_next = s3;
			end
		s3:
			begin
				d3_next = a * c;
				state_next = s1;
			end
		default: state_next = s1;
	endcase
end

endmodule
	
