`timescale 1ms / 1ns

module pwm(out,pos,clk,contusec,contmsec);
	
	input[1:0] pos;
	input clk;
	output reg out;

always @(posedge clk) begin

	if(contmsec == 2) out = 1;
	if(contmsec != 2) out = 0;
	
	case(pos)
		2'b00:begin			//Duty de 1ms con periodo de 20ms
			if(contmsec >= 0 && contmsec <= 1000) out = 1;
			if(contmsec > 1000 && contmsec <= 20000)out = 0;
			end
		2'b01:begin			//Duty de 1.333ms con periodo de 20ms
			if(contmsec >= 0 && contmsec <= 1333) out = 1;
			if(contmsec > 1333 && contmsec <= 20000)out = 0;
			end
		2'b10:begin			//Duty de 1.666ms con periodo de 20ms
			if(contmsec >= 0 && contmsec <= 1666) out = 1;
			if(contmsec > 1666 && contmsec <= 20000)out = 0;
			end
		2'b11:begin			//Duty de 2ms con periodo de 20ms
			if(contmsec >= 0 && contmsec <= 2000) out = 1;
			if(contmsec > 2000 && contmsec <= 20000)out = 0;
			end
		default
			out = 0;
	endcase
end

//Contador de ms

output reg [5:0] contusec = 0;
output reg [14:0] contmsec = 0;

always @(posedge clk) begin
	
	if(contusec == 50) begin //Se cuantan 50 ciclos de clk que equivale a 1us
		contusec = 0;
		
		if(contmsec == 20000) begin // se cuaenta 20ms
			contmsec = 0;
		end else begin
			contmsec = contmsec + 1;
		end
		
	end else begin
		contusec = contusec + 1;
	end
end

endmodule
