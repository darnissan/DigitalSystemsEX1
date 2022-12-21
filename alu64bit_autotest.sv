// 64-bit ALU test banch
module alu64bit_autotest;

	logic [63:0] alu_a;
	logic [63:0] alu_b;
	logic alu_cin;
	logic [1:0] alu_op;
	logic [63:0] alu_s;
	logic alu_cout;
	
	alu64bit uut(
		.a(alu_a),
		.b(alu_b),
		.cin(alu_cin),
		.op(alu_op),
		.s(alu_s),
		.cout(alu_cout)
	);
	
	
	logic [130:0] inputTestVector[31:0];
	logic [63:0] outputTestVector1[15:0]; // NOR and XOR output
	logic [63:0] outputTestVectorS[15:0]; // s result of FAS
	logic outputTestVectorCout[15:0]; // cout result of FAS
	integer i;
		
	initial begin
		
		// read the inputs for the simulation and the expected outputs
		$readmemb("ALU64bitInputVector.txt", inputTestVector);
		$readmemb("ALU64bitOutputVector1.txt", outputTestVector1);
		$readmemb("ALU64bitOutputVectorS.txt", outputTestVectorS);
		$readmemb("ALU64bitOutputVectorCout.txt", outputTestVectorCout);
		
		
		$display("********************");
		$display("(****RUN TESTS******");
		$display("********************");
		
		//check NOR and XOR - only s matter
		for(i = 0; i < 16; i++) begin
			{alu_a, alu_b, alu_cin, alu_op} = inputTestVector[i];
			#3000;
			assert(alu_s == outputTestVector1[i]) $display("Test%d>>passed", i+1); else $error("test%d failed :(", i+1);
		end
		
		//check fas functions
		for(i = 16; i < 32; i++) begin
			{alu_a, alu_b, alu_cin, alu_op} = inputTestVector[i];
			#10000;
			assert((alu_s == outputTestVectorS[i-16]) && (alu_cout == outputTestVectorCout[i-16])) $display("Test%d>>passed", i+1); else $error("test%d failed :(", i+1);
		end
		
	end
	
	endmodule