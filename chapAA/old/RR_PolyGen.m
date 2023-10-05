function p=RR_Poly(r)
% function p=RR_Poly(r)
% Generate the coefficients of the polynomial with roots r.
% INPUT:  r=vector of roots of a polynomial
% OUTPUT: p=vector of coefficients of polynomial with roots r
% TEST:   r=[1 -2 -3], p=RR_Poly(r), roots(p)
% Renaissance Robotics codebase, Appendix A, https://github.com/tbewley/RR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

n=length(r); p=1; for i=1:n; p=RR_PolyConv(p,[1 -r(i)]); end
end % function RR_Poly
