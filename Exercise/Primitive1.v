primitive
	MUX41_UDP(Y,D3,D2,D1,D0,S1,S0);
		input D3,D2,D1,D0,S1,S0;
		output Y;
			table  //D3 D2 D1 D0 S1 S0 : Y
						?	?	?  1  0  0  : 1;
						?	?	?  0  0  0  : 0;
						?	?	1  ?  0  1  : 1;
						?	?	0  ?  0  1  : 0;
						?	1	?  ?  1  0  : 1;
						?	0	?  ?  1  0  : 0;
						1	?	?  ?  1  1  : 1;
						0	?	?  ?  1  1  : 0;
		endtable
endprimitive


module MUX41UDP (D, S, DOUT);
	input [3:0] D;
	input [1:0] S;
	output DOUT；
	MUX41_UDP (DOUT,D[3],D[2],D[1],D[0],S[1],S[0]);
endmodule