%% 读取图像，转为灰度图，显示
I = imread('C:\Users\Asus-\Desktop\数字图像\report\experience03\4.jpg');
%I=rgb2gray(I); 
figure
subplot(1, 2, 1),imshow(I);
title('原图像');
%% 将图像的数据格式转换为double型的，此时图像的数值范围由原来的[0,255]，
 % 变成了[0,1],其实不进行转换的话，也可以进行傅里叶变换，
 % 只是傅里叶变换后的图像会有所不同
s_r=fftshift( fft2( double( I(:, :, 1) ) ) );
s_g=fftshift( fft2( double( I(:, :, 2) ) ) );
s_b=fftshift( fft2( double( I(:, :, 3) ) ) );
%% 进行滤波
[a, b, c] = size(I);
% 找到中心点坐标
a0 = round( (a+1) / 2 );
b0 = round( (b+1) / 2 );
% 圆的半径，低通滤波是圆内能量保留
d = 80; 
for i = 1:a 
    for j = 1:b
        distance = sqrt( (i-a0)^2 + (j-b0)^2 ); 
        % 为“<="时是高通滤波，
        % 为“>="时是低通滤波
        if distance >= d 
            h = 0;
        else
            h = 1;
        end
        s_r(i,j) = h * s_r(i,j);
        s_g(i,j) = h * s_g(i,j);
        s_b(i,j) = h * s_g(i,j);
    end
end
%% 把滤波后的三个通道拼接起来
s_r = uint8( real( ifft2( ifftshift(s_r) ) ) ); 
s_g = uint8( real( ifft2( ifftshift(s_g) ) ) );
s_b = uint8( real( ifft2( ifftshift(s_b) ) ) );
res = cat(3, s_r, s_g);
res = cat(3, res, s_b);
subplot(1, 2, 2),imshow(res);
title('低通滤波所得图像'); 