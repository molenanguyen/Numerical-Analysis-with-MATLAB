%  Simple SIR model for the spread of disease
%  dS/dt = -beta*S*I/P
%  dI/dt = beta*S*I/P - gamma*I
%  dR/dt = gamma*I
%  S(a) = S_0, I(a) = I_0, R(a) = R_0
%  Output:  S_n ~= S(b), I_n ~= I(b), R_n ~= R(b)

function [S_n,I_n,R_n] = SIR(P,beta,gamma,S_0,I_0,R_0,a,b,tol)
  
  %  solve with n=1 subinterval
  n = 1
  dt = (b-a)/n;
  S_1 = S_0 + dt*(-beta*S_0*I_0)/P;
  I_1 = I_0 + dt*((beta*S_0*I_0)/P - gamma*I_0);
  R_1 = R_0 + dt*(gamma*I_0);
  
  %  solve with n=2 subintervals
  n = 2
  dt = (b-a)/n;
  S = S_0;
  I = I_0;
  R = R_0;
  for j = 1:n
    S = S + dt*(-beta*S*I)/P;
    I = I + dt*((beta*S*I)/P - gamma*I);
    R = R + dt*(gamma*I);
  endfor
  S_2 = S;
  I_2 = I;
  R_2 = R;
  
  %  compute maximum absolute difference between
  diff = max(abs([S_2, I_2, R_2] - [S_1, I_1, R_1]));
  
  %  double n and repeat as needed
  while diff > tol
    S_1 = S_2;
    I_1 = I_2;
    R_1 = R_2;
    n = 2*n
    dt = (b-a)/n;
    S = S_0;
    I = I_0;
    R = R_0;
   for j = 1:n
     S = S + dt*(-beta*S*I)/P;
     I = I + dt*((beta*S*I)/P - gamma*I);
     R = R + dt*(gamma*I);
   endfor
   S_2 = S;
   I_2 = I;
   R_2 = R;
   diff = max(abs([S_2, I_2, R_2] - [S_1, I_1, R_1]));
  endwhile
  S_n = S_2;
  I_n = I_2;
  R_n = R_2;
endfunction
