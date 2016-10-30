% (1/n)^2 をどんどん足していく関数
% n は再帰の回数
function ret = sumSeries_(n,sum)
  if (n <= 0) % if 257 then dead 
    ret = sum;
  else
    ret = sumSeries_(n-1, sum + (1/n)^2);
  endif
endfunction

% π^2/6 に収束
sumSeries = @(n) sumSeries_(n,0)
disp(sumSeries(255))