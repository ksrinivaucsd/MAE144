clc; clear all;
% D(s) is not proper
syms s;
apoly = expand((s+1)*(s-1)*(s+3)*(s-3)*(s+6)*(s-6));
bpoly = expand((s+2)*(s-2)*(s+5)*(s-5));
fpoly = expand((s+1)^2*(s+3)^2*(s+6)^2*(s+60)^5);
a = RR_poly([1 0 -46 0 369 0 -342]);
b = RR_poly([1 0 -29 0 100]);
f = RR_poly([1 20 154 576 1089 972 324]);   

[x,y,r,t] = RR_diophantine(a, b, f)

check = a*x+b*y-f; % Very close to zero therefore, RR_diophantine works.