% Performs Heun's method to solve 
% dI/dt = beta*I*(P-I)/P
% on he interval [a,b]
% with initial value I_0 at t=a.
% Output: I_n ~= I(b) with accuracy tol.

function I_n = HeunMethod(P,beta,I_0,a,b,tol)
  
  %  solve with n=1 subinterval
  n = 1
  dt = (b-a)/n;
  m_1 = beta*I_0*(P-I_0)/P;  % slope at left side
  I_1 = I_0 + dt*m_1         % first approximation
  m_2 = beta*I_1*(P-I_1)/P;  % slope at the right side
  m = (m_1 + m_2)/2;         % average slope
  I_1 = I_0 + dt*m;          % second approximation
  
  %  solve with n=2 subinterval
  n = 2
  dt = (b-a)/n;
  t = a;
  I = I_0;
  for j = 1:n
    m_1 = beta*I*(P-I)/P;  % slope at left side
    I_temp = I + dt*m_1;        % first approximation at right side
    m_2 = beta*I_temp*(P-I_temp)/P;  % slope at the right side
    m = (m_1 + m_2)/2;         % average slope
    I = I + dt*m;              % second approximation at right side
    t = t + dt;
  endfor
  I_2 = I
  
  %  compute absolute difference in y_2n and y_n
  diff = abs(I_2 - I_1);
  
  %  double n and repeat as necessary 
  while diff > tol
    I_1 = I_2;
    n = 2*n
    dt = (b-a)/n;
    t = a;
    I = I_0;
    for j = 1:n
      m_1 = beta*I*(P-I)/P;  % slope at left side
      I_temp = I + dt*m_1;         % first approximation at right side
      m_2 = beta*I_temp*(P-I_temp)/P;  % slope at the right side
      m = (m_1 + m_2)/2;         % average slope
      I = I + dt*m;              % second approximation at right side
      t = t + dt;   
    endfor
    I_2 = I
    diff = abs(I_2-I_1)
  endwhile
  I_n = I_2
endfunction