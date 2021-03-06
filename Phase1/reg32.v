module reg32(clk, clear, writeEnable, INPUT, OUTPUT);
	input clk, clear, writeEnable;
	input [31:0] INPUT;
	output [31:0] OUTPUT;
	reg[31:0] OUTPUT;
	
	always @ (posedge clk) begin
		if (clr) begin
			OUTPUT = 0;
		end
		if (writeEnable) begin
			OUTPUT = INPUT;
		end
	end
end module