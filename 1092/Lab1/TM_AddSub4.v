`timescale 1ns/1ns

module TM_AddSub4;

reg		[3:0] a, b;
reg			  sel;
wire	[3:0] s;
wire	cout;

AddSub4	U_AddSub4 (.a(a), .b(b), .sel(sel), .s(s), .cout(cout));
    // sel 0 = add    1 = sub
   initial begin
    a = 4'd5; b = 4'd1; sel = 0;    #10 ;
    a = 4'd5; b = 4'd1; sel = 1;    #10 ;
    a = 4'd0; b = 4'd0; sel = 0;    #10 ;
    a = 4'd0; b = 4'd0; sel = 1;    #10 ;
    a = 4'd2; b = 4'd2; sel = 0;    #10 ;
    a = 4'd2; b = 4'd2; sel = 1;    #10 ;
    a = 4'd1; b = 4'd5; sel = 0;    #10 ;
    a = 4'd1; b = 4'd5; sel = 1;    #10 ;

    $stop ;
   end
endmodule




