module d_latch (
	input  wire d,
	input	 wire en,
	output reg	q
	);
	
always @(en)
begin
	if (en)
		begin
			q = d;
		end
end

endmodule

