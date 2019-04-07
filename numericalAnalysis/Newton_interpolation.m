function Newton_interpolation(x, y, left, right, num)
% New interpolation
if nargin < 5
    num = 100;
end

x
y
plot(x, y, 'r*', 'MarkerSize', 5)
set(gca, 'XLim', [left, right])
hold on
lenx = length(x);

offset = 1;
for i = 2 : lenx
    for j = lenx : -1 : i
        y(j) = (y(j) - y(j-1)) / (x(j) - x(j-offset));
        %fprintf("Nx(%d) = %f\n", j, y(j));
    end
    %fprintf("y(%d) = %f\n", i, y(i));
    %fprintf("******\n");
    offset = offset + 1;
end

Nx = zeros(1, num+1);
xi = 1;
i = 1;
for x_i = left : (right-left)/num : right
    for j = 1 : lenx
        Nx(i) = Nx(i) + xi * y(j);
        xi = xi * (x_i - x(j));
    end
    xi = 1;
    i = i + 1;
end

plot(left:(right-left)/num:right, Nx, 'LineWidth', 1)
hold off;
  
