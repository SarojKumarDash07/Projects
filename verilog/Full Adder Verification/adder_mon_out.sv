class adder_mon_out;
  adder_tx tx;
  virtual adder_intf vif;
  task run();
    $display("I am inside adder_mon_out");
    vif = common::vif;
    wait (vif.rst==0);
    repeat(8) begin
      @(posedge vif.clk)
      tx = new();
   	  tx.sum=vif.sum;
      tx.carry=vif.carry;
      $display("mon_out                        sum=%0d carry=%0d",tx.sum,tx.carry,$time);
      common::mon_out2scb.put(tx);
    end
  endtask
endclass
