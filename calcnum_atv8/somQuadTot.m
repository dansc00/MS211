#recebe um vetor y e uma m�dia ym e calcula o somat�rio de quadrados total
function res = somQuadTot(y, ym, n);
  
  som = 0;
  for i = 1:n
    
    som += ((y(i) - ym)^2);
  endfor
  
  res = som;
end