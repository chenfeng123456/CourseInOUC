img=imread('lena.bmp');
fimg=fft2(img);
shiftimg=fftshift(fimg);
% spectrum=log(1+abs(shiftimg));
% ang=abs(angle(shiftimg));
% imhist(spectrum);
figure, imshow(img), title('ԭͼ');
% figure, imshow((spectrum),[ ]), title('ԭͼƵ����');
% figure, imshow((ang),[ ]), title('ԭͼ��λ');
[M, N]=size(img);

shiftimg()
fimg(1,1)=60*M*N;
img2=ifft2(fimg);
% imwrite(img2,'test.bmp');
G=uint8(img2);
figure, imshow(G), title('�ݲ��˲������ͼ��');