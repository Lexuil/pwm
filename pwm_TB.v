`timescale 1ns / 1ns

module pwm_TB;
	reg[7:0] servo;
	reg[4:0] period;
	reg[4:0] duty;
	reg clk;
	wire[7:0] out;
	
	pwm uut(.out(out), .clk(clk), .servo(servo), .period(period), .duty(duty));
	
	//Clk modulo
	initial         clk <= 1;
	always #1 clk <= ~clk;

	initial begin
		servo = 8'b00000001;
		period = 20;
		duty = 2; #4800;
		
		servo = 8'b00000010;
		period = 20;
		duty = 5; #4800;
		
		
		servo = 8'b00000100;
		period = 20;
		duty = 1; #4800;
		
		
		servo = 8'b00001000;
		period = 20;
		duty = 7; #4800;
		
		
		servo = 8'b00010000;
		period = 20;
		duty = 3; #4800;
		
		
		servo = 8'b00100000;
		period = 20;
		duty = 8; #4800;
		
		servo = 8'b01000000;
		period = 20;
		duty = 6; #4800;
		
		
		servo = 8'b10000000;
		period = 20;
		duty = 2; #4800;
		
		
		servo = 8'b00000100;
		period = 20;
		duty = 8; #4800;
		
		
		servo = 8'b0100000;
		period = 20;
		duty = 1; #4800;
		
		
	end

	initial begin: TEST_CASE
		$dumpfile("pwm_TB.vcd");
		$dumpvars(-1,uut);
		#(100000) $finish;
	end

endmodule
