// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------



// Put your code here
// ------------------

	logic fas_a;          // Data input 0
    logic fas_b;          // Data input 1
    logic fas_cin;         // Select input
    logic fas_Ans;	// Output
	logic fas_s;
	logic fas_cout;

	fas uut (
		.a(fas_a),
		.b(fas_b),
		.cin(fas_cin),
		.a_ns(fas_Ans),
		.s(fas_s),
		.cout(fas_cout)
	);
	initial begin
//b=0->1 a=0 cin=0 a_ns=0 path
		fas_a= 1'b0;
		fas_b = 1'b0;
		fas_Ans = 1'b0;
		fas_cin=1'b0;
		
		#100;
		fas_a= 1'b0;
		fas_b = 1'b1;
		fas_Ans = 1'b0;
		fas_cin=1'b0;
		#100;
		fas_a= 1'b0;
		fas_b = 1'b0;
		fas_Ans = 1'b0;
		fas_cin=1'b0;
		#200
		
		//a=0->1 b=1 cin=0 a_ns=0 path
		fas_a= 1'b0;
		fas_b = 1'b1;
		fas_Ans = 1'b0;
		fas_cin=1'b0;
		
		#100;
		fas_a= 1'b1;
		fas_b = 1'b1;
		fas_Ans = 1'b0;
		fas_cin=1'b0;
		#100;
		fas_a= 1'b0;
		fas_b = 1'b1;
		fas_Ans = 1'b0;
		fas_cin=1'b0;
		
		
		end
		
		
		
// End of your code

endmodule
