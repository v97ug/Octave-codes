% 台形の面積の総和で、面積を求める
function [result] = integral(a,b,n)
  %f = (@(x) x ** 2);
  f = (@(t) 3 * t ** 2 * exp(t**3))
  xi = linspace(a,b,n+1);
  result = 0.5 * (b-a)/n * (f(xi(1)) + f(xi(n)) + 2 * sum(arrayfun(f, xi(1:(n-1))) ) );
endfunction

disp(integral(0,1,1000))
