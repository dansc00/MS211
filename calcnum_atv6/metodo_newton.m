function res = metodo_newton(x, F, J);
  
  e = 1e-5; # erro permitido
  x_aux = 0; # marca x na iteração k-1
  k = 0; # contador de iterações
  dr = e + 1; # distância relativa
  s = 0; # passo de newton
  
  while (modulo_infinito(F, 3) > e && dr > e)
    k++;
    s = inv(-J)*F;
    x_aux = x;
    x = x + s;
    dr = modulo_infinito((x - x_aux), 3);
    
    # atualiza valores de F e J com base em x
    F = [f1(x(1), x(2), x(3)); f2(x(1), x(2), x(3)); f3(x(1), x(2), x(3))];
    J = jacobiana(x(1), x(2), x(3));
  endwhile
  
  res = x;
end