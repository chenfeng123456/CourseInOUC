%% ��ȡͼ��תΪ�Ҷ�ͼ����ʾ
I = imread('C:\Users\Asus-\Desktop\����ͼ��\report\experience03\2.jpg');
I=rgb2gray(I); 
figure(1),imshow(I);
title('ԭͼ��');
%% ��ͼ������ݸ�ʽת��Ϊdouble�͵ģ���ʱͼ�����ֵ��Χ��ԭ����[0,255]��
 % �����[0,1],��ʵ������ת���Ļ���Ҳ���Խ��и���Ҷ�任��
 % ֻ�Ǹ���Ҷ�任���ͼ���������ͬ
s=fftshift(fft2(double(I)));
figure(2),imshow(abs(s),[]); 
title('ͼ����Ҷ�任����Ƶ��'); 
figure(3),imshow(log(abs(s)),[]);
title('ͼ����Ҷ�任ȡ��������Ƶ��');
%% ��ͼ����ж�ά���ұ任
s_dct = dct2(I);
figure(4), imshow(log(abs(s_dct)), [])
title('��ɢ���ұ任���')
%% �����˲�
[a,b]=size(s);
a0=round((a+1)/2);
b0=round((b+1)/2);
d=10; 
for i=1:a 
    for j=1:b
        distance=sqrt((i-a0)^2+(j-b0)^2); 
        % Ϊ��<="ʱ�Ǹ�ͨ�˲���
        % Ϊ��>="ʱ�ǵ�ͨ�˲�
        if distance<=d 
            h=0; 
        else
            h=1;
        end
        s(i,j)=h*s(i,j);
    end
end
%% �˲���ɺ���и���Ҷ���任����ʾ�˲����
 % ���˲������ԭͼ��Ӽ�����ǿ���
s=uint8(real(ifft2(ifftshift(s)))); 
figure(5),imshow(s);
title('��ͨ�˲�����ͼ��'); 
figure(6),imshow(s+I);
title('��ͨ�˲����ø�Ƶ��ǿͼ��');