# recebe vetores de pontos z e y e seu tamanho n. Calcula a soma dos desvios
function res = minimoSomaQuadradoDesvios(z, y, n);
  som = 0;
  
  for k = 1:n
    
    som += (y(k) - z(k))^2;
  endfor 
  
  res = som;
end