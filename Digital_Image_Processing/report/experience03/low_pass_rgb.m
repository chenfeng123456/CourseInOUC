%% ��ȡͼ��תΪ�Ҷ�ͼ����ʾ
I = imread('C:\Users\Asus-\Desktop\����ͼ��\report\experience03\4.jpg');
%I=rgb2gray(I); 
figure
subplot(1, 2, 1),imshow(I);
title('ԭͼ��');
%% ��ͼ������ݸ�ʽת��Ϊdouble�͵ģ���ʱͼ�����ֵ��Χ��ԭ����[0,255]��
 % �����[0,1],��ʵ������ת���Ļ���Ҳ���Խ��и���Ҷ�任��
 % ֻ�Ǹ���Ҷ�任���ͼ���������ͬ
s_r=fftshift( fft2( double( I(:, :, 1) ) ) );
s_g=fftshift( fft2( double( I(:, :, 2) ) ) );
s_b=fftshift( fft2( double( I(:, :, 3) ) ) );
%% �����˲�
[a, b, c] = size(I);
% �ҵ����ĵ�����
a0 = round( (a+1) / 2 );
b0 = round( (b+1) / 2 );
% Բ�İ뾶����ͨ�˲���Բ����������
d = 80; 
for i = 1:a 
    for j = 1:b
        distance = sqrt( (i-a0)^2 + (j-b0)^2 ); 
        % Ϊ��<="ʱ�Ǹ�ͨ�˲���
        % Ϊ��>="ʱ�ǵ�ͨ�˲�
        if distance >= d 
            h = 0;
        else
            h = 1;
        end
        s_r(i,j) = h * s_r(i,j);
        s_g(i,j) = h * s_g(i,j);
        s_b(i,j) = h * s_g(i,j);
    end
end
%% ���˲��������ͨ��ƴ������
s_r = uint8( real( ifft2( ifftshift(s_r) ) ) ); 
s_g = uint8( real( ifft2( ifftshift(s_g) ) ) );
s_b = uint8( real( ifft2( ifftshift(s_b) ) ) );
res = cat(3, s_r, s_g);
res = cat(3, res, s_b);
subplot(1, 2, 2),imshow(res);
title('��ͨ�˲�����ͼ��'); 