// Single Pulse Circuit code based on the schematic diagram from above 
module singlepulse (input logic clock, button,
				output logic pb);

// output pb
assign pb = ~q3 & q2; 
						 
// signals for the output UD1, UD2 and UD3 flip-flops 
logic q1, q2, q3;

// the logic of flip-flops 						 
always_ff @(posedge clock) begin
	q1 <= button; // flip-flop UD1
	q2 <= q1;     // flip-flop UD2
	q3 <= q2;     // flip-flop UD3
end
					
endmodule	
