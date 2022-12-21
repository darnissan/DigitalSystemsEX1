// 2->1 multiplexer auto test bench
module mux2_test;

    logic mux2_d0;          // Data input 0
    logic mux2_d1;          // Data input 1
    logic mux2_sel;         // Select input
    logic mux2_z;           // Output

	mux2 uut (
		.d0(mux2_d0),
		.d1(mux2_d1),
		.sel(mux2_sel),
		.z(mux2_z)
	);

	initial begin
		$display("********************");
		$display("     RUN TESTS      ");
		$display("********************");

		//test0 
		mux2_sel = 1'b0;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b0;
		#50;
		assert(mux2_z == 0) $display("Test0>>Passed"); else $error("Test0>>failed");

		//test1
		mux2_sel = 1'b0;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;
		assert(mux2_z == 0) $display("Test1>>Passed"); else $error("Test1>>failed");
		
		//test2
		mux2_sel = 1'b0;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		assert(mux2_z == 1) $display("Test2>>Passed"); else $error("Test2>>failed");
		
		//test3
		mux2_sel = 1'b0;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b1;
		#50;
		assert(mux2_z == 1) $display("Test3>>Passed"); else $error("Test3>>failed");
		
		//test4
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b0;
		#50;
		assert(mux2_z == 0) $display("Test4>>Passed"); else $error("Test4>>failed");
		
		//test5
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;
		assert(mux2_z == 1) $display("Test5>>Passed"); else $error("Test5>>failed");
		
		//test6
		mux2_sel = 1'b1;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		assert(mux2_z == 0) $display("Test6>>Passed"); else $error("Test6>>failed");
		
		//test7
		mux2_sel = 1'b1;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b1;
		#50;
		assert(mux2_z == 1) $display("Test7>>Passed"); else $error("Test7>>failed");
		
	end

endmodule