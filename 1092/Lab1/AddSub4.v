`timescale 1ns/1ns

 // 0 add   1 sub
module AddSub4(a, b, sel, s, cout);
    input [3:0] a, b ;
    input sel ;
    output  [3:0] s ;
    output  cout ;
    wire [2:0] temp_cout ;
    
    FullAdder fa0( a[0], sel^b[0], sel, s[0], temp_cout[0] ) ;
    FullAdder fa1( a[1], sel^b[1], temp_cout[0], s[1], temp_cout[1] ) ;
    FullAdder fa2( a[2], sel^b[2], temp_cout[1], s[2], temp_cout[2] ) ;
    FullAdder fa3( a[3], sel^b[3], temp_cout[2], s[3], cout ) ;
    
   

endmodule

module FullAdder(a, b, c, sum, cout) ;
    input a, b, c ;
    output sum, cout ;

    wire temp_xor_1, temp_and_1, temp_and_2 ;

    assign temp_xor_1 = a^b ;
    assign sum = temp_xor_1^c ;
    assign temp_and_1 = temp_xor_1&c ;
    assign temp_and_2 = a&b ;
    assign cout = temp_and_1|temp_and_2 ;

endmodule