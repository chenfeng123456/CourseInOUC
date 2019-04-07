function lagrange(x, y, left, right, num)
% Lagrange polynomial
if nargin < 5
    num = 100;
end

x
y
plot(x, y, 'r*', 'MarkerSize', 5)
set(gca, 'XLim', [left, right])
hold on
lenx = length(x);
w = ones(1, lenx);
for i = 1 : lenx
    for j = 1 : lenx
        if j == i
            continue;
        end
        w(i) = w(i) * (x(i) - x(j));
        fprintf("w(%d) = %f    x(i) = %f\n", i, w(i), x(i));
    end
end

Lx = zeros(1, num+1);
j = 1;
for x_i = left : (right-left)/num : right
    lx = 1;
    for xi = x
        lx = lx * (x_i - xi);
    end
    
    i = 1;
    %L = 0;
    while i <= lenx
        if x_i == x(i)
            Lx(j) = y(i);
            break;
        end
        Lx(j) = Lx(j) + lx / (x_i - x(i)) / w(i) * y(i);
        i = i + 1;
    end
    %Lx(j) = L;
    fprintf("Lx(%f) = %f     j = %d\n", x_i, Lx(j), j);
    j = j + 1;
end
plot(left:(right-left)/num:right, Lx, 'LineWidth', 1)




        
