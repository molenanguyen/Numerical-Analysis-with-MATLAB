% integrating
function I2=integrating(func,a,b,tol)
  f = inline(func);
  %this can also be written as str2func
  #This is to compute the n
  n = abs(((b-a)*(f(b)-f(a)))/(2*tol))
  n=ceil(n); 
  delta=(b-a)/n;
  x = a+delta*[0:n-1];    
  I2 = delta*sum(f(x))
endfunction