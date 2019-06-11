function X = Newton_iterate(x0, epsilon, f, fx)
% you should define the function manually in f.m file
% and the derivative of the function in fx.m file
% x0 --> initial value
% epsilon --> tolerance error

x = x0;

while ( 1 )
    x0 = x;
    x = x0 - f(x0) / fx(x0);
    if abs( x - x0 ) < epsilon
        break;
    end
end
X = x;