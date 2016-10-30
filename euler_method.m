% オイラー法
function [result] = euler(cn, k, dt, n)
  if n >= 24; result = cn; 
  else result = [cn euler(-k * cn * dt + cn, k, dt, n+1)];
  endif
endfunction

% t の単位は、時間(h)
disp(euler(100, 0.1, 0.1, 0))