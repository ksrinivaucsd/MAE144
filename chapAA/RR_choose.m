function c=RR_choose(n,k)
% function c=RR_choose(n,k)
% Compute the "choose" function
% INPUTS:  n,k=integers
% OUTPUT:  c = (n choose k) = n!/(k! (n-k)!)
% TEST:    clear, for k=0:9, for i=0:k, a(i+1)=RR_choose(k,i); end, a, end                   
% Renaissance Robotics codebase, Appendix A, https://github.com/tbewley/RR
% Copyright 2023 by Thomas Bewley, distributed under BSD 3-Clause License. 

c=factorial(n)/(factorial(k)*factorial(n-k));
