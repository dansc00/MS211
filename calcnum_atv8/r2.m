#calcula o fator R²
function res = r2(z, y, ym, n);
  
  r2 = somQuadReg(z, ym, n)/somQuadTot(y, ym, n);
  res = r2;
end