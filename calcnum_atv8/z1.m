function res = z1(x, n);
  
  for i = 1:n
    
    z(i) = 0.1963 + 0.0186*x(i);
  endfor
  
  res = z;
end