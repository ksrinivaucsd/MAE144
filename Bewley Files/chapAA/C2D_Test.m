clear all;
syms z1 p1;
num_poly = RR_poly([1 z1]);
den_poly = RR_poly([1 p1 0]);
Ds = RR_tf(num_poly, den_poly);
%Ds_mat = tf([1 z1], [1 p1 0]);

Dz = KS_C2D_matched(Ds, 0.01)

%Dz_mat = c2d(Ds_mat, 0.01)