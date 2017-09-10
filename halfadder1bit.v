module halfAdder1bit (
	input A, B, 
	output Sum, Cout
	);
	
assign Sum = A^B;		//soma = A xor B 
assign Cout = A&B;  	//carry out = A and B

endmodule