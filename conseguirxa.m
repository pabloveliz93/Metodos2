function [x] = conseguirxa(num)
A = hilb(num);

b = zeros(num,1);

for i = 1 : num
    
    for j = 1 : num
        
    b(i,1) = b(i,1) + A(i,j);
    
    end
end

[L,U,P] = lu(A);
B=P*b
y = inv(L)*B
x = inv(U)*y
end
