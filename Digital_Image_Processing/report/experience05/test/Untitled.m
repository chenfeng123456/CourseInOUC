n = 1; % 指定阶数
n_str = num2str(n); % 将n转为字符串，用于保存图像
wave = 'haar'; % 指定变换用的小波类型

f=rgb2gray(imread('laoshan.jpg')); % 读取图像
figure,imshow(f); % 显示原图
%imwrite(f, strcat('../report/', strcat(strcat('n_eq_', n_str), '_orig.png')))% 保存原图
[c,s]=wavefast(f, n, wave); % 进行二维哈尔小波变换
figure; w = wave2gray(c, s, -6); % 显示小波系数
%imwrite(w, strcat('../report/', strcat(strcat('n_eq_', n_str), '_FWT.png')))% 保存变换结果
[nc,y]=wavecut('d', c, s); % 消除指定分量
figure, w = wave2gray(nc, s, -6); % 显示消除分量后的小波系数
imwrite(w, strcat('../report/', strcat(strcat('n_eq_', n_str), '_cut_d.png')))
%imwrite(w, strcat('../report/', strcat(strcat('n_eq_', n_str), '_cut.png')))% 保存消除分量后的结果
edge=abs(waveback(nc, s, wave)); % 进行反变换
figure,imshow(mat2gray(edge)); % 显示反变换后的结果
%imwrite(mat2gray(edge), strcat('../report/', strcat(strcat('n_eq_', n_str), '_edge.png')))% 保存变换结果

