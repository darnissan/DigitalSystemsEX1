vlog libcells/NAND2.sv
vlog libcells/XNOR2.sv
vlog libcells/OR2.sv

vlog mux2.sv
vlog mux4.sv
vlog fas.sv
vlog alu1bit.sv
vlog alu64bit.sv

vlog alu64bit_autotest.sv

vsim alu64bit_autotest
add wave sim:/alu64bit_autotest/uut/*
run -a