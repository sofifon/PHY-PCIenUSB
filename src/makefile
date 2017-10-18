#Makefile Proyecto1
#Laura Rincon B55863
#Emanuel Fernandez
#Sofia Fonseca B42634

	
###########Comandos generales################################
	
make:
#	iverilog -o prob probador_tb.v
	iverilog -o pssp testbenchps.v
	iverilog -o conv probador_conv_tb.v
	iverilog -o conv832 probador_conv832_tb.v

run: 
#	vvp prob
	vvp pssp
	vvp conv
	vvp conv832
	
look:
#	gtkwave encoding_decoding.vcd
#	gtkwave paraleloserial.vcd
	gtkwave conv328.vcd
	gtkwave conv832.vcd

clean: 
	rm -f -R *.o *.vcd prob pssp conv conv832
