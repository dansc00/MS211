function res = z2(x, n);
  
  for i = 1:n
    
    z(i) = 0.7419 - 0.06565*x(i);
  endfor
  
  res = z; 
end