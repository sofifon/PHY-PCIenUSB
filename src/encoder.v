`timescale 1 ns/ 1 ps
module encoder(in_8b, dataK, out_10b);

input wire [7:0] in_8b;
input wire dataK;
wire S, L03, L30, L12, L21;
wire A, B, C, D, E, F, G, H;
output [9:0] out_10b;


		assign A = in_8b[0];
		assign B = in_8b[1];
		assign C = in_8b[2];
		assign D = in_8b[3];
		assign E = in_8b[4];
		assign F = in_8b[5];
		assign G = in_8b[6];
		assign H = in_8b[7];

		assign S =0;
		
		assign L03 = (~A)&(~B)&(~C);
		assign L30 = (A)&(B)&(C);
		assign L12 = ((A)&(~B)&(~C)) || ((~A)&(B)&(~C)) || ((~A)&(~B)&(C));
		assign L21 = ((~A)&(B)&(C)) || ((A)&(~B)&(C)) || ((A)&(B)&(~C));

		
		assign out_10b[9] = A; //a
		assign out_10b[8] = (B&(~(L30&D))) || (L03&(~D)); //b
		assign out_10b[7] = C || (L03&((~D)+E)) ; //c
		assign out_10b[6] = D&(~(L30&D)); //d
		assign out_10b[5] = E&(~(L03&D)) || (L12&(~D)&(~E)) || L03&D&(~E) ; //e
		assign out_10b[4] = (L21&(~D)&(~E)) || (L12&((D&(~E)||(~D)&E)+dataK)) || (L30&(~D)&E) || (L30&D&E); //i
		assign out_10b[3] = F&(~(F&G&H&(S || dataK))); //f
		assign out_10b[2] = G || ((~F)&(~H)); //g
		assign out_10b[1] = H; //h
		assign out_10b[0] = (F&(~G)) || ((G&(~F))&(~H)) || (F&G&H&(S || dataK)); //j




endmodule