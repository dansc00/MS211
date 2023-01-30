# M�TODO DA BISSEC��O - recebe um valor de intervalo a,b e calcula a raiz para a fun��o f(x) nesse intervalo

function res = bisseccao(a, b)
  
  e = 10e-16; # nivel de toler�ncia para o resultado
  k = 0; # contador de itera��es;
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
  
  printf("Foram realizadas %d itera��es.\n", k);
  res = xk;
end


