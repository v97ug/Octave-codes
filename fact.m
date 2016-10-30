% 基本的な再帰のやり方（階乗計算）
function [result] = fact(n)
  if n == 0; result = 1 
  else result = n * fact(n-1);
  endif
endfunction

disp(fact(5))
