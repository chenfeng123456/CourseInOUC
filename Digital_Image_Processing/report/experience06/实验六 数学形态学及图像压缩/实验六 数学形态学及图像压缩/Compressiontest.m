 f=imread('test\euro2016.jpg'); % 读取图像
 f=rgb2gray(f); % 读取灰度图
 %存放路径
 path = 'C:\Users\Asus-\Desktop\数字图像\report\experience06\实验六 数学形态学及图像压缩\实验六 数学形态学及图像压缩\report\';
 imwrite(f, strcat(path, 'orig.jpg')); % 保存原图
 figure
 imshow(f) % 显示原图
 c1=im2jpeg2k(f,5,[10 8.5]); % 进行jpeg2000编码
 f1=jpeg2k2im(c1); % 解码
 figure
 imshow(f1); % 显示经过一次编解码之后的图像
 imwrite(f1, strcat(path, 'n_5_q_10_8-5.jpg')); % 保存结果
 imratio(f,c1) % 计算压缩率
 
