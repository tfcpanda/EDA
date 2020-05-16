primitive XOR2(DOUT,X1,X2);
	input X1, X2;
	output DOUT;
		table // X1 X2 : DOUT
			0	0	: 0;
			0	1	: 1;
			1	0	: 1;
			1	1	: 0;
			endtable
endprimitive


module H_ADDER(A, B, SO, CO);
	input A, B;
	output SO, CO;
	XOR2 U1(SO, A, B);  //调用元件XOR2
	and U2(CO, A, B);
endmodule
