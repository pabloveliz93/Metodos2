function [a] = puntos(m)
a=zeros(m,1);
for i=1:m
    a(i)=-1+(i-1)*2/(m-1);
end
end
