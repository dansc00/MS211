#recebe um vetor y e uma média ym e calcula o somatório de quadrados total
function res = somQuadTot(y, ym, n);
  
  som = 0;
  for i = 1:n
    
    som += ((y(i) - ym)^2);
  endfor
  
  res = som;
end