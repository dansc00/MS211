# recebe um vetor z e uma m�dia ym e calcula o somat�rio de quadrados da regress�o
function res = somQuadReg(z, ym, n);
  
  som = 0;
  for i = 1:n
    
    som += ((z(i) - ym)^2);
  endfor
  
  res = som;
end