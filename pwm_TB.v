`timescale 1ns / 1ns

module pwm_TB;
	reg[1:0] pos;
	reg clk;
	wire out;
	
	pwm uut(.out(out), .pos(pos), .clk(clk));
	
	//Clk modulo
	initial         clk <= 0;
	always #10 clk <= ~clk;

	initial begin
		pos = 2'b00; #4800;
		pos = 2'b01; #4800;
		pos = 2'b10; #4800;
		pos = 2'b11; #4800;
	end

	initial begin: TEST_CASE
		$dumpfile("pwm_TB.vcd");
		$dumpvars(-1,uut);
		#(2000000) $finish;
	end

endmodule
