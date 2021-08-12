% Produces a graph of the solution I(t) on the interval {a,b].
% You can run this program by clicking the "Save File and Run" button above.

%  Specify problem parameters

P = 2000;  %  community population
beta = 5;  %  transmission coefficient (CHANGE THIS IN EXERCISE 4)
I_0 = 1;   %  initial value of I
a = 0;     %  initial time
b = 4;     %  final time
n = 256;   %  number of data points (n+1)
tol = 0.5; %  error tolerance

%  Construct the t vector 
dt = (b-a)/n;
t = a + dt*(0:n);

%  Set initial value of solution vector
I = I_0;

%  Begin time-stepping process
for j = 1:n
  %  Use Heun's method to compute the next value of the solution 
  %  using the previous value as the initial value. 
  %  Augment the new new value on the end of the solution vector. 
  I = [I, HeunMethod(P,beta,I(j),t(j),t(j+1),tol)]; 
endfor

%  Display results 
figure(1)
plot(t,I)