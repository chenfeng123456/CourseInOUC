r=imnoise2('gaussian',1000000,1,0,1);
figure,hist(r,1000),title('gaussian');


r=imnoise2('lognormal',100000,1,1,0.25);
figure,hist(r,200),title('lognormal');

r=imnoise2('rayleigh',100000,1,0,1);
figure,hist(r,1000),title('rayleigh');


r=imnoise2('salt & pepper',100000,1);
figure,hist(r,1000),title('salt & pepper');

r=imnoise2('erlang',100000,1,55,1);
figure,hist(r,1000),title('erlang');