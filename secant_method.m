% secant_method
function c = secant_method(func,a,b,tol)
  f = inline(func);
  %this can also be written as str2func
  while abs(b-a)>=tol
    m=((f(b)-f(a))/(b-a));
    c=b - (f(b))/m
    a=b;
    b=c;
  endwhile
  #m=((f(b)-f(a))/(b-a));
  #c=b - (f(b))/m;

endfunction