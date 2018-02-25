`timescale 1ms / 1ns

module pwm(out,clk,servo,period,duty);
	
	input[4:0] period;
	input[4:0] duty;
	input[7:0] servo;
	input clk;
	output [7:0] out;
	
	
counter pwm0(.clk(clk), .period(period), .duty(duty), .state(out[0]), .en(servo[0]));
counter pwm1(.clk(clk), .period(period), .duty(duty), .state(out[1]), .en(servo[1]));
counter pwm2(.clk(clk), .period(period), .duty(duty), .state(out[2]), .en(servo[2]));
counter pwm3(.clk(clk), .period(period), .duty(duty), .state(out[3]), .en(servo[3]));
counter pwm4(.clk(clk), .period(period), .duty(duty), .state(out[4]), .en(servo[4]));
counter pwm5(.clk(clk), .period(period), .duty(duty), .state(out[5]), .en(servo[5]));
counter pwm6(.clk(clk), .period(period), .duty(duty), .state(out[6]), .en(servo[6]));
counter pwm7(.clk(clk), .period(period), .duty(duty), .state(out[7]), .en(servo[7]));


endmodule
