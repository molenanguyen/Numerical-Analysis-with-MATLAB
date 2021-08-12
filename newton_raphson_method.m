% newton_raphson_method
function b = newton_raphson_method(func,funcprime,a,tol)
  f = inline(func);
  f_prime = inline(funcprime);
  count = 0;
  %this can also be written as str2func
  if f_prime(a) ==0
    disp("Please enter a new value of a such that f_prime(a) is not 0")
  else
    b= a - (f(a))/(f_prime(a))
    while abs(b-a)>=tol
      a=b;
      b= a - (f(a))/(f_prime(a))
      count +=1;
    endwhile
  endif
endfunction