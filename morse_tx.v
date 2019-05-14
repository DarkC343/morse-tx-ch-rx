`timescale 1ns / 1ps

`define dit 2'b00
`define dah 2'b11

module morse_tx(clk, ditDah_in, ditDah_out);
	input clk;
	input [0:1] ditDah_in;
	output reg [0:1] ditDah_out;
	
	always @(posedge clk)
		begin
			ditDah_out = ditDah_in;
			case(ditDah_in)
				`dit: $display("(TX) transfering dit");
				`dah: $display("(TX) transfering dah");
				default: $display("(TX) unknown thing");
			endcase
		end
endmodule
