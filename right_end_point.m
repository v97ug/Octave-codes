% 積分する
function [result] = left(a,b,n)
  f = (@(x) x ** 2);
  h = (b - a) / n;
  xi = linspace(a,b,n+1);
  result = sum( arrayfun(@(i) h * f(xi(i)) ,(2:n)) );
endfunction

disp(left(0,1,1000))