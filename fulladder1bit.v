module fullAdder1bit (
	input A, B, Cin,
	output Sum, Cout
	);
	
assign Sum = A^B^Cin;					//soma = A xor B xor Cin
assign Cout = A&B | A&Cin | B&Cin; 	//carry out = AB + ACin + BCin

endmodule
