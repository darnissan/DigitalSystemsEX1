vlog libcells/NAND2.sv
vlog libcells/XNOR2.sv
vlog libcells/OR2.sv

vlog mux2.sv
vlog mux4.sv
vlog fas.sv
vlog fas_autotest.sv

vsim fas_test
add wave sim:/fas_test/uut/*
run -a
