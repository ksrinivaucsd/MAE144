format long
clc; clear all;
% D(s) is not proper
syms s;
apoly = expand((s+1)*(s-1)*(s+3)*(s-3)*(s+6)*(s-6));
bpoly = expand((s+2)*(s-2)*(s+5)*(s-5));

%k=5 gives a proper D(s)
fpoly = expand((s+1)^2*(s+3)^2*(s+6)^2);  

coefficients_a = coeffs(apoly, 'All');
coefficients_b=coeffs(bpoly, 'All');
coefficients_f=coeffs(fpoly, 'All');

% a = RR_poly(coefficients_a);
% b = RR_poly(coefficients_b);
% f = RR_poly(coefficients_f);

a = RR_poly([1 0 -46 0 369 0 -342]);
b = RR_poly([1 0 -29 0 100]);
f = RR_poly(coefficients_f);

[x,y,r,t] = RR_diophantine(a, b, f);

x_vec = eval(x.poly);
y_vec = eval(y.poly);

Ds=RR_tf(y.poly,x.poly);

check = a*x+b*y-f

