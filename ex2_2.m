function [result] = sin(x, n)
  if n == 0; result = 0; 
  else x ** (2*n + 1) * (-1) ** n / (2*n + 1) + sin(x, (n-1));
  endif
endfunction

disp(sin(pi, 10))