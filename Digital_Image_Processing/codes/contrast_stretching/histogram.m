close all;clear all;clc;
%函数histeq（）进行直方图均衡化处理
I=imread('psb (1).jpg');
J=histeq(I);  %直方图均衡化
figure,
%subplot(121),imshow(uint8(I));
subplot(221),imshow(I);
title('原图')
%subplot(122),imshow(uint8(J));
subplot(222),imshow(J);
title('均衡化后')
%figure,
subplot(223),imhist(I,64);
title('原图像直方图');
subplot(224),imhist(J,64);
title('均衡化后的直方图');

imwrite(J, 'test.png');
% ————————————————
% 版权声明：本文为CSDN博主「Ibelievesunshine」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
% 原文链接：https://blog.csdn.net/ibelievesunshine/article/details/79961027