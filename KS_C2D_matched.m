%Functiondef KS_C2D_matched.
%The function accepts input of Ds as a RR_tf, h as a real number, causal
%as a number which is 0 or 1 (0 meaning semi-causal and 1 meaning strictly
%causal) and omega_bar. The function outputs a discrete RR_tf Dz.
function [Dz] = KS_C2D_matched(Ds, h, causal, omega_bar)
    if nargin == 2
        causal = 0;
        omega_bar=0;
    end

    omega_bar_z = exp(omega_bar*h);

    Dz_zeros = exp(Ds.z*h);
    Dz_poles = exp(Ds.p*h);
    zeros_infinity = max(size(Dz_poles))-max(size(Dz_zeros))-causal;

    for i=1:zeros_infinity
        Dz_zeros = [Dz_zeros -1];
    end

    Dz_test=RR_tf(Dz_zeros, Dz_poles, 1);

    K= RR_evaluate(Ds, omega_bar)/RR_evaluate(Dz_test, omega_bar_z);

    Dz = RR_tf(Dz_zeros, Dz_poles, K);
    Dz.h=h;
end