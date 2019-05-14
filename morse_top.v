`timescale 1ns / 1ps

`define dit 2'b00
`define dah 2'b11
`define etc 2'b01

module morse_top;
	reg clk;
	reg [0:1] ditDah;
	wire [0:1] t;
	wire [0:1] p;
	wire [0:5] letter;
	
	// clock: 10 ns period
	initial
		begin
			clk = 1'b0;
			forever
				begin
					#5 clk = ~clk;
				end
		end

//	// limit simulation time
//	initial
//		begin
//			#200 $finish;
//		end
	
	// dit dah
	initial
		begin
			#10 ditDah = `etc;

			#10 ditDah = `dit; // h
			#10 ditDah = `dit;
			#10 ditDah = `dit;
			#10 ditDah = `dit;

			#10 ditDah = `etc;
			
			#10 ditDah = `dit; // e

			#10 ditDah = `etc;

			#10 ditDah = `dit; // l
			#10 ditDah = `dah;
			#10 ditDah = `dit;
			#10 ditDah = `dit;

			#10 ditDah = `etc;

			#10 ditDah = `dit; // l
			#10 ditDah = `dah;
			#10 ditDah = `dit;
			#10 ditDah = `dit;

			#10 ditDah = `etc;

			#10 ditDah = `dah; // o
			#10 ditDah = `dah;
			#10 ditDah = `dah;

			#10 ditDah = `etc;

			#10 ditDah = `dit; // SPACE
			#10 ditDah = `dit;
			#10 ditDah = `dah;
			#10 ditDah = `dah;

			#10 ditDah = `etc;

			#10 ditDah = `dit; // w
			#10 ditDah = `dah;
			#10 ditDah = `dah;

			#10 ditDah = `etc;

			#10 ditDah = `dah; // o
			#10 ditDah = `dah;
			#10 ditDah = `dah;

			#10 ditDah = `etc;

			#10 ditDah = `dit; // r
			#10 ditDah = `dah;
			#10 ditDah = `dit;

			#10 ditDah = `etc;

			#10 ditDah = `dit; // l
			#10 ditDah = `dah;
			#10 ditDah = `dit;
			#10 ditDah = `dit;

			#10 ditDah = `etc;

			#10 ditDah = `dah; // d
			#10 ditDah = `dit;
			#10 ditDah = `dit;

			#10 ditDah = `etc;
		end
	
	morse_tx m_tx_ut(clk,	ditDah,	t);
	morse_ch m_ch_ut(clk,	t,			p);
	morse_rx m_rx_ut(clk,	p,			letter);
	
endmodule
