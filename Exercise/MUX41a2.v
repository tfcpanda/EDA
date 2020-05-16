module MUX41a2 (A, B, C, D, S1, S0, Y);
	input A, B, C, D, S1, S0;
	output Y;
	wire AT = S0 ? D : C;
	wire BT = S0 ? B : A;
	wire Y = (S1 ? AT : BT);
endmodule

/*
* 使用wire语法来设置四选一多路选择器
*
*
*
*/