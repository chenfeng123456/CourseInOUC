 f=imread('test\euro2016.jpg'); % ��ȡͼ��
 f=rgb2gray(f); % ��ȡ�Ҷ�ͼ
 %���·��
 path = 'C:\Users\Asus-\Desktop\����ͼ��\report\experience06\ʵ���� ��ѧ��̬ѧ��ͼ��ѹ��\ʵ���� ��ѧ��̬ѧ��ͼ��ѹ��\report\';
 imwrite(f, strcat(path, 'orig.jpg')); % ����ԭͼ
 figure
 imshow(f) % ��ʾԭͼ
 c1=im2jpeg2k(f,5,[10 8.5]); % ����jpeg2000����
 f1=jpeg2k2im(c1); % ����
 figure
 imshow(f1); % ��ʾ����һ�α����֮���ͼ��
 imwrite(f1, strcat(path, 'n_5_q_10_8-5.jpg')); % ������
 imratio(f,c1) % ����ѹ����
 
