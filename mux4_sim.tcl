vlog libcells/NAND2.sv
vlog libcells/XNOR2.sv
vlog libcells/OR2.sv

vlog mux2.sv
vlog mux4.sv

vlog mux4_autotest.sv

vsim mux4_test
add wave sim:/mux4_test/uut/*
run -a
