`timescale 1ns / 1ps

`define dit 2'b00
`define dah 2'b11

module morse_ch(clk, si, so);
	input clk;
	input [0:1] si;
	output reg [0:1] so;
	
	always @(posedge clk)
		begin
			so = si;
			case(si)
				`dit: $display("(CH) transfering dit");
				`dah: $display("(CH) transfering dah");
				default: $display("(CH) transfering unknown thing");
			endcase
		end

endmodule
