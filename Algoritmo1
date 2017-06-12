function [x counter t] = algoritmo_1(x0, Nmax, e, l)
    tic
    counter = 1;
    x = x0;
    n = 20;
    A = construir_matriz_p2(n);
    b = ones(n, 1);
    for i = 2: 2: n
        b(i) = 2;
    end
    for k = 1: Nmax
        x_anterior = x;
        At = transpose(A);
        Q = At * A;
        sgn = zeros(n, 1);
        for h = 1: n
            sgn(h) = sign(x(h));
        end
        S = -At * (A * x - b) - l * sgn;
        [Q S] = eliminacion_gaussiana(Q, S);
        x = sustitucion_h_atras(Q, S);
        if norm(x - x_anterior,1) < e
            return
        end
        counter = counter + 1;
    end
    t = toc
end
