#Makefile Proyecto1
#Laura Rincon B55863
#Emanuel Fernandez
#Sofia Fonseca B42634

	
###########Comandos generales################################
	
make:
	iverilog -o prob tb_tx.v

run: 
	vvp prob
	
look:
	gtkwave Tx.vcd

clean: 
	rm -f -R *.o *.vcd prob pssp conv conv832
