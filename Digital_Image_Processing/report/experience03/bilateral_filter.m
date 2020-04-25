function g=bilateral_filter(f)
%˫���˲�������
%��ν��˫���˲����������Ϊ����������ͬ���˲�ģ����

f = imread(f);

figure,imshow(f,[]); %��ʾԭͼ
f=double(f)/255;%���й�һ������һ����Ŀ���ǿ��Կ����ţ�ȥ�룬����w2�ļ���
f=applycform(f,makecform('srgb2lab')); %������ɫ�ռ�ת�������Թ����������������룬Ч�����ܶ�
[m,n,c]=size(f);
r=5;


fr=padarray(f,[r,r],'symmetric');
sigma_s=input('input spatial similarity:'); % 2 4 8������spatial similarity
sigma_r=input('input range similarity:'); % 0.1 0.2 0.4����range similarity
sigma_r=sigma_r*100;

w1=fspecial('gaussian',[2*r+1,2*r+1],sigma_s);%�õ�һ����˹ģ�壬�Ծ�����Ϊ�Ա�����˹�˲���
h=waitbar(0,'wait����'); %��ʾ�������ĺ���


for i=r+1:r+m
    for j=r+1:r+n
        diffpix(:,:,1)=fr(i-r:i+r,j-r:j+r,1)-fr(i,j,1); % �������ز�ֵ��diffpix(:,:,1)��ʾRGB�е�R
        diffpix(:,:,2)=fr(i-r:i+r,j-r:j+r,2)-fr(i,j,2);
        diffpix(:,:,3)=fr(i-r:i+r,j-r:j+r,3)-fr(i,j,3);


        %����Χ�͵�ǰ���ػҶȲ�ֵ��Ϊ�Ա����ĸ�˹�˲���
        w2=exp(-(diffpix(:,:,1).^2+diffpix(:,:,2).^2+diffpix(:,:,3).^2)/(2*sigma_r.^2));


        w=w1.*w2;%������˹ģ���˾͵õ������յ�˫���˲�ģ�塣
        fr(i,j,1)=sum(fr(i-r:i+r,j-r:j+r,1).*w)/sum(w);  %����˫���˲�����ʽ
        fr(i,j,2)=sum(fr(i-r:i+r,j-r:j+r,2).*w)/sum(w);
        fr(i,j,3)=sum(fr(i-r:i+r,j-r:j+r,3).*w)/sum(w);
    end
    waitbar(i/m);
end
close(h);


%���¸�ֵ
g(:,:,1)=fr(r+1:r+m,r+1:r+n,1);
g(:,:,2)=fr(r+1:r+m,r+1:r+n,2);
g(:,:,3)=fr(r+1:r+m,r+1:r+n,3);


g=applycform(g,makecform('lab2srgb')); %����ת��������ʾͼ��
figure,imshow(g,[]);
end
% ��������������������������������
% ��Ȩ����������ΪCSDN������tianguiyuyu����ԭ�����£���ѭ CC 4.0 BY-SA ��ȨЭ�飬ת���븽��ԭ�ĳ������Ӽ���������
% ԭ�����ӣ�https://blog.csdn.net/tianguiyuyu/article/details/79058394