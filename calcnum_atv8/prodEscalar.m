# recebe dois vetores v1, v2 e seu tamanho n. Calcula seu produto escalar
function res = prodEscalar(v1, v2, n);
  
  prod = 0;
  for i = 1:n
    
    prod += v1(i) * v2(i);
  endfor
  
  res = prod;
 end