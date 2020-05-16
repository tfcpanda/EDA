/*任意模块都需要module开头：模块名的取名与实际意义有关*/
module h_adder(a, b, SO, CO);

	/*input 和 output 定义端口上的数据流动方向*/
	input a, b;
	output SO, CO;
	
	
/*
*	原语：预先定义的基本逻辑单元称为原语  eg：and nand or xor not xnor
*  调用格式：基本门原件 <门例化名> (端口名)输出在最左边
*/
	and u1(CO, a, b);
	xor u2(SO, a, b);
endmodule




//input [msb:lsb] 端口名1，端口名2 -；
//output [3:0] c,d;  定义多位数据的端口
	