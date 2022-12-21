// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------

	logic g1,g2,g3,g4,g5,g6,g7,g8;
// End of your code
	XNOR2 xor2_Aa_ns (
        .Z(g1),
        .A(a),
        .B(a_ns)
    );
	XNOR2 xor2_BCin (
        .Z(g2),
        .A(b),
        .B(cin)
    );
	NAND2 nand2_BCin1 (
        .Z(g3),
        .A(b),
        .B(cin)
    );
	
	NAND2 nand2_BCin2 (
        .Z(g4),
        .A(g3),
        .B(g3)
    );
	
	NAND2 nand2_BxorC (
        .Z(g5),
        .A(g2),
        .B(g2)
    );
	
	NAND2 nand2_BxorCAxnorA_ns (
        .Z(g6),
        .A(g1),
        .B(g5)
    );
	NAND2 nand2_BxorCAxnorA_ns2 (
        .Z(g7),
        .A(g6),
        .B(g6)
    );
	OR2 or2_orinst(
		.Z(cout),
		.A(g7),
		.B(g4)
	);
	XNOR2 xor2_AXnorB (
        .Z(g8),
        .A(b),
        .B(a)
    );
	XNOR2 xnor2_ABCIN(
	.Z(s),
	.A(cin),
	.B(g8)
	);
	



endmodule
