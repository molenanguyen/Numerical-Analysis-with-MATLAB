% Performs Euler's method to solve 
% dI/dt = beta*I*(P-I)/P
% on he interval [a,b]
% with initial value I_0 at t=a.
% Output: I_n ~= I(b) with accuracy tol.
function I_n = EulerMethod(P,beta,I_0,a,b,tol)
   
  %  solve with n=1 subinterval
  n = 1
  dt = (b-a)/n;
  I_1 = I_0 + dt*beta*I_0*(P-I_0)/P;
  
  %  solve with n=2 subintervals
  n = 2
  dt = (b-a)/n;
  t = a;
  I = I_0;
  for j = 1:n
    I = I + dt*beta*I*(P-I)/P;
    t = t + dt;
  endfor
  I_2 = I
  
  %  compute absolute difference between I_2 and I_1 
  diff = abs(I_2 - I_1)
  
  %  double n and repeat as needed
  %  Stop when diff < tol
  while diff > tol
    I_1 = I_2;
    n = 2*n
    dt = (b-a)/n;
    t = a;
    I = I_0;
    for j = 1:n
      I = I + dt*beta*I*(P-I)/P;
      t = t + dt;   
    endfor
    I_2 = I
    diff = abs(I_2-I_1)
  endwhile
  I_n = I_2;
endfunction
