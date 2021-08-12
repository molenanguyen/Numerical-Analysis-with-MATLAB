% bisection method
function c = bisection(func,a,b,tol)
  f = inline(func);
  %this can also be written as str2func
  while (b-a)>tol
   
    c=(a+b)/2
   
    if f(c) == 0
      
      a=c
      b=c
    elseif f(a)*f(c) <0
      b=c
    else
      a=c
    endif
  endwhile
  c = (a+b)/2
endfunction