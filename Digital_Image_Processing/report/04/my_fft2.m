% reference: https://blog.csdn.net/jiugedexiaodi/article/details/79705308



img = imread('C:\Users\Asus-\Desktop\����ͼ��\report\04\rotate45.png');
img = rgb2gray(img);

% ��ͼ������ݸ�ʽת��Ϊdouble�͵ģ���ʱͼ�����ֵ��Χ��ԭ����[0,255]��
% �����[0,1],��ʵ������ת���Ļ���Ҳ���Խ��и���Ҷ�任��
% ֻ�Ǹ���Ҷ�任���ͼ���������ͬ
img=im2double(img);

% size(img)

F = fft2(img);
F = fftshift(F);
F = abs(F);

% ����Ҷ�任��ģֵ����ǳ��󣬵�Ƶֱ��ԶԶ���ڸ�Ƶ
% ������һ��任��Ľ��ֻ�ܿ����м���һ������
T = log(1+F);
figure(1)
subplot(1, 2, 1)
imshow(img)
subplot(1, 2, 2)
% �����[]����ʾ��ͼ������һ�������ڹ�һ���Ĳ�����
% ��ֹ����Ҷ�任��ģֵ����̫��
imshow(T, [])