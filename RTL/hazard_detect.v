module hazard_detect #(
	parameter integer DATA_W = 8
)
(
	input wire [DATA_W-1:0] rd_ID_EX, rs1, rs2,
	input wire mem_read_ID_EX,

	output reg stall
);

	always @(*) begin
		if((rd_ID_EX == rs1 || rd_ID_EX == rs2) && mem_read_ID_EX)
			stall = 1;
		else
			stall = 0; 
	end

endmodule
