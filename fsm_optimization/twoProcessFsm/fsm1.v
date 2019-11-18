module fsm1 (clk, reset, x1, out);
	input clk, reset, x1;
	output out;
	reg out;
	reg [1:0] state;
	parameter state1 = 2'b00;
	parameter state2 = 2'b01;
	parameter state3 = 2'b10;
	parameter state4 = 2'b11;
	always @(posedge clk or posedge reset)
	begin
		if (reset)
			begin
				state = state1;
			end
	else
		begin
			case (state)
				state1:
					begin
						if (x1==1'b1) 
							begin
								state = state4;
							end
						else 
							begin 
								state = state3;
							end
					end
				state2: 
					state = state3;
				state3: 
					state = state4;
				state4: 
					state = state1;
			endcase
		end
	end
	
	always @(state)
	begin
		case (state)
			state1: out = 1'b1;
			state2: out = 1'b1;
			state3: out = 1'b0;
			state4: out = 1'b1;
		endcase
	end
	
endmodule