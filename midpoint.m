% 積分を求める
function [result] = midpoint(a,b,n,i)
  f = (@(x) x ** 2);
  %f = (@(t) 3 * t ** 2 * exp(t**3))
  h = (b - a) / n;
  xi = linspace(a,b,n+1);
  result = sum( arrayfun(@(in) h * f((xi(in+1) + xi(in)) / 2),(1:n-1)) );
endfunction

disp(midpoint(0,1,1000,1))