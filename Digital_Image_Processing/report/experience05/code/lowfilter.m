img=(imread('dct2.jpg'));
 figure, imshow(img), title('原图');

[M, N]=size(img);
F=fft2(img);
% 
sig=130;
F1=fftshift(F);
figure, imshow(0.1*log(F1), []);
    
H=lpfilter('gaussian',M,N,15);  
% H2=hpfilter('gaussian',M,N,120);
% H1=1-H.*H2;

%G=H.*F;
%G=H2.*G;
H(:,:)=1;
%最佳陷波
gap=3;
l1=N/2-gap;
l2=N/2+gap;
t1=M/2-gap;
t2=M/2+gap;

H(1: t1, l1:l2)=0;
H(t2:M-1,l1:l2)=0;

G=H.*F1;
G1=ifftshift(G);
g=real(ifft2(G1));
figure, imshow(g,[]), title('高通滤波');


