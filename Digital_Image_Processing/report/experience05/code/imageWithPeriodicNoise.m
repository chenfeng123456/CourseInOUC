f=imread('testnoiseimage.bmp');
[M,N]=size(f);
F=fft2(f);
% 

F1=fftshift(F);

%noise
C = [6 32;  -2 2];
A=[200 200];
[r,R,S]=imnoise3(M,N,C,A);
figure, imshow(S,[]);
figure, imshow(r,[]);
r1=uint8(r*60000);
f=f+r1;
F1=F1+S;

G1=ifftshift(F1);
g=real(ifft2(G1));

figure, imshow(f,[]), title('增加周期噪声后的图像');

