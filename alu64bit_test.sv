// 64-bit ALU test bench template
module alu64bit_test;
	// inputs
	logic alu64bit_cin;
	logic [63:0] alu64bit_a;
	logic [63:0] alu64bit_b;
	logic [1:0] alu64bit_op;
	// outputs
	logic [63:0] alu64bit_s;
	logic alu64bit_cout;
	
	logic [63:0] temp1;
	initial begin
		for (int i = 0; i < 64; i++)
			temp1[i] = 1;
	end
	logic [63:0] temp0;
	initial begin
		for (int i = 0; i < 64; i++)
			temp0[i] = 0;
	end	
	

	
	alu64bit uut(.cin(alu64bit_cin), 
				.a(alu64bit_a), 
				.b(alu64bit_b), 
				.op(alu64bit_op), 
				.s(alu64bit_s), 
				.cout(alu64bit_cout)
				);
	
	
	
	initial begin
		alu64bit_cin = 0;
		alu64bit_a = temp1;
		alu64bit_b = temp0;
		alu64bit_op[0] = 0;
		alu64bit_op[1] = 1;
		#2000
		
		// cin=0 -> cin=1
		alu64bit_cin = 1;
		alu64bit_a = temp1;
		alu64bit_b = temp0;
		alu64bit_op[0] = 0;
		alu64bit_op[1] = 1;
		
		
	end

endmodule
