class adder_scb;
  mailbox mon_in2scb = new();
  mailbox mon_out2scb = new();
  int case_no=1;
  adder_tx in_tx,out_tx,q1,q2;
//   adder_tx inq[$],outq[$];
  virtual adder_intf vif;
  
  task run();
    $display("I am inside adder_scb");
    vif = common::vif;
    this.mon_in2scb = common::mon_in2scb;
    this.mon_out2scb = common::mon_out2scb;
    in_tx=new();
    out_tx=new();
    q1=new();
    q2=new();
    wait (vif.rst==0);
    repeat(8) begin
      @(posedge vif.clk)
      common::mon_in2scb.get(in_tx);
      common::mon_out2scb.get(out_tx);

//       inq.push_back(in_tx);
//       outq.push_back(out_tx);
      
      compare(q1,q2);
    end
   
  endtask
  
  function void compare(adder_tx q1,q2);
        
    if ((q1.sum==q2.sum)&&(q1.carry==q2.carry)) begin
      $display("-----------------------------------------------------------------");
      $display("*******Test Case No:%0d Matching********      ",case_no,$time);
      $display("-----------------------------------------------------------------");
      case_no++;
    end
    else begin
      $display("-----------------------------------------------------------------");
      $display("*******Test Case No:%0d Not Matching********      ",case_no,$time);
      $display("-----------------------------------------------------------------");
      case_no++;
    end
  endfunction
endclass
