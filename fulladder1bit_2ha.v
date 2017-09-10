module fullAdder1bit_2HA (
	input A, B, Cin,
	output Sum, Cout
	);
	
wire ha1_sum;
wire ha2_sum;
wire ha1_carry;
wire ha2_carry;
wire Data_out_Sum;
wire Data_out_Carry;

//instancia dois half adders
halfAdder1bit ha1(
	.A(A), //entradas conectadas as portas do primeiro half adder
	.B(B), //entradas conectadas as portas do primeiro half adder
	.Sum(ha1_sum), 
	.Cout(ha1_carry)
);

halfAdder1bit ha2(
	.A(ha1_sum), //resultado do primeiro half adder é conectado a uma entrada do segundo half adder
	.B(Cin),		 //Carry in conectado a segunda entrada do half adder 2
	.Sum(ha2_sum),
	.Cout(ha2_carry)
);
	
assign Sum = ha2_sum;						//sum de ha2 é o resultado final da soma
assign Cout = ha1_carry | ha2_carry; 	//os dois carry-out são conectados numa porta OR

endmodule