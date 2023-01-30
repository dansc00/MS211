#recebe um vetor X e calcula seu módulo no infinito
function res = modulo_infinito(X, n);
  max = abs(X(1));
  for i = 2:n
    if(abs(X(i)) > max)
      max = abs(X(i));
    endif
  endfor
  
  res = max;
end
  