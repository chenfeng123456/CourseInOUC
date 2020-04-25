object = remove_waves(im_path) % 构建remove_waves对象
%找到峰值中心，需要根据具体情况分析出
SDv_pk_cent = floor(length( object.SDv_pk) / 2) + 1; 
% 找出噪声频率距离直流分量在频谱图上的水平距离，需要看图来确定
dx = 5;
v = object.SDv_pkloc(SDv_pk_cent) - object.SDv_pkloc(SDv_pk_cent - dx)
% 找出噪声频率距离直流分量在频谱图上的垂直距离，需要看图来确定
dy = 0;
u = 0
% 计算噪声频率距离频谱中心的距离，及截断频率
D0 = sqrt(v^2 + u^2)
% 找出阻带宽度，需要看图来确定
% 找到波谷中心，需要根据具体情况分析
SDv_valley_cent = length(object.SDv_valleyloc) / 2; 
% 计算阻带宽度
w = object.SDv_valleyloc(SDv_valley_cent-3) - object.SDv_pkloc(SDv_pk_cent - 6)

%% 巴特沃斯滤波
n = 3; % 阶数为3
G = object.F; % 复制一份频谱用作滤波
cent = [ object.M/2+1, object.N/2+1 ] % 确定频谱的中心点坐标
for u = 1 : object.M
    for v = 1 : object.N
        d = sqrt( (u-cent(1))^2 + (v-cent(2))^2); % 当前点到中心点的距离
        % 用巴特沃斯滤波器的公式进行滤波
        G(u, v) = 1 / (1 + (w * d / ( d^2 - D0^2 ))^(2*n)) * G(u, v); 
    end
end
g=real(ifft2(fftshift(G)));% 对滤波后的频谱进行反变换
h = figure % 指定句柄
% 画出滤波后的空间域图像
subplot(2,1,1),imshow(g,[]);
title('巴特沃斯阻带滤波后的图像')
% 在对滤波后的空间域图像进行傅里叶变换，画出滤波后的频谱图
F=fft2(g); 
fc=fftshift(F); 
s=log(1+abs(fc));      
subplot(2,1,2),imshow(s,[]); 
title('巴特沃斯阻带滤波后的频谱图');
print(h, '-dpng', '-r600', strcat(object.path, 'filtered_img.png') )
%% 高斯滤波
G = object.F; % 复制一份频谱用作滤波
for u = 1 : object.M
    for v = 1 : object.N
        d = sqrt( (u-cent(1))^2 + (v-cent(2))^2); % 当前点到中心点的距离
        % 用高斯滤波器的公式进行滤波，1-exp(-1/2*(((d1.^2)-D0^2)./(d1*w)).^2)
        G(u, v) = (1 - exp( -1/2 * ( ( d^2 - D0^2 ) / (d * w) )^2 ) ) * G(u, v); 
    end
end
g=real(ifft2(fftshift(G)));% 对滤波后的频谱进行反变换
h = figure % 指定句柄
% 画出滤波后的空间域图像
subplot(2,1,1),imshow(g,[]);
title('高斯阻带滤波后的图像')
% 在对滤波后的空间域图像进行傅里叶变换，画出滤波后的频谱图
F=fft2(g); 
fc=fftshift(F); 
s=log(1+abs(fc));      
subplot(2,1,2),imshow(s,[]); 
title('高斯阻带滤波后的频谱图');
print(h, '-dpng', '-r600', strcat(object.path, 'Gaussian_filtered_img.png') )