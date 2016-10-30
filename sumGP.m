function [result] = sumGP(x,n)
  if x == 1; result = n + 1 % Check for the exceptional case
  else result = (x^(n+1) - 1) / (x - 1)
  end