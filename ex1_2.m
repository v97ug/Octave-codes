function ret = avg (c,n)
  if (n == 0)
    ret = c;
  else
    ret = 2 + 1/avg(c,n-1);
  endif
endfunction

C = (1-sqrt(5)) / 2
an_1 = avg(C,100-1)
disp(1 + 1/an_1)