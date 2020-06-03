 f=imread('test\euro2016.jpg');
 f=rgb2gray(f);
 c1=im2jpeg2k(f,5,[8 8.5]);
 f1=jpeg2k2im(c1);
 imshow(f1);
 imratio(f,c1)
 
