vlog libcells/NAND2.sv
vlog libcells/XNOR2.sv
vlog libcells/OR2.sv

vlog mux2.sv

vlog mux2_autotest.sv

vsim mux2_test
add wave sim:/mux2_test/uut/*
run -a
