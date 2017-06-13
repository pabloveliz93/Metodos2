function [rfe, rbe, z] = e1p3(num)
[l, b] = conseguirxa(num);
z = zeros(num,1)+1.0;
rfe = norm(l-z,1)/norm(z,1);
rbe = norm(b-hilb(num)*l,1)/norm(b,1);
z= rfe/rbe;
end
