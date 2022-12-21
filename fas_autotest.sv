// Full Adder/Subtractor auto test banch
module fas_test;

	logic fas_a;
	logic fas_b;
	logic fas_cin;
	logic fas_a_ns;
	logic fas_s;
	logic fas_cout;
	
	fas uut (
		.a(fas_a),
		.b(fas_b),
		.cin(fas_cin),
		.a_ns(fas_a_ns),
		.cout(fas_cout),
		.s(fas_s)
	);

	initial begin
		logic [15:0] test_a;
		logic [15:0] test_b;
		logic [15:0] test_cin;
		logic [15:0] test_a_ns;
		logic [15:0] test_cout_results;
		logic [15:0] test_s_results;
		integer i;
		
		test_a = 	16'b0101010101010101;
		test_b = 	16'b0011001100110011;
		test_cin = 	16'b0000111100001111;
		test_a_ns = 16'b0000000011111111;
		test_cout_results = 16'b0010101100010111;
		test_s_results = 16'b0110100101101001;
		
		$display("********************");
		$display("*****RUN TESTS******");
		$display("********************");
		
		for (i = 0; i < 16; i++) begin
			fas_a = test_a[i];
			fas_b = test_b[i];
			fas_cin = test_cin[i];
			fas_a_ns = test_a_ns[i];
			#100;
			assert(fas_s == test_s_results[i] && fas_cout == test_cout_results[i]) $display("Test%d>>Passed",i); else $error("Test%d>>Failed :(",i);
		end
	end

endmodule
