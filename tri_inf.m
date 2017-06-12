function R = tri_inf(A)
    n = size(A,1);
    R = zeros(n);
    for i = 1: n
        for j = 1: i
            R(i,j) = A(i,j);
        end
    end
end
