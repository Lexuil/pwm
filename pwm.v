`timescale 1ns / 1ps

module pwm(out,pos,clk);
	
	input[1:0] pos;
	input clk;
	output reg out;

always @(posedge clk) begin
	
	case(pos)
		2'b00:begin			//Duty de 1ns con periodo de 20ns
			out = 1;
			#1;
			out = 0;
			#19;
			end
		2'b01:begin			//Duty de 1.333ns con periodo de 20ns
			out = 1;
			#1.333;
			out = 0;
			#18.667;
			end
		2'b10:begin			//Duty de 1.666ns con periodo de 20ns
			out = 1;
			#1.666;
			out = 0;
			#18.334;
			end
		2'b11:begin			//Duty de 2ns con periodo de 20ns
			out = 1;
			#2;
			out = 0;
			#17;
			end
		default
			out = 0;
	endcase
end

endmodule
