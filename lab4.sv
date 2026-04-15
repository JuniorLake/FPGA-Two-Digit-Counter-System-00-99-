module lab4(input logic clock, clear,
				input logic pb1, pb2,
				input logic ab,
				output logic [0:6] DAu,
				output logic [0:6] DAt,
				output logic [0:6] DBu,
				output logic [0:6] DBt
				);

logic [3:0] QAU, QAT, QBU, QBT;

singlepulse sp1 (.button(~pb1), . clock(clock), .pb(inc1));

singlepulse2 sp2 (.button(~pb2), . clock(clock), .pb(inc2));

assign increment = inc1 ^ inc2;

twoBCDcounters dispA (.enable(~ab & increment), .clock(clock), .clear(clear), .QU(QAU), .QT(QAT));

twoBCDcounters dispB (.enable(ab & increment), .clock(clock), .clear(clear), .QU(QBU), .QT(QBT));

bcd2display ua0 (.D0(QAU[0]), .D1(QAU[1]), .D2(QAU[2]), .D3(QAU[3]),
					.a(DAu[0]), .b(DAu[1]), .c(DAu[2]), .d(DAu[3]), .e(DAu[4]), .f(DAu[5]), .g(DAu[6]));

bcd2display ua1 (.D0(QAT[0]), .D1(QAT[1]), .D2(QAT[2]), .D3(QAT[3]),
					.a(DAt[0]), .b(DAt[1]), .c(DAt[2]), .d(DAt[3]), .e(DAt[4]), .f(DAt[5]), .g(DAt[6]));

bcd2display ub0 (.D0(QBU[0]), .D1(QBU[1]), .D2(QBU[2]), .D3(QBU[3]),
					.a(DBu[0]), .b(DBu[1]), .c(DBu[2]), .d(DBu[3]), .e(DBu[4]), .f(DBu[5]), .g(DBu[6]));
					
bcd2display ub1 (.D0(QBT[0]), .D1(QBT[1]), .D2(QBT[2]), .D3(QBT[3]),
					.a(DBt[0]), .b(DBt[1]), .c(DBt[2]), .d(DBt[3]), .e(DBt[4]), .f(DBt[5]), .g(DBt[6]));
					
endmodule