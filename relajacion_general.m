function [X i] = relajacion_general(A, b, w, X0, e)
    n = size(A,1)
    I = eye(n)
    Q = tri_inf(A)
    for i = 1: n
        Q(i,i) = Q(i,i) / w
    end
    %Verificación de restricción
    if det(A) == 0 || det(Q) == 0 || w <= 0 || w >= 2
        fprintf('No se puede aproximar la solución de este sistema. (el determinante de Q o A es cero, o el valor de w no es correcto)\n')
        return
    end
    Qinv = inv(Q)
    if radio_esp(I - Qinv*A) >= 1
        fprintf('Este método no converge para este set de datos.\n')
        return
    end
    esquema_iterativo()
end
