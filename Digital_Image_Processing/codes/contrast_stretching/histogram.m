close all;clear all;clc;
%����histeq��������ֱ��ͼ���⻯����
I=imread('psb (1).jpg');
J=histeq(I);  %ֱ��ͼ���⻯
figure,
%subplot(121),imshow(uint8(I));
subplot(221),imshow(I);
title('ԭͼ')
%subplot(122),imshow(uint8(J));
subplot(222),imshow(J);
title('���⻯��')
%figure,
subplot(223),imhist(I,64);
title('ԭͼ��ֱ��ͼ');
subplot(224),imhist(J,64);
title('���⻯���ֱ��ͼ');

imwrite(J, 'test.png');
% ��������������������������������
% ��Ȩ����������ΪCSDN������Ibelievesunshine����ԭ�����£���ѭ CC 4.0 BY-SA ��ȨЭ�飬ת���븽��ԭ�ĳ������Ӽ���������
% ԭ�����ӣ�https://blog.csdn.net/ibelievesunshine/article/details/79961027