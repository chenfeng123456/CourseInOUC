% 读取图像
Img = imread('C:\Users\Asus-\Desktop\数字图像\lecture\experience03\实验三 图像频域变换及应用\4.jpg');
M = size(Img);
 
% 创建滤波器
W = fspecial('gaussian',[10,10],5); 
% 分别对三个通道进行高斯滤波
R = imfilter(Img(:, :, 1), W, 'replicate');
G = imfilter(Img(:, :, 2), W, 'replicate');
B = imfilter(Img(:, :, 3), W, 'replicate');
% 将滤完波后的三个通道拼接起来
res = cat(3, R, G);
res = cat(3, res, B);
figure(1);
subplot(121); imshow(Img); title('原始图像');
subplot(122); imshow(res);    title('滤波后图像');