function x = intenal_bisection(a, b, epsilon, f)
% you should define the function manually in f.m file
% a, b --> [a, b]
% epsilon --> tolerance error

while ( 1 )
    %fprintf("a = %f,   b = %f\n", a, b);
    m = a + (b - a) / 2;
    if f(m) == 0
        x = m;
        break;
    end
    if ( sign( f(a) ) == sign( f(m) ) )
        a = m;
    else
        b = m;
    end
    if abs(b - a) < epsilon
        x = a + (b - a) / 2;
        break;
    end
end