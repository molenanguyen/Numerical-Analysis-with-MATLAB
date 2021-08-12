%  the trapezoidal rule 
function I2 = trapezoidal(func,a,b,tol)
  f = inline(func);
  
  %  Appproximate with n=1
  n = 1
  dx = (b-a)/n;
  x = a + dx*(0:n);  % notice x includes both ends, x(1)=a, x(n+1)=b
  I1 = (0.5*f(x(1)) + sum(f(x(2:n))) + 0.5*f(x(n+1)))*dx
  
  %  Appproximate with n=2
  n = 2
  dx = (b-a)/n;
  x = a + dx*(0:n);
  I2 = (0.5*f(x(1)) + sum(f(x(2:n))) + 0.5*f(x(n+1)))*dx
  
  % Check error and repeat
  while abs(I2-I1) > tol
    I1 = I2;
    n = 2*n
    dx = (b-a)/n;
    x = a + dx*(0:n);
    I2 = (0.5*f(x(1)) + sum(f(x(2:n))) + 0.5*f(x(n+1)))*dx
  endwhile
  
endfunction
