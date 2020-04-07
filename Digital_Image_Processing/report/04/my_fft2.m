% reference: https://blog.csdn.net/jiugedexiaodi/article/details/79705308



img = imread('C:\Users\Asus-\Desktop\数字图像\report\04\rotate45.png');
img = rgb2gray(img);

% 将图像的数据格式转换为double型的，此时图像的数值范围由原来的[0,255]，
% 变成了[0,1],其实不进行转换的话，也可以进行傅里叶变换，
% 只是傅里叶变换后的图像会有所不同
img=im2double(img);

% size(img)

F = fft2(img);
F = fftshift(F);
F = abs(F);

% 傅里叶变换后模值差异非常大，低频直流远远大于高频
% 不加这一句变换后的结果只能看到中间有一个亮点
T = log(1+F);
figure(1)
subplot(1, 2, 1)
imshow(img)
subplot(1, 2, 2)
% 后面的[]，表示对图像做了一个类似于归一化的操作，
% 防止傅里叶变换后模值差异太大
imshow(T, [])