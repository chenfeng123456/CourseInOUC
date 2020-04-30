% 读取图像显示原图
img = imread('3153987-fd1e1de03f59e3a8.jpeg');
figure(1)
imshow(img)
title('原图')

img_hsi = rgb2hsi(img);% 转到HSI空间
img_hsi(:, :, 3) = histeq( img_hsi(:, :, 3) );% 对强度进行直方图均衡
img = hsi2rgb(img_hsi);
figure(3)
imshow(img)
title('对强度进行直方图均衡后的结果')
imwrite(img, 'C:\Users\Asus-\Desktop\数字图像\report\07\enhanced_res_using_hsi.png')