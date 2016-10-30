% ２進数から１０進数を求める
function [result] = binToDec_(n, str)
  len = length(str);
  if n > len; result = 0;
  else result = str2num(str(n)) * 2 ** (len-n) + binToDec_(n+1, str);
  endif
endfunction

binToDec = @(str) binToDec_(1, str)
disp(binToDec("1011"))