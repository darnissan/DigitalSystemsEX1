vlog libcells/NAND2.sv
vlog libcells/XNOR2.sv
vlog libcells/OR2.sv

vlog mux2.sv
vlog mux4.sv
vlog fas.sv
vlog alu1bit.sv

vlog alu1bit_autotest.sv

vsim alu_autotest
add wave sim:/alu_autotest/uut/*
run -a
