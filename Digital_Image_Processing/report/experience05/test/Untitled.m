n = 1; % ָ������
n_str = num2str(n); % ��nתΪ�ַ��������ڱ���ͼ��
wave = 'haar'; % ָ���任�õ�С������

f=rgb2gray(imread('laoshan.jpg')); % ��ȡͼ��
figure,imshow(f); % ��ʾԭͼ
%imwrite(f, strcat('../report/', strcat(strcat('n_eq_', n_str), '_orig.png')))% ����ԭͼ
[c,s]=wavefast(f, n, wave); % ���ж�ά����С���任
figure; w = wave2gray(c, s, -6); % ��ʾС��ϵ��
%imwrite(w, strcat('../report/', strcat(strcat('n_eq_', n_str), '_FWT.png')))% ����任���
[nc,y]=wavecut('d', c, s); % ����ָ������
figure, w = wave2gray(nc, s, -6); % ��ʾ�����������С��ϵ��
imwrite(w, strcat('../report/', strcat(strcat('n_eq_', n_str), '_cut_d.png')))
%imwrite(w, strcat('../report/', strcat(strcat('n_eq_', n_str), '_cut.png')))% ��������������Ľ��
edge=abs(waveback(nc, s, wave)); % ���з��任
figure,imshow(mat2gray(edge)); % ��ʾ���任��Ľ��
%imwrite(mat2gray(edge), strcat('../report/', strcat(strcat('n_eq_', n_str), '_edge.png')))% ����任���

