function [result] = fact1()
  f = @(x) 0.1;
  result = 10000 - sum(arrayfun(f, (1:100000)) );
endfunction

function [result] = fact2()
  f = @(x) 0.125;
  result = 10000 - sum(arrayfun(f, (1:80000)) );
endfunction

disp(fact1())
disp(fact2())