%  numerical integration with Riemann sum
function I2 = integrate(func,a,b,tol)
  f = inline(func);
  
  %  Approximate with n=1 subinterval
  n=1
  dx = (b-a)/n;
  I1 = f(a)*dx
  
  %  Approximate n=2 subintervals
  n=2
  dx = (b-a)/n;
  x = a + dx*(0:n-1);
  I2 = sum(f(x))*dx
  
  %  check error and repeat
  while abs(I2-I1) > tol
    I1 = I2;
    n = 2*n
    dx = (b-a)/n;
    x = a + dx*(0:n-1);
    I2 = dx*sum(f(x))
  endwhile
endfunction