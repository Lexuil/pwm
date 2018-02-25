module counter(clk,period,duty,state,en); //period y duty en ms
	
	input clk;
	input en;
	input [4:0] period;
	input [4:0] duty;
	output reg state;
	

reg [5:0] contusec = 0;
reg [14:0] contmsec = 0;

reg [4:0] periodf = 0;
reg [4:0] dutyf = 0;

always @(posedge clk) begin
	
	if(contusec == 50) begin //Se cuantan 50 ciclos de clk que equivale a 1us (para clk de 50MHz)
		contusec = 0;
		
		if(contmsec >= periodf-1) begin // se cuaenta period ms
			contmsec = 0;
		end else begin
			contmsec = contmsec + 1;
		end
		
	end else begin
		contusec = contusec + 1;
	end
end

always @(posedge clk) begin
	
	if(contmsec <= dutyf-1)begin
		state = 1;
	end else begin
		state = 0;
	end

end

always @(posedge clk) begin

	if(en == 1)begin
		dutyf = duty;
		periodf = period;
	end
	
end


endmodule
