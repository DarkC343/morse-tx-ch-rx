`timescale 1ns / 1ps

`define dit 2'b00
`define dah 2'b11
`define etc 2'b01

module morse_rx(clk, ditDah, letter);
	input clk;
	input [0:1] ditDah;
	output reg [0:5] letter; // 0 - 63

	//reg [0:1] dit = 2'b00;
	//reg [0:1] dah = 2'b11;
	integer gap = 42;
	
	integer node = 43;
	
	integer start = 0;
	integer aA = 1;
	integer bB = 2;
	integer cC = 3;
	integer dD = 4;
	integer eE = 5;
	integer fF = 6;
	integer gG = 7;
	integer hH = 8;
	integer iI = 9;
	integer jJ = 10;
	integer kK = 11;
	integer lL = 12;
	integer mM = 13;
	integer nN = 14;
	integer oO = 15;
	integer pP = 16;
	integer qQ = 17;
	integer rR = 18;
	integer sS = 19;
	integer tT = 20;
	integer uU = 21;
	integer vV = 22;
	integer wW = 23;
	integer xX = 24;
	integer yY = 25;
	integer zZ = 26;
	integer n0 = 27;
	integer n1 = 28;
	integer n2 = 29;
	integer n3 = 30;
	integer n4 = 31;
	integer n5 = 32;
	integer n6 = 33;
	integer n7 = 34;
	integer n8 = 35;
	integer n9 = 36;
	integer scSpace = 37;
	integer scDash = 38;
	integer scDot = 39;
	
	always @(posedge clk)
		begin
			case(node)
				start:
					begin
						case(ditDah)
							`dah: // left child of node
								node = tT;
							`dit: // right child of node
								node = eE;
							default:
								begin
									letter = start;
									node = start;
									//$display("(RX) Unkown letter is read");
								end
						endcase
					end
				aA:
					begin
						case(ditDah)
							`dah: // left child of node
								node = wW;
							`dit: // right child of node
								node = rR;
							default:
								begin
									letter = aA;
									node = start;
									$display("(RX) letter is A\n------------------");
								end
						endcase
					end
				bB:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
							`dit: // right child of node
								node = n6;
							default:
								begin
									letter = bB;
									node = start;
									$display("(RX) letter is B\n------------------");
								end
						endcase
					end
				cC:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = cC;
									node = start;
									$display("(RX) letter is C\n------------------");
								end
						endcase
					end
				dD:
					begin
						case(ditDah)
							`dah: // left child of node
								node = xX;
							`dit: // right child of node
								node = bB;
							default:
								begin
									letter = dD;
									node = start;
									$display("(RX) letter is D\n------------------");
								end
						endcase
					end
				eE:
					begin
						case(ditDah)
							`dah: // left child of node
								node = aA;
							`dit: // right child of node
								node = iI;
							default:
								begin
									letter = eE;
									node = start;
									$display("(RX) letter is E\n------------------");
								end
						endcase
					end
				fF:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = fF;
									node = start;
									$display("(RX) letter is F\n------------------");
								end
						endcase
					end
				gG:
					begin
						case(ditDah)
							`dah: // left child of node
								node = qQ;
							`dit: // right child of node
								node = zZ;
							default:
								begin
									letter = gG;
									node = start;
									$display("(RX) letter is G\n------------------");
								end
						endcase
					end
				hH:
					begin
						case(ditDah)
							`dah: // left child of node
								node = n4;
							`dit: // right child of node
								node = n5;
							default:
								begin
									letter = hH;
									node = start;
									$display("(RX) letter is H\n------------------");
								end
						endcase
					end
				iI:
					begin
						case(ditDah)
							`dah: // left child of node
								node = uU;
							`dit: // right child of node
								node = sS;
							default:
								begin
									letter = iI;
									node = start;
									$display("(RX) letter is I\n------------------");
								end
						endcase
					end
				jJ:
					begin
						case(ditDah)
							`dah: // left child of node
								node = n1;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = jJ;
									node = start;
									$display("(RX) letter is J\n------------------");
								end
						endcase
					end
				kK:
					begin
						case(ditDah)
							`dah: // left child of node
								node = yY;
							`dit: // right child of node
								node = cC;
							default:
								begin
									letter = kK;
									node = start;
									$display("(RX) letter is K\n------------------");
								end
						endcase
					end
				lL:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = lL;
									node = start;
									$display("(RX) letter is L\n------------------");
								end
						endcase
					end
				mM:
					begin
						case(ditDah)
							`dah: // left child of node
								node = oO;
							`dit: // right child of node
								node = gG;
							default:
								begin
									letter = mM;
									node = start;
									$display("(RX) letter is M\n------------------");
								end
						endcase
					end
				nN:
					begin
						case(ditDah)
							`dah: // left child of node
								node = kK;
							`dit: // right child of node
								node = dD;
							default:
								begin
									letter = nN;
									node = start;
									$display("(RX) letter is N\n------------------");
								end
						endcase
					end
				oO:
					begin
						case(ditDah)
							`dah: // left child of node
								node = scDash;
							`dit: // right child of node
								node = scDot;
							default:
								begin
									letter = oO;
									node = start;
									$display("(RX) letter is O\n------------------");
								end
						endcase
					end
				pP:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = pP;
									node = start;
									$display("(RX) letter is P\n------------------");
								end
						endcase
					end
				qQ:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = qQ;
									node = start;
									$display("(RX) letter is Q\n------------------");
								end
						endcase
					end
				rR:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
							`dit: // right child of node
								node = lL;
							default:
								begin
									letter = rR;
									node = start;
									$display("(RX) letter is R\n------------------");
								end
						endcase
					end
				sS:
					begin
						case(ditDah)
							`dah: // left child of node
								node = vV;
							`dit: // right child of node
								node = hH;
							default:
								begin
									letter = sS;
									node = start;
									$display("(RX) letter is S\n------------------");
								end
						endcase
					end
				tT:
					begin
						case(ditDah)
							`dah: // left child of node
								node = mM;
							`dit: // right child of node
								node = nN;
							default:
								begin
									letter = tT;
									node = start;
									$display("(RX) letter is T\n------------------");
								end
						endcase
					end
				uU:
					begin
						case(ditDah)
							`dah: // left child of node
								node = scSpace;
							`dit: // right child of node
								node = fF;
							default:
								begin
									letter = uU;
									node = start;
									$display("(RX) letter is U\n------------------");
								end
						endcase
					end
				vV:
					begin
						case(ditDah)
							`dah: // left child of node
								node = n3;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = vV;
									node = start;
									$display("(RX) letter is V\n------------------");
								end
						endcase
					end
				wW:
					begin
						case(ditDah)
							`dah: // left child of node
								node = jJ;
							`dit: // right child of node
								node = pP;
							default:
								begin
									letter = wW;
									node = start;
									$display("(RX) letter is W\n------------------");
								end
						endcase
					end
				xX:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = xX;
									node = start;
									$display("(RX) letter is X\n------------------");
								end
						endcase
					end
				yY:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = yY;
									node = start;
									$display("(RX) letter is Y\n------------------");
								end
						endcase
					end
				zZ:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
							`dit: // right child of node
								node = n7;
							default:
								begin
									letter = zZ;
									node = start;
									$display("(RX) letter is Z\n------------------");
								end
						endcase
					end
				n0:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n0;
									node = start;
									$display("(RX) letter is 0\n------------------");
								end
						endcase
					end
				n1:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n1;
									node = start;
									$display("(RX) letter is 1\n------------------");
								end
						endcase
					end
				n2:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n2;
									node = start;
									$display("(RX) letter is 2\n------------------");
								end
						endcase
					end
				n3:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n3;
									node = start;
									$display("(RX) letter is 3\n------------------");
								end
						endcase
					end
				n4:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n4;
									node = start;
									$display("(RX) letter is 4\n------------------");
								end
						endcase
					end
				n5:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n5;
									node = start;
									$display("(RX) letter is 5\n------------------");
								end
						endcase
					end
				n6:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n6;
									node = start;
									$display("(RX) letter is 6\n------------------");
								end
						endcase
					end
				n7:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n7;
									node = start;
									$display("(RX) letter is 7\n------------------");
								end
						endcase
					end
				n8:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n8;
									node = start;
									$display("(RX) letter is 8\n------------------");
								end
						endcase
					end
				n9:
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = n9;
									node = start;
									$display("(RX) letter is 9\n------------------");
								end
						endcase
					end
				scSpace:
					begin
						case(ditDah)
							`dah: // left child of node
								node = n2;
//							`dit: // right child of node
//								node = yyy;
							default:
								begin
									letter = scSpace;
									node = start;
									$display("(RX) letter is SPACE\n------------------");
								end
						endcase
					end
				scDash: // left child of node
					begin
						case(ditDah)
							`dah: // left child of node
								node = n0;
							`dit: // right child of node
								node = n9;
							default:
								begin
									letter = scDash;
									node = start;
									$display("(RX) letter is -\n------------------");
								end
						endcase
					end
				scDot: // right child of node
					begin
						case(ditDah)
//							`dah: // left child of node
//								node = xxx;
							`dit: // right child of node
								node = n8;
							default:
								begin
									letter = scDot;
									node = start;
									$display("(RX) letter is .\n------------------");
								end
						endcase
					end
				default:
					begin
						node = start;
						//$display("(RX) Starting to read a new letter");
					end
			endcase
		end
	

endmodule
