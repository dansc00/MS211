# MÉTODO DA BISSECÇÃO - recebe um valor de intervalo a,b e calcula a raiz para a função f(x) nesse intervalo

function res = bisseccao(a, b)
  
  e = 10e-16; # nivel de tolerância para o resultado
  k = 0; # contador de iterações;
  xk = (a + b)/2;
  
  while(abs(f(xk) > e) || abs(b-a) > e)
      
    if(f(a) * f(xk) < 0)
      b = xk;
    else
      a = xk;
    endif
  
    xk = (a + b)/2;
    k = k+1;
  endwhile
  
  printf("Foram realizadas %d iterações.\n", k);
  res = xk;
end


