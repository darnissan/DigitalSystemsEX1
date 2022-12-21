// 1-bit ALU auto test banch
module alu_autotest;

	logic alu_a;
	logic alu_b;
	logic alu_cin;
	logic [1:0] alu_op;
	logic alu_s;
	logic alu_cout;
	
	alu1bit uut (
		.a(alu_a),
		.b(alu_b),
		.cin(alu_cin),
		.op(alu_op),
		.cout(alu_cout),
		.s(alu_s)
	);

	initial begin
		logic [31:0] test_a;
		logic [31:0] test_b;
		logic [31:0] test_cin;
		logic [31:0] test_op1;
		logic [31:0] test_op0;
		logic [31:0] test_cout_results;
		logic [31:0] test_s_results;
		integer i;
		
		test_a = {16'b0101010101010101, 8'b00001111, 8'b00001111};
		test_b = {16'b0011001100110011, 8'b00110011, 8'b00110011};
		test_cin = {16'b0000111100001111, 8'b01010101, 8'b01010101};
		test_op1 = {{16{1'b1}}, {16{1'b0}}};
		test_op0 = {{8{1'b1}}, {8{1'b0}}, {8{1'b1}}, {8{1'b0}}};
		test_cout_results = {16'b0010101100010111, {8{1'b0}}, {8{1'b0}}};
		test_s_results = {16'b0110100101101001, 8'b00111100, 8'b11000000};
		
		$display("********************");
		$display("(****RUN TESTS******");
		$display("********************");
		
		//check NOR and XOR - only s matter
		for (i = 0; i < 16; i++) begin
			alu_a = test_a[i];
			alu_b = test_b[i];
			alu_cin = test_cin[i];
			alu_op = {test_op1[i], test_op0[i]};
			#100;
			assert(alu_s == test_s_results[i]) $display("Test%d>>Passed",i); else $error("Test%d>>Failed :(",i);
		end
		
		//check fas functions
		for (i = 16; i < 32; i++) begin
			alu_a = test_a[i];
			alu_b = test_b[i];
			alu_cin = test_cin[i];
			alu_op = {test_op1[i], test_op0[i]};
			#100;
			assert(alu_s == test_s_results[i] && alu_cout == test_cout_results[i]) $display("Test%d>>Passed",i); else $error("Test%d>>Failed :(",i);
		end
	end

endmodule