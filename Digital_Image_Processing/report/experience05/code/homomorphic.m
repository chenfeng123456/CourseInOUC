clear;
close all;

% װ��ͼƬ,��yourimage������Ҫ�����ͼƬ
img = rgb2gray(imread('IMG_3480.jpg'));
% ��ʾ���ͼƬ
figure,imshow(img);
title('Original Image');

% ����һ����˹�˲���
f_high = 2.0;
f_low = 0.6;
% �õ�һ����˹��ͨ�˲�b��
gauss_low_filter = fspecial('gaussian', [7 7], 1.414);
matsize = size(gauss_low_filter);
% ����̬ͬ�˲���Ҫ�˳���Ƶ����,
% �������ǵð������ͨ�˲���ת����һ����ͨ�˲���.
% f_high �� f_low �ǿ��������ͨ�˲�����̬�Ĳ���.
gauss_high_filter = zeros(matsize);
gauss_high_filter(ceil(matsize(1,1)/2) , ceil(matsize(1,2)/2)) = 1.0;
gauss_high_filter = f_high*gauss_high_filter - (f_high-f_low)*gauss_low_filter;

% ��ʾ��ͨ�˲��ڵ�Ƶ����Ӧ
figure,freqz2(gauss_high_filter);
colormap(jet(64));

% ���ö����任�������ͷ���ⲿ�ַֿ�
log_img = log(double(img));

% ����˹��ͨ�˲��������ת�����ͼ����
high_log_part = imfilter(log_img, gauss_high_filter, 'symmetric', 'conv');
% ��ʾ������ͼ��
figure,imshow(high_log_part);
title('High Frequency Part');

% ���ڱ������ͼ���Ǿ��������任��,���������ݱ任��ͼ��ָ�����
high_part = exp(high_log_part);
minv = min(min(high_part));
maxv = max(max(high_part));
% �õ��Ľ��ͼ��
figure,imshow((high_part-minv)/(maxv-minv));
title('Result Image'); 
