% ��ȡͼ��
Img = imread('C:\Users\Asus-\Desktop\����ͼ��\lecture\experience03\ʵ���� ͼ��Ƶ��任��Ӧ��\4.jpg');
M = size(Img);
 
% �����˲���
W = fspecial('gaussian',[10,10],5); 
% �ֱ������ͨ�����и�˹�˲�
R = imfilter(Img(:, :, 1), W, 'replicate');
G = imfilter(Img(:, :, 2), W, 'replicate');
B = imfilter(Img(:, :, 3), W, 'replicate');
% �����겨�������ͨ��ƴ������
res = cat(3, R, G);
res = cat(3, res, B);
figure(1);
subplot(121); imshow(Img); title('ԭʼͼ��');
subplot(122); imshow(res);    title('�˲���ͼ��');