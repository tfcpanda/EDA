/*h_adder是模块名字,是设计者写的*/
module Exercise (A, B, SO, CO);

/*旁边括号里面的是 端口表 ，是所有的端口，没有的端口都需要声明*/
		input A, B;
		output SO, CO;
		
		/*assign引导的赋值语句：描述模块内部的逻辑功能和电路结构：并行赋值语句，同时进行，与先后顺序无关*/		
		assign SO = A ^ B;
		
		/*assign 目标变量名 = 驱动表达式  驱动表达式变化的时候语句重新执行*/
		assign CO = A & B;
		
		/*module要有end结束符号*/
endmodule


//所有关键字必须小写