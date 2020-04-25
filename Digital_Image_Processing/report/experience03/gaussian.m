function g= gaussian(f)
%高斯滤波
%这段代码加了一个高斯滤波，最后用了一点小技巧，使得图像变白，达到美白得效果
%gaussian
%显示原图
f = imread(f);
figure,imshow(f,[]);
h=fspecial('gaussian',[3 3],100);
I1=imfilter(f,h,'same');
%显示经过高斯滤波处理之后的图
figure,imshow(I1,[]); 

%blend
G = (f*(1 - opacity)+(f+2*I1-1)*opacity);
%显示经过blend处理之后的图
figure,imshow(G,[]); 

%增大RGB的值，因为越大的RGB值，越白
G=G+30;
%显示经过美白处理之后的图
figure,imshow(G,[]);

g=G;
end

% 
% ————————————————
% 版权声明：本文为CSDN博主「tianguiyuyu」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
% 原文链接：https://blog.csdn.net/tianguiyuyu/article/details/79058394