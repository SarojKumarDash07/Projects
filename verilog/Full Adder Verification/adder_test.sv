class adder_test;
  adder_env env = new();
   
  task run();
    $display("I am inside adder_test");
    $display("+++++++++++++++++++++++");
    env.run();
  endtask
endclass
