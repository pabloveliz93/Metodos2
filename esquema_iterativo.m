i = 2
b = transpose(b)
X = transpose(X0)
X = (I - Qinv * A)*X + Qinv * b
while norm(A * X - b, 1) > e 
    i = i + 1
    X = (I - Qinv * A)*X + Qinv * b
end
