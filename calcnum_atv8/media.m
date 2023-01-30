# recebe um vetor x e calcula a média dos dados
function res = media(x, n);
  
  media = 0;
  for i = 1:n
    
    media += x(i);  
  endfor
  
  media = media/n;
  res = media;
end