% １０進数から２進数に変換する関数
function [result] = decToBin_(n, acc)
  if n == 1; result = strcat("1",acc); 
  else result = decToBin_(floor(n /  2), strcat(acc, num2str(rem(n, 2))));
  endif
endfunction

decToBin = @(n) decToBin_(n,"");
disp(decToBin(5))
% disp(decToBin(32,""))
