object = remove_waves(im_path) % ����remove_waves����
%�ҵ���ֵ���ģ���Ҫ���ݾ������������
SDv_pk_cent = floor(length( object.SDv_pk) / 2) + 1; 
% �ҳ�����Ƶ�ʾ���ֱ��������Ƶ��ͼ�ϵ�ˮƽ���룬��Ҫ��ͼ��ȷ��
dx = 5;
v = object.SDv_pkloc(SDv_pk_cent) - object.SDv_pkloc(SDv_pk_cent - dx)
% �ҳ�����Ƶ�ʾ���ֱ��������Ƶ��ͼ�ϵĴ�ֱ���룬��Ҫ��ͼ��ȷ��
dy = 0;
u = 0
% ��������Ƶ�ʾ���Ƶ�����ĵľ��룬���ض�Ƶ��
D0 = sqrt(v^2 + u^2)
% �ҳ������ȣ���Ҫ��ͼ��ȷ��
% �ҵ��������ģ���Ҫ���ݾ����������
SDv_valley_cent = length(object.SDv_valleyloc) / 2; 
% ����������
w = object.SDv_valleyloc(SDv_valley_cent-3) - object.SDv_pkloc(SDv_pk_cent - 6)

%% ������˹�˲�
n = 3; % ����Ϊ3
G = object.F; % ����һ��Ƶ�������˲�
cent = [ object.M/2+1, object.N/2+1 ] % ȷ��Ƶ�׵����ĵ�����
for u = 1 : object.M
    for v = 1 : object.N
        d = sqrt( (u-cent(1))^2 + (v-cent(2))^2); % ��ǰ�㵽���ĵ�ľ���
        % �ð�����˹�˲����Ĺ�ʽ�����˲�
        G(u, v) = 1 / (1 + (w * d / ( d^2 - D0^2 ))^(2*n)) * G(u, v); 
    end
end
g=real(ifft2(fftshift(G)));% ���˲����Ƶ�׽��з��任
h = figure % ָ�����
% �����˲���Ŀռ���ͼ��
subplot(2,1,1),imshow(g,[]);
title('������˹����˲����ͼ��')
% �ڶ��˲���Ŀռ���ͼ����и���Ҷ�任�������˲����Ƶ��ͼ
F=fft2(g); 
fc=fftshift(F); 
s=log(1+abs(fc));      
subplot(2,1,2),imshow(s,[]); 
title('������˹����˲����Ƶ��ͼ');
print(h, '-dpng', '-r600', strcat(object.path, 'filtered_img.png') )
%% ��˹�˲�
G = object.F; % ����һ��Ƶ�������˲�
for u = 1 : object.M
    for v = 1 : object.N
        d = sqrt( (u-cent(1))^2 + (v-cent(2))^2); % ��ǰ�㵽���ĵ�ľ���
        % �ø�˹�˲����Ĺ�ʽ�����˲���1-exp(-1/2*(((d1.^2)-D0^2)./(d1*w)).^2)
        G(u, v) = (1 - exp( -1/2 * ( ( d^2 - D0^2 ) / (d * w) )^2 ) ) * G(u, v); 
    end
end
g=real(ifft2(fftshift(G)));% ���˲����Ƶ�׽��з��任
h = figure % ָ�����
% �����˲���Ŀռ���ͼ��
subplot(2,1,1),imshow(g,[]);
title('��˹����˲����ͼ��')
% �ڶ��˲���Ŀռ���ͼ����и���Ҷ�任�������˲����Ƶ��ͼ
F=fft2(g); 
fc=fftshift(F); 
s=log(1+abs(fc));      
subplot(2,1,2),imshow(s,[]); 
title('��˹����˲����Ƶ��ͼ');
print(h, '-dpng', '-r600', strcat(object.path, 'Gaussian_filtered_img.png') )