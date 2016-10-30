% ニュートン法で、方程式の解を求める
function [result] = newton(f, df, x, eps, n)
  x = x;
  if n >= 999; result = "Nothing";
  elseif abs(f(x)) < eps; result = x
  elseif df(x) == 0; result = newton(f, df, x + eps, eps, n+1); % eps分だけずらす
  else result = newton(f, df, x - f(x)/df(x), eps, n+1);
  endif
endfunction

% disp( newton((@(x) x ** 2 - 9), (@(x) 2 * x), 0, 10 ** (-6), 0) )
disp( newton(@(x) tanh(x), @(x) 1 - tanh(x) ** 2, 1.0, 10**(-6), 0) )