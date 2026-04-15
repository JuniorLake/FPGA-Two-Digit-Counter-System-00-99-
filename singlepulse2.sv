module singlepulse2 (input logic clock, button,
							output logic pb);

assign pb = ~q3 & q1;

logic q0, q1, q2, q3;

always_ff @(posedge clock) begin
	q0 <= button;
	q1 <= q0;
	q2 <= q1;
	q3 <= q2;
end

endmodule