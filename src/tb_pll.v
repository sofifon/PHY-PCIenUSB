`include "probador_PLL.v"
`include "PLL.v"

module tb_PLL();


wire CLK, reset, CLK_10, CLK_5;
wire [3:0] cont;


PLL pll(CLK, reset , CLK_5, CLK_10);
prob_PLL p(CLK, reset);

endmodule 