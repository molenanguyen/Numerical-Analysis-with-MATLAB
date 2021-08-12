% newton_raphson_method
function b = fixed_point(func,a,tol)
  g = inline(func);
  %this can also be written as str2func
  b= g(a)
  count = 0
  while abs(b-a)>=tol
    a=b;
    b= g(a)
    count+=1
  endwhile
endfunction