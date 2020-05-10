img=imread('lena.bmp');
fimg=fft2(img);
shiftimg=fftshift(fimg);
% spectrum=log(1+abs(shiftimg));
% ang=abs(angle(shiftimg));
% imhist(spectrum);
figure, imshow(img), title('原图');
% figure, imshow((spectrum),[ ]), title('原图频率谱');
% figure, imshow((ang),[ ]), title('原图相位');
[M, N]=size(img);

shiftimg()
fimg(1,1)=60*M*N;
img2=ifft2(fimg);
% imwrite(img2,'test.bmp');
G=uint8(img2);
figure, imshow(G), title('陷波滤波器后的图像');