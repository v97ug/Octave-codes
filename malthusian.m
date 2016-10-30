% 一階微分方程式を解く？
% 数列を求める？
function [result] = malth(pn, r, dt, n)
  if n >= 20; result = pn; 
  else result = [pn malth(r * pn * dt + pn, r, dt, n+1)];
  endif
endfunction

disp(malth(100, 0.1, 0.5, 0))