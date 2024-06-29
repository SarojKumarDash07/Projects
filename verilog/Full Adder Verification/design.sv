module fulladder(input a,b,c,clk,rst,output reg sum,carry);
  always@(posedge clk) begin
    
    if(rst)begin
  		sum = 0;
    	carry = 0;
  	end
  	else begin
  		sum= a^b^c;
  		carry= a&b|b&c|c&a;
    end
  end
endmodule
