% SIRcurves.m

P = 2000;
beta = 1.25;
gamma = .5;
S_0 = (P-1);
I_0 = 1;
R_0 = 0;
a = 0;
b = 20;
tol = 0.5;

n = 256;
dt = (b-a)/n;
t = a + dt*(0:n);

S = S_0;
I = I_0;
R = R_0;

for j = 1:n
  [S(j+1),I(j+1),R(j+1)] = SIR(P,beta,gamma,S(j),I(j),R(j),t(j),t(j+1),tol);
endfor

figure(1)
plot(t,S,t,I,t,R)

