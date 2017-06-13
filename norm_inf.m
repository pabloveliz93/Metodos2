function r = norm_inf(A)
    n = size(A, 1);
    m = size(A, 2)
    R = zeros(n,1);
    for i = 1: n
        for j = 1: m
            R(i) = R(i) + abs(A(i,j));
        end
    end
    r = max(R);
end
