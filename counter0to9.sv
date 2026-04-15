module counter0to9 (input logic clock, enable, clear_n,
							output logic c9,
							output logic[3:0] Q);
							
logic q3, q2, q1 ,q0;

assign c9 = q3 & q0;

assign Q = {q3, q2, q1 , q0};

logic reset_n;
logic is10_n;

always_comb begin
	reset_n = clear_n & is10_n;
	is10_n = ~(q3 & ~q2 & q1 & ~q0);
end

always_ff @(posedge clock)
	if (!reset_n)		q0 <= 1'b0;
	else if (enable) 	q0 <= ~q0;

always_ff @(posedge clock)
	if (!reset_n)		q1 <= 1'b0;
	else if (enable) 	q1 <= q0 ? ~q1 : q1;
	
assign t2 = q0 & q1;
							
always_ff @(posedge clock)
	if (!reset_n)		q2 <= 1'b0;
	else if (enable) 	q2 <= t2 ? ~q2 : q2;
	
assign t3 = t2 & q2;

always_ff @(posedge clock)
	if (!reset_n)		q3 <= 1'b0;
	else if (enable) 	q3 <= t3 ? ~q3 : q3;

endmodule