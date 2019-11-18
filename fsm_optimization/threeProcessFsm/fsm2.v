module fsm2 (clk, reset, x1, stateout);
	input clk, reset, x1;
	output stateout;
	reg stateout;
	reg [1:0] state;
	reg [1:0] next_state;
	parameter state1 = 2'b00;
	parameter state2 = 2'b01;
	parameter state3 = 2'b10;
	parameter state4 = 2'b11;
	always @(posedge clk or posedge reset)
	begin
		if (reset) state = state1;
		else state = next_state;
	end

	always @(state or x1)
	begin
		case (state)
			state1: if (x1==1'b1) next_state = state2;
					  else next_state = state3;
			state2: next_state = state4;
			state3: next_state = state4;
			state4: next_state = state1;
		endcase
	end

	always @(state)
	begin
		case (state)
			state1: stateout = 1'b1;
			state2: stateout = 1'b1;
			state3: stateout = 1'b0;
			state4: stateout = 1'b1;
		endcase
	end
endmodule