// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);
// Put your code here
// ------------------

	logic g1,g2,g3,g4,g5;

    NAND2  #(
        .Tpdlh(1),
        .Tpdhl(5)
    ) nand2_inst1 (
        .Z(g1),
        .A(sel),
        .B(sel)
    );
	NAND2  #(
        .Tpdlh(1),
        .Tpdhl(5)
    )
	  nand2_inst2 (
        .Z(g2),
        .A(d0),
        .B(g1)
    );
	NAND2  #(
        .Tpdlh(1),
        .Tpdhl(5)
    )
	  nand2_inst3 (
        .Z(g4),
        .A(sel),
        .B(d1)
    ); 
	NAND2  #(
        .Tpdlh(1),
        .Tpdhl(5)
    )
	  nand2_inst4 (
        .Z(g3),
        .A(g2),
        .B(g2)
    );
	NAND2  #(
        .Tpdlh(1),
        .Tpdhl(5)
    )
	  nand2_inst5 (
        .Z(g5),
        .A(g4),
        .B(g4)
    ); 
	
	
    OR2 #(
        .Tpdlh(5),
        .Tpdhl(7)
    ) or2_inst (
        .Z(z),
        .A(g5),
        .B(g3)
    );	


// End of your code

endmodule
