class adder_bfm;
  adder_tx tx;
  virtual adder_intf vif;
  
  task run();
    $display("I am inside adder_bfm");
    $display("++++++received tx");
    vif = common::vif;
    
    wait (vif.rst == 0);
    
    repeat(8) begin
      @(posedge vif.clk);
        common::gen2bfm.get(tx);
        vif.a=tx.a;
        vif.b=tx.b;
        vif.c=tx.c;
    end
  endtask
endclass
