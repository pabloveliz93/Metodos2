function D = obtener_diagonal(A)
    D = zeros(size(A, 1));
    for i = 1: size(A, 1)
        D(i, i) = A(i , i);
    end
end
