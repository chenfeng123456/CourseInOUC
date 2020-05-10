clear;
close all;

% 装载图片,将yourimage换成你要处理的图片
img = rgb2gray(imread('IMG_3480.jpg'));
% 显示这个图片
figure,imshow(img);
title('Original Image');

% 构造一个高斯滤波器
f_high = 2.0;
f_low = 0.6;
% 得到一个高斯低通滤波b器
gauss_low_filter = fspecial('gaussian', [7 7], 1.414);
matsize = size(gauss_low_filter);
% 由于同态滤波是要滤出高频部分,
% 所以我们得把这个低通滤波器转换成一个高通滤波器.
% f_high 和 f_low 是控制这个高通滤波器形态的参数.
gauss_high_filter = zeros(matsize);
gauss_high_filter(ceil(matsize(1,1)/2) , ceil(matsize(1,2)/2)) = 1.0;
gauss_high_filter = f_high*gauss_high_filter - (f_high-f_low)*gauss_low_filter;

% 显示搞通滤波期的频率响应
figure,freqz2(gauss_high_filter);
colormap(jet(64));

% 利用对数变换将入射光和反射光部分分开
log_img = log(double(img));

% 将高斯高通滤波器与对数转换后的图象卷积
high_log_part = imfilter(log_img, gauss_high_filter, 'symmetric', 'conv');
% 显示卷积后的图象
figure,imshow(high_log_part);
title('High Frequency Part');

% 由于被处理的图象是经过对数变换的,我们再用幂变换将图象恢复过来
high_part = exp(high_log_part);
minv = min(min(high_part));
maxv = max(max(high_part));
% 得到的结果图象
figure,imshow((high_part-minv)/(maxv-minv));
title('Result Image'); 
