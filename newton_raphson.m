#MÉTODO DE NEWTON - RAPHSON

function res = newton_raphson(xk)
  
  e1 = 10e-2; # nivel de tolerância para o resultado
  e2 = 10e-2;
  k = 0; # contador de iterações
  x_ant = 0; # marca o x obtido na iteração anterior
  f0 = (xk);
  dr = e2 + 1;
  
  while(abs(f0) > e1 || dr < e2 || k <= 10)
  
    k = k+1;
    x_ant = xk;
    xk = xk - (f(xk) / f_linha(xk)); 
    dr = abs(xk - x_ant);
    f0 = f(xk);
    
  endwhile
  
  printf("Foram realizadas %d iterações\n", k);
  res = xk;
  
end