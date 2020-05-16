module MUX41a (a, b, c, d, s1, s0, y);

	/*电路模块端口说明和定义段*/
	input a, b, c, d;  
	input s1, s0;
		
	/*信号类型定义段*/	
	output y;
	reg y;
	
	/*电路模块功能描述段*/
	always@(a or b or c or d or s1 or s0)
	
		/*语句块开始*/
		begin : MUX41
			case({s1,s0})
			
				/*具体描述电路功能的verilog语句描述段*/
				2'b00: y = a;
				2'b01: y = b;
				2'b10: y = c;
				2'b11: y = d;
			 default: y = a;
			 endcase
		end
endmodule