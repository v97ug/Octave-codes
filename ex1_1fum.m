function ret = avg (c,n)
  if (n == 0)
    ret = c;
  else
    ret = 1 + 1/avg(c,n-1);
  endif
endfunction

C = (1-sqrt(5)) / 2
disp(avg(C,100))