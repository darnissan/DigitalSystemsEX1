// 4->1 multiplexer test bench template
module mux4_test;

	logic mux4_d0;
	logic mux4_d1;
	logic mux4_d2;
	logic mux4_d3;
	logic mux4_sel0;
	logic mux4_sel1;
	logic mux4_z;
	
	mux4 uut (
		.d0(mux4_d0), 
		.d1(mux4_d1),
		.d2(mux4_d2), 
		.d3(mux4_d3), 
		.sel[0](mux4_sel0), 
		.sel[1](mux4_sel1), 
		.z(mux4_z)
		);
	
	initial begin
	
	mux4_d0 = 1b'0;
	mux4_d1 = 1b'0;
	mux4_d2 = 1b'0;
	mux4_d3 = 1b'0;
	mux4_sel0 = 1b'0;
	mux4_sel1 = 1b'0;
	#50

	// d0=0 -> d0=1
	mux4_d0 = 1b'1;
	mux4_d1 = 1b'0;
	mux4_d2 = 1b'0;
	mux4_d3 = 1b'0;
	mux4_sel0 = 1b'0;
	mux4_sel1 = 1b'0;
	#50
	
	// d0=1 -> d0=0
	mux4_d0 = 1b'0;
	mux4_d1 = 1b'0;
	mux4_d2 = 1b'0;
	mux4_d3 = 1b'0;
	mux4_sel0 = 1b'0;
	mux4_sel1 = 1b'0;
	#50
		
	end	

endmodule
