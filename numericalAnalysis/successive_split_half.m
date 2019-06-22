function I = successive_split_half(f, a, b, e)
% the method of successive spliting half
% you should define the function manually in f.m file
% a --> lower limit of integration
% b --> upper limit of integration
% e --> tolerant error

    E = [];
    N = -1;
    n = 1;
    h = (b - a) / 2;
    T0 = h * (f(a) + f(b));
    %T0
    while true
        F = 0;
        for i = 1 : n
            F = F + f(a + (2*i-1) * h);
        end
        T = T0 / 2 + h * F;
        E(end+1) = abs(T - T0);
        N = N + 1;
        if abs(T - T0) < 3 * e
            I = T;
            break;
        end
        n = n * 2;
        h = h / 2;
        T0 = T;
        %T
    end
    n
    I = vpa(I, 20);
    plot(0 : N, E);
    grid on
    hold on
    xlabel('log_2n')
    ylabel('abs(T - T0)')
    
