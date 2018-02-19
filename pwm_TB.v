`timescale 1ns / 1ps

module pwm_TB;
	reg[1:0] pos;
	reg clk;
	wire out;
	
	pwm uut(.out(out), .pos(pos), .clk(clk));
	
	//Clk modulo
	initial         clk <= 0;
	always #0.5 clk <= ~clk;

	initial begin
		pos = 2'b00; #30;
		pos = 2'b01; #30;
		pos = 2'b10; #30;
		pos = 2'b11; #30;
	end

	initial begin: TEST_CASE
		$dumpfile("pwm_TB.vcd");
		$dumpvars(-1,uut);
		#(200) $finish;
	end

endmodule
