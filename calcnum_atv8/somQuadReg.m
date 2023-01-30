# recebe um vetor z e uma média ym e calcula o somatório de quadrados da regressão
function res = somQuadReg(z, ym, n);
  
  som = 0;
  for i = 1:n
    
    som += ((z(i) - ym)^2);
  endfor
  
  res = som;
end