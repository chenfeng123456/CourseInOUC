function g=bilateral_filter(f)
%双边滤波器函数
%所谓的双边滤波，可以理解为就是两个不同的滤波模板点乘

f = imread(f);

figure,imshow(f,[]); %显示原图
f=double(f)/255;%进行归一化，归一化的目的是可以抗干扰，去噪，便于w2的计算
f=applycform(f,makecform('srgb2lab')); %用于颜色空间转换，我试过，如果不加这个代码，效果会差很多
[m,n,c]=size(f);
r=5;


fr=padarray(f,[r,r],'symmetric');
sigma_s=input('input spatial similarity:'); % 2 4 8……，spatial similarity
sigma_r=input('input range similarity:'); % 0.1 0.2 0.4……range similarity
sigma_r=sigma_r*100;

w1=fspecial('gaussian',[2*r+1,2*r+1],sigma_s);%得到一个高斯模板，以距离作为自变量高斯滤波器
h=waitbar(0,'wait……'); %显示进度条的函数


for i=r+1:r+m
    for j=r+1:r+n
        diffpix(:,:,1)=fr(i-r:i+r,j-r:j+r,1)-fr(i,j,1); % 计算像素差值，diffpix(:,:,1)表示RGB中的R
        diffpix(:,:,2)=fr(i-r:i+r,j-r:j+r,2)-fr(i,j,2);
        diffpix(:,:,3)=fr(i-r:i+r,j-r:j+r,3)-fr(i,j,3);


        %以周围和当前像素灰度差值作为自变量的高斯滤波器
        w2=exp(-(diffpix(:,:,1).^2+diffpix(:,:,2).^2+diffpix(:,:,3).^2)/(2*sigma_r.^2));


        w=w1.*w2;%两个高斯模板点乘就得到了最终的双边滤波模板。
        fr(i,j,1)=sum(fr(i-r:i+r,j-r:j+r,1).*w)/sum(w);  %根据双边滤波器公式
        fr(i,j,2)=sum(fr(i-r:i+r,j-r:j+r,2).*w)/sum(w);
        fr(i,j,3)=sum(fr(i-r:i+r,j-r:j+r,3).*w)/sum(w);
    end
    waitbar(i/m);
end
close(h);


%重新赋值
g(:,:,1)=fr(r+1:r+m,r+1:r+n,1);
g(:,:,2)=fr(r+1:r+m,r+1:r+n,2);
g(:,:,3)=fr(r+1:r+m,r+1:r+n,3);


g=applycform(g,makecform('lab2srgb')); %重新转换回来显示图像
figure,imshow(g,[]);
end
% ————————————————
% 版权声明：本文为CSDN博主「tianguiyuyu」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
% 原文链接：https://blog.csdn.net/tianguiyuyu/article/details/79058394