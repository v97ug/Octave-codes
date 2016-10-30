%a = -10;
%b = 10;
%n = 1000;
%f = (@(x) x ** 2 - 9);
%x = linspace(a,b,n);
%k = 1;

%root = []

%for i=1:(n-1)
%  x1 = x(i);
%  x2 = x(i+1);
%  f1 = f(x1);
%  f2 = f(x2);
%  if ((f1 * f2) < 0)
%    root(k) = x1 - f1 * (x2 - x1) / (f2-f1);
%    k = k + 1;
%  endif  
%endfor

%disp(root)

% 方程式の解を求める（２つの点を取り、それらを写像した値が、異符号であれば、その間に解がある）
function [result] = find_root(f, a, b, n, acc, times)
  x = linspace(a,b,n);
  x1 = x(times);
  x2 = x(times+1);
  f1 = f(x1);
  f2 = f(x2);
  if times >= n-1; result = acc;
  elseif f1 * f2 < 0; result = [acc, find_root(f, a, b, n, x1 - f1 * (x2 - x1) / (f2-f1), times + 1)];
  else result = find_root(f, a, b, n, acc, times + 1);
  endif 
endfunction

disp(find_root(@(x) x ** 2 - 9, -10, 10, 100, [], 1))