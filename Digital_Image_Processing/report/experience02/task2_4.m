im=imread('100_3228.JPG');
%im = double(im);

% 显示原图及其直方图
figure(1)
subplot(2, 1, 1)
imshow(im)
subplot(2, 1, 2)
imhist(im)

im_adj = imadjust(im, [.2 .3 0; .6 .7 1], []);
figure(2)
subplot(2, 1, 1)
imshow(im_adj)
subplot(2, 1, 2)
imhist(im_adj)