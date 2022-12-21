// 4->1 multiplexer auto test bench
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
		.sel(mux4_sel),
		.z(mux4_z)
	);

	initial begin
		logic [23:0] test_d0;
		logic [23:0] test_d1;
		logic [23:0] test_d2;
		logic [23:0] test_d3;
		logic [23:0] test_sel0;
		logic [23:0] test_sel1;
		logic [23:0] test_results;
		integer i;
		
		test_d0 = 24'b010101110010010110000011;
		test_d1 = 24'b111000111000110111100101;
		test_d2 = 24'b010110010010110010101001;
		test_d3 = 24'b101010001100101101101100;
		test_sel1 = 24'b000000000000111111111111;
		test_sel0 = 24'b000000111111000000111111;
		test_results = 24'b010101111000110010101100;
		
		$display("********************");
		$display("*****RUN TESTS******");
		$display("********************");
		
		for (i = 0; i < 24; i++) begin
			mux4_d0 = test_d0[i];
			mux4_d1 = test_d1[i];
			mux4_d2 = test_d2[i];
			mux4_d3 = test_d3[i];
			mux4_sel = {test_sel1[i],test_sel0[i]};
			#100;
			assert(mux4_z == test_results[i]) $display("Test%d>>Passed",i); else $error("Test%d>>failed",i);
		end
	end

endmodule
