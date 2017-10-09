#Makefile Proyecto1
#Laura Rincon B55863
#Emanuel Fernandez
#Sofia Fonseca B42634

	
###########Comandos generales################################
	
make:
	iverilog -o prob probador_tb.v
	iverilog -o pssp testbenchps.v

run: 
	vvp prob
	vvp pssp
	
look:
	gtkwave encoding.vcd
	gtkwave paraleloserial.vcd

clean: 
	rm -f -R *.o *.vcd prob pssp
