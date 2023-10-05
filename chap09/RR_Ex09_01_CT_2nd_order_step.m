% script RR_Ex09_01_CT_2nd_order_step
% This script calculates the {d+,d-,d0}, and {dc,ds}, coefficients in
% the analytical solution to the step response of the CT system
%   G(s)=b0/(s^2+a1*s+a0).
% It then plugs in values for omega_n, b0, and several values of zeta, and plots,
% and compares against the corresponding numerical solutions determined by RR_step.
% Numerical Renaissance codebase, Chapter 9, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

clear; syms zeta om_n b0;                % Compute solution analytically
sig=zeta*om_n; om_d=om_n*sqrt(1-zeta^2);
pp=-sig+i*om_d; pm=-sig-i*om_d; Y=RR_tf(b0,RR_poly([0,pp,pm],1))
[p,d,k,n]=RR_partial_fraction_expansion(Y)
d0=simplify(d(1))
dc=simplify(d(2)+d(3))
ds=simplify(i*(d(2)-d(3)))

close all; figure(1); om_n=1; b0=1; t=0:.01:10; eps=1e-7; min=eps; max=1-eps; N=10
for zeta=min:(max-min)/N:max, zeta
  d0_n=eval(subs(d0)); dc_n=eval(subs(dc)); ds_n=eval(subs(ds));
  sig_n=eval(subs(sig)); om_d_n=eval(subs(om_d));
  y=exp(-sig_n*t).*(dc_n*cos(om_d_n*t)+ds_n*sin(om_d_n*t))+d0_n; plot(t,y); hold on
end

clear; figure(2); g.T=10; g.linestyle_y='k-'  % Now, just do it all with RR_step!
om_n=1; b0=1; eps=1e-7; min=eps; max=1-eps; N=10;
for zeta=min:(max-min)/N:max, zeta
  for r=0.7:0.1:1.0
    r, G=RR_tf(b0,[1 2*zeta*om_n om_n^2]); RR_step(G,g); hold on
  end
  axis([0 g.T 0 2])
end
% Note: the approach using RR_step extends quite easily to other G(s).