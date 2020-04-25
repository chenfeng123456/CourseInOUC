%% 读取图像，转为灰度图，显示
I = imread('C:\Users\Asus-\Desktop\数字图像\report\experience03\2.jpg');
I=rgb2gray(I); 
figure(1),imshow(I);
title('原图像');
%% 将图像的数据格式转换为double型的，此时图像的数值范围由原来的[0,255]，
 % 变成了[0,1],其实不进行转换的话，也可以进行傅里叶变换，
 % 只是傅里叶变换后的图像会有所不同
s=fftshift(fft2(double(I)));
figure(2),imshow(abs(s),[]); 
title('图像傅里叶变换所得频谱'); 
figure(3),imshow(log(abs(s)),[]);
title('图像傅里叶变换取对数所得频谱');
%% 对图像进行二维余弦变换
s_dct = dct2(I);
figure(4), imshow(log(abs(s_dct)), [])
title('离散余弦变换结果')
%% 进行滤波
[a,b]=size(s);
a0=round((a+1)/2);
b0=round((b+1)/2);
d=10; 
for i=1:a 
    for j=1:b
        distance=sqrt((i-a0)^2+(j-b0)^2); 
        % 为“<="时是高通滤波，
        % 为“>="时是低通滤波
        if distance<=d 
            h=0; 
        else
            h=1;
        end
        s(i,j)=h*s(i,j);
    end
end
%% 滤波完成后进行傅里叶反变换，显示滤波结果
 % 将滤波结果与原图相加即得增强结果
s=uint8(real(ifft2(ifftshift(s)))); 
figure(5),imshow(s);
title('高通滤波所得图像'); 
figure(6),imshow(s+I);
title('高通滤波所得高频增强图像');