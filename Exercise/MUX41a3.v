module MUX41a3 (A, B, C, D, S1, S0, Y);
	input A, B, C, D, S1, S0;
	output Y;
	reg[1:0] SEL;
	reg Y;
	always @(A, B, C, D, SEL)
		begin
			SEL = {S1,S0};
		if(SEL == 0)
			Y = A;
		else if(SEL == 1)
			Y = B;
		else if(SEL == 2)
			Y = C;
		else
			Y = D;
		end
endmodule