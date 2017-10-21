
module BUF(A, Y);
	input A;
	output Y;
	assign Y = A;
endmodule

module NOT(A, Y);
	input A;
	output Y;
	assign Y = ~A;
endmodule

module NAND(A, B, Y);
	input A, B;
	output Y;
	assign Y = ~(A & B);
endmodule

module NOR(A, B, Y);
	input A, B;
	output Y;
	assign Y = ~(A | B);
endmodule

module DFF(C, D, Q);
	parameter
		PwrC = 0;
	input C, D;
	output reg Q;
	always @(posedge C) begin
		Q <= D;
	end
	always @(posedge Q) begin
		tb_tx.m1.PwrCntr[PwrC] = tb_tx.m1.PwrCntr[PwrC] + 1;
	end
endmodule

module DFFSR(C, D, Q, S, R);
	input C, D, S, R;
	output reg Q;
	always @(posedge C, posedge S, posedge R)
		if (S)
			Q <= 1'b1;
		else if (R)
			Q <= 1'b0;
		else
			Q <= D;
endmodule

