// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

	logic w0, w1, w2, w3, w4, w5;
	
	OR2#(
        .Tpdlh(7),
        .Tpdhl(7)
		
		) or_nor (
        .Z(w4),
        .A(a),
        .B(b)
    );
	
	NAND2#(
        .Tpdlh(5),
        .Tpdhl(5)
		
		) nand_nor (
        .Z(w0),
        .A(w4),
        .B(w4)
    );
	
	XNOR2# (
		.Tpdlh(9), 
		.Tpdhl(9)
		
		)xnor_xor(
		.Z(w5), 
		.A(a), 
		.B(b)
	);
	
	NAND2# (
		.Tpdlh(5), 
		.Tpdhl(5)
		
		) nand_xor(
		.Z(w1), 
		.A(w5), 
		.B(w5)
	);
	
	NAND2# (
		.Tpdlh(5), 
		.Tpdhl(5)
		
		) nand_fas(
		.Z(w3), 
		.A(op[0]), 
		.B(op[0])
	);
	
	fas ALU_fas (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.a_ns(w3), 
		.s(w2), 
		.cout(cout)
	);
	
	mux4 ALU_mux4 (
		.d0(w0), 
		.d1(w1), 
		.d2(w2), 
		.d3(w2),
		.sel(op), 
		.z(s)
	);
	
endmodule
