class adder_agent;
// 1. declare and create the object of gen, bfm, mon
  adder_gen gen = new();
  adder_bfm bfm = new();
  adder_mon_in mon_in = new();
  adder_mon_out mon_out = new();
  adder_scb scb = new();
  task run();
    $display("I am inside adder_agent");
    $display("+++++++++++++++++++++++");
// 2. call the run() of all above components in fork join
    fork
      gen.run();
      $display("+++++++++++++++++++++++");
      bfm.run();
      $display("+++++++++++++++++++++++");
      mon_in.run();
      $display("+++++++++++++++++++++++");
      mon_out.run();
      $display("+++++++++++++++++++++++");
      scb.run();
      $display("+++++++++++++++++++++++");
    join
  endtask
  
endclass
