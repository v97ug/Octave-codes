% ニュートン法で、方程式の解を求める
function [result] = newton(f, df, x, eps, n)
  x = x;
  if n >= 999; result = "Nothing";
  elseif abs(f(x)) < eps; result = x;
  elseif df(x) == 0; result = newton(f, df, x + eps, eps, n+1); % eps分だけずらす
  else result = newton(f, df, x - f(x)/df(x), eps, n+1);
  endif
endfunction

% disp( newton((@(x) x ** 2 - 9), (@(x) 2 * x), 0, 10 ** (-6), 0) )
% disp( newton(@(x) tanh(x), @(x) 1 - tanh(x) ** 2, 1.0, 10**(-6), 0) )
p = 0.638;
r = 10;
f = @(d) pi * (d^3 - 3 * d^2 * r + 4 * r^3 * p) / 3;
df = @(d) pi * (3 * d^2 - 6 * d * r) / 3;
eps = 10**(-6);
for i=1:20
  ans = newton(f, df, i, eps, 0);
  if 0 < ans && ans < 20
    disp(ans);  
  endif
endfor
 %disp( newton(f, df, 20, eps, 0))