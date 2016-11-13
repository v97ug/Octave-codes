function [result] = trapezoidal(f,a,b,n)
  x = linspace(a,b,n+1);
  result = 0.5 * (b-a)/n * (f(x(1)) + f(x(n+1)) + 2 * sigma((1:n),f,x));
endfunction

function [result] = simpson(f,a,b,n)
  x = linspace(a,b,n+1);
  h = (b-a)/n;
  if n == 2; result = h / 3 * (f(x(1)) + 4 * f(x(2)) + f(x(3)) );
  else result = h / 3 * (f(x(1)) + f(x(n+1)) + 2 * sigma((1:n/2 - 1) * 2, f, x) + 4 * sigma((1:n/2) * 2 - 1, f,x));
  endif
endfunction

function [result] = boole(f,a,b,n)
  x = linspace(a,b,n+1);
  h = (b-a)/n;
  if n == 1; result = 2 * h / 45 * (7 * f(x(1)) + 32 * f(x(2)));
  elseif n == 2; result = 2 * h / 45 * (7 * f(x(1)) + 32 * f(x(2)) + 12 * f(x(3)) );
  elseif n == 3; result = 2 * h / 45 * (7 * f(x(1)) + 32 * f(x(2)) + 12 * f(x(3)) + 32 * f(x(4)) );
  elseif n == 4; result = 2 * h / 45 * (7 * f(x(1)) + 32 * f(x(2)) + 12 * f(x(3)) + 32 * f(x(4)) + 7 * f(x(5)) );
  else result = 2 * h / 45 * (7 * f(x(1)) + 39 * f(x(2)) + 51 * f(x(3)) + 83 * f(x(4)) + 90 * sum(arrayfun(f, x(5:(n-4))) ) + 83 * f(x(n-3)) + 51 * f(x(n-2)) + 39 * f(x(n-1)) + 7 * f(x(n)));
  endif
endfunction

function [result] = sigma(range, f, x)
  result = sum(arrayfun(f, x(range)) );
endfunction

f = @(x) 1 + exp(-x) * sin(4 * x);
a = 0;
b = 1;
n = 4;
disp(trapezoidal(f,a,b,n))
disp(simpson(f,a,b,n))
disp(boole(f,a,b,n))