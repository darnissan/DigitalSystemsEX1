// 2->1 multiplexer test bench template
module mux2_test;

// Put your code here
// ------------------

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

	//D0 0->1
		mux2_sel = 1'b0;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b0;
		#50;
		
		
		mux2_sel = 1'b0;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		
		
		mux2_sel = 1'b0;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b0;
		#50;
		
	//D0 1->0	
		mux2_sel = 1'b0;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		
		
		mux2_sel = 1'b0;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b0;
		#50;
		
		
		mux2_sel = 1'b0;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		
		//D1 0->1
		
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b0;
		#50;
		
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;
		
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b0;
		#50;
		
		
		//D1 1->0
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;
		
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b0;
		#50;
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;
		
		
		
		
		//S 0->1  D0 0 D1 1
		mux2_sel = 1'b0;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;
		
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;
		
		mux2_sel = 1'b0;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;

		//S 1->0  D0 0 D1 1
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;
		
		
		mux2_sel = 1'b0;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b0;
		mux2_d1 = 1'b1;
		#50;




		
		//S 0->1  D0 1 D1 0
		
		mux2_sel = 1'b0;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		
		
		
		//S 1->0  D0 1 D1 0
				mux2_sel = 1'b1;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		
		
		mux2_sel = 1'b0;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		
		mux2_sel = 1'b1;
		mux2_d0 = 1'b1;
		mux2_d1 = 1'b0;
		#50;
		
		
		
		
		
		
end






// End of your code

endmodule





		
