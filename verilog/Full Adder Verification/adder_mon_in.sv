class adder_mon_in;
  adder_tx tx = new();
  virtual adder_intf vif;
  task run();
    $display("I am inside adder_mon_in");
    vif = common::vif;
    wait(vif.rst == 0);
    repeat(8) begin
      @(posedge vif.clk);
      dummy();
      tx = new();
      tx.a = vif.a;
      tx.b = vif.b;
      tx.c = vif.c;
      tx.sum=vif.sum;
      tx.carry=vif.carry;
      common::mon_in2scb.put(tx);
      $display("mon_in   a=%0d b=%0d c=%0d --------- sum=%0d carry=%0d",vif.a,vif.b,vif.c,vif.sum,vif.carry,$time);
    end
  endtask
    
  task dummy();
     begin
      vif.sum = vif.a ^ vif.b ^ vif.c;
      vif.carry = vif.a & vif.b | vif.b & vif.c | vif.c & vif.a;
    end
  endtask
endclass
