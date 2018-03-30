`timescale 1ns / 1ns

module pwm_TB;
	reg clk;
	//reg rst;
	reg rd;
	reg wr;
	reg [31:0] din;
	reg [6:0] adrs;
	wire [31:0] dout;
	wire [7:0] pwmo;
	
	pwm uut( .clk(clk), .rd(rd), .wr(wr), .din(din), .adrs(adrs), .dout(dout), .pwmo(pwmo));
	
parameter tck              = 20;       // clock period in ns
parameter uart_baud_rate   = 1152000;  // uart baud rate for simulation 

parameter clk_freq = 1000000000 / tck; // Frequenzy in HZ
	
/* Clocking device */
initial         clk <= 0;
always #(tck/2) clk <= ~clk;

	initial begin
		
		wr = 1;
		din = 2;
		adrs = 7'h08;
		#20;
		din = 20;
		adrs = 7'h04;
		#20;
		din = 1;
		adrs = 7'h00;
		#20;
		
		din = 4;
		adrs = 7'h14;
		#20;
		din = 20;
		adrs = 7'h10;
		#20;
		din = 1;
		adrs = 7'h0c;
		#20;
		
		din = 2;
		adrs = 7'h20;
		#20;
		din = 20;
		adrs = 7'h1c;
		#20;
		din = 1;
		adrs = 7'h18;
		#20;
		
		din = 2;
		adrs = 7'h44;
		#20;
		din = 20;
		adrs = 7'h40;
		#20;
		din = 1;
		adrs = 7'h3c;
		#20;
		
		din = 2;
		adrs = 7'h5c;
		#20;
		din = 20;
		adrs = 7'h58;
		#20;
		din = 1;
		adrs = 7'h54;
		#20;
		
		wr = 0;
		rd = 1;
		adrs = 7'h04;
		#20;
		adrs = 7'h18;
		#20;
		adrs = 7'h5c;
		#20;
		adrs = 7'h00;
		#20;
		adrs = 7'h0;
		
		
		
	end

	initial begin: TEST_CASE
		$dumpfile("pwm_TB.vcd");
		$dumpvars(-1,uut);
		#(tck*20000) $finish;
	end

endmodule
