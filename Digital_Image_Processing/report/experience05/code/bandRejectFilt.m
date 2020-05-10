img=(imread('filter.jpg'));
 figure, imshow(img), title('Ô­Í¼');

[M, N]=size(img);
F=fft2(img);
% 
sig=80;
F1=fftshift(F);
figure, imshow(0.1*log(F1), []);
w=5;
H=bandRejectFilter('gaussian',M,N,sig,1,w);  
% H2=hpfilter('gaussian',M,N,120);
% H1=1-H.*H2;

%G=H.*F;
%G=H2.*G;

G=H.*F;
G1=ifftshift(G);
figure, imshow(0.1*log(G1),[]), title('ÏÝ²¨´ø×èÂË²¨Æ÷');

g=real(ifft2(G));
figure, imshow(g,[]), title('ÏÝ²¨´ø×èÂË²¨½á¹û');


