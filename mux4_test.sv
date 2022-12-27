// 4->1 multiplexer test bench template
module mux4_test;

	logic mux4_d0;
	logic mux4_d1;
	logic mux4_d2;
	logic mux4_d3;
	logic [1:0] mux4_sel;
	logic mux4_z;
	
	mux4 uut (
		.d0(mux4_d0), 
		.d1(mux4_d1),
		.d2(mux4_d2), 
		.d3(mux4_d3), 
		.sel(mux4_sel0), 
		.z(mux4_z)
		);
	
	initial begin
	
	mux4_d0 = 0;
	mux4_d1 = 0;
	mux4_d2 = 0;
	mux4_d3 = 0;
	mux4_sel = 0;
	#50

	// d0=0 -> d0=1
	mux4_d0 = 1;
	mux4_d1 = 0;
	mux4_d2 = 0;
	mux4_d3 = 0;
	mux4_sel = 0;

	#50
	
	// d0=1 -> d0=0
	mux4_d0 = 0;
	mux4_d1 = 0;
	mux4_d2 = 0;
	mux4_d3 = 0;
	mux4_sel = 0;
	
	end

endmodule
