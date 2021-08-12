% integrating3
function I2=integrating3(func,a,b,n)
  f = inline(func);
  %this can also be written as str2func
  delta=(b-a)/n;
  x = a+delta*(0:n-1);    
  I2 = delta*sum(f(x))
  
endfunction