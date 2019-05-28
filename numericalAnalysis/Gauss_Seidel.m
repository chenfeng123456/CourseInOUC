function X = Gauss_Seidel(A, b, X0, n, epsilon, N)
% A --> coefficients matrix
% b --> right-hand member
% X --> initial vector
% n --> dimensions
% epsilon --> tolerance error
% N --> maximum acceptable iterations

k = 1;
X = zeros(1, n);

while (1)
    sum = 0;
    for j = 2 : n
        sum = sum + A(1, j) * X0(j);
    end
    X(1) = (b(1) - sum) / A(1, 1);
    
    for i = 2 : n-1
        sum = 0;
        for j = 1 : n
            if j == i
                continue;
            end
            sum = sum + A(i, j) * X0(j);
        end
        X(i) = (b(i) - sum) / A(i, i);
    end
    
    sum = 0;
    for j = 1 : n-1
        sum = sum + A(n, j) * X0(j);
    end
    X(n) = (b(n) - sum) / A(n, n);
    
    error = 0;
    for i = 1 : n
        error = error + abs(X(i) - X0(i)); 
    end
    if error < epsilon
        break; 
    end
    
    if k >= N
        fprintf("\nFail!\n");
        break;
    end
    
    X0 = X;
    k = k + 1;
end

fprintf("\nk = %d\n", k);

