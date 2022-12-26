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
        .z(w4),
        .a(a),
        .b(b)
    );
	
	NAND2#(
        .Tpdlh(5),
        .Tpdhl(5)
		
		) nand_nor (
        .z(w0),
        .a(w4),
        .b(w4)
    );
	
	XNOR2# (
		.Tpdlh(9), 
		.Tpdhl(9)
		
		)xnor_xor(
		.z(w5), 
		.a(a), 
		.b(b)
	);
	
	NAND2# (
		.Tpdlh(5), 
		.Tpdhl(5)
		
		) nand_xor(
		.z(w1), 
		.a(w5), 
		.b(w5)
	);
	
	NAND2# (
		.Tpdlh(5), 
		.Tpdhl(5)
		
		) nand_fas(
		.z(w3), 
		.a(op[0]), 
		.b(op[0])
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
		.d3(w3), 
		.sel(op), 
		.z(s)
	);
	
endmodule
