module top;
  
//   1. declare clk and reset
  bit clk,rst;
    
  adder_test test;
//   2. instantuiiate the physical interface
  adder_intf pif_intf(clk,rst);
  
//   3. instantiate dut
  fulladder DUT(.clk(clk),.rst(rst),.sum(pif_intf.sum),.carry(pif_intf.carry),.a(pif_intf.a),.b(pif_intf.b),.c(pif_intf.c));
  
//   4. clk & reset generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    rst = 1;
    @(posedge clk);
    rst = 0;
  
//   5. assign physical interface to virtual interface
    common::vif = pif_intf;   // since vif is static hence need to use scope resolution operator (::) to access it
  
//   6. creat object of environment
    test = new();
    
//   7. call run task of env
    
    test.run();
  end 
  initial begin
    #150;
    $finish;
  end
  initial begin
    $dumpfile("top.vcd");
    $dumpvars();
  end
endmodule
