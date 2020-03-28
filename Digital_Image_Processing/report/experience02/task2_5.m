im=imread('100_3228.JPG');
%im = double(im);

% 显示原图及其直方图
figure(1)
subplot(2, 1, 1)
imshow(im)
subplot(2, 1, 2)
imhist(im)

%% 对数
im_log = double(im);
im_log = log(1+im_log);
im_log = uint8(im_log);
figure(2)
subplot(2, 1, 1)
imshow(im_log)
subplot(2, 1, 2)
imhist(im_log)

%% 幂
im_pow = double(im);
im_pow = min(200, power(1.2, im_pow));
im_pow = uint8(im_pow);
imwrite(im_pow, 'C:\Users\Asus-\Desktop\数字图像\lecture\expericnce02\实验二 空间域图像增强\100_3228_pow1_2_less200.jpg');
figure(2)
subplot(2, 1, 1)
imshow(im_pow)
subplot(2, 1, 2)
imhist(im_pow)

%% exp
% im_exp = double(im);
% im_exp = min(255, exp(im_exp));
% im_exp = uint8(im_exp);
% %imwrite(im_exp, 'C:\Users\Asus-\Desktop\数字图像\lecture\expericnce02\实验二 空间域图像增强\100_3228_pow1_08.jpg');
% figure(2)
% subplot(2, 1, 1)
% imshow(im_exp)
% subplot(2, 1, 2)
% imhist(im_exp)