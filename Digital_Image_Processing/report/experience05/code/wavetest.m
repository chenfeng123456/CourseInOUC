f=rgb2gray(imread('laoshan.jpg'));
imshow(f);
[c,s]=wavefast(f,1,'sym4');
figure; wave2gray(c,s,-6);
[nc,y]=wavecut('a',c,s);
figure, wave2gray(nc,s,-6);
edge=abs(waveback(nc,s,'sym4'));
figure,imshow(mat2gray(edge));
