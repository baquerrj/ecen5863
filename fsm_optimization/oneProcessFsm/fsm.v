module fsm (clk,
            reset,
            x1,
            stateout);
    input clk, reset, x1;
    output stateout;
    reg stateout;
    reg [1:0] state;
    parameter state1 = 2'b00;
    parameter state2 = 2'b01;
    parameter state3 = 2'b10;
    parameter state4 = 2'b11;
	 
always@(posedge clk or posedge reset)
begin
	if (reset)
		begin
			state = state1; stateout = 1'b1;
		end
	else
		begin
			case (state)
				state1: 
					begin
						if (x1 == 1'b1)
							begin
								state = state2;
							end
						else
							begin
								state = state3;
								stateout   = 1'b1;
							end
					end
				state2: 
					begin
						state = state4; stateout = 1'b1;
					end
            state3: 
					begin
						state = state4; stateout = 1'b0;
					end
            state4: 
					begin
						state = state1; stateout = 1'b1;
					end
			endcase;
		end
end
endmodule
