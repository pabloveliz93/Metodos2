function [b] = funcion(t,n)
b=zeros(n,1);
for i=1:n
    b(i)=1/(1+20*t(i)^2);
end
end
