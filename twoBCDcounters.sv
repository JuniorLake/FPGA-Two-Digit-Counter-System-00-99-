module twoBCDcounters (input logic clock, clear, enable,
								output logic [3:0] QU,
								output logic [3:0] QT);

counter0to9 u0 (.enable(enable), .clock(clock), .clear_n(clear), .Q(QU), .c9(e_tens));

counter0to9 u1 (.enable(enable & e_tens), .clock(clock), .clear_n(clear), .Q(QT), .c9());

endmodule

