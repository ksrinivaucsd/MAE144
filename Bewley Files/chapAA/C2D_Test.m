omega_bar=0;
h=0.01;
omega_bar_z = exp(omega_bar*h);

Dz_zeros = exp(Ds.z*h);
Dz_poles = exp(Ds.p*h);
zeros_infinity = max(size(Dz_poles))-max(size(Dz_zeros))-1;

for i=1:zeros_infinity
    Dz_zeros = [Dz_zeros -1];
end

Dz_test=RR_tf(Dz_zeros, Dz_poles, 1);

K= RR_evaluate(Ds, omega_bar)/RR_evaluate(Dz_test, omega_bar_z);

Dz = RR_tf(Dz_zeros, Dz_poles, K);