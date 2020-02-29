rect = @(x)(abs(x) <= 0.5)
T = 10;
dt = 0.001;

t = [ -T/2 : dt : T/2 ];

x1 = sinc(10*t);
x2 = rect(10*t);
x3 = x1 + x2;

plot( t, [x1; x2; x3] )
axis( [ -1, +1, -0.5, 2 ] )

E1 = sum( x1.^2 ) * dt;
E2 = sum( x2.^2 ) * dt;
E3 = sum( x3.^2 ) * dt;

disp( [ E1; E2; E3 ] )