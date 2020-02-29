T = 20;
dt = 1e-5;

t = [ -T/2 : dt : T/2 ];

x1 = cos( 100 * pi * t );
x2 = cos( 100 * pi * t + 30 * sin(2 * pi * t) );
x3 = x1 + x2;

subplot( 3, 1, 1 )
plot( t, x1 )
axis( [ 0, +1, -2, 2 ] )
subplot( 3, 1, 2 )
plot( t, x2 )
axis( [ 0, +1, -2, 2 ] )
subplot( 3, 1, 3 )
plot( t, x3 )
axis( [ 0, +1, -2, 2 ] )

P1 = mean(x1 .^ 2);
P2 = mean(x2 .^ 2);
P3 = mean(x3 .^ 2);

disp( [ P1; P2; P3 ] )