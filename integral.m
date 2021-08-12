% integral 
function I2=integral(func,a,b,tol)
  f = inline(func);
  %this can also be written as str2func
  n= 1;
  delta = b-a;
  I1 = f(a)*delta
  n=2;
  delta = (b-a)/2;
  I2=f(a)*delta+f(a+delta)*delta
  while abs(I2-I1) >= tol 
    I1 = I2;
    n=2*n;
    delta=(b-a)/n;
    x = a+delta*[0:n-1];    
    I2 = delta*sum(f(x))
  endwhile
endfunction