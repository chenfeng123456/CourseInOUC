% ��ȡͼ����ʾԭͼ
img = imread('3153987-fd1e1de03f59e3a8.jpeg');
figure(1)
imshow(img)
title('ԭͼ')

img_hsi = rgb2hsi(img);% ת��HSI�ռ�
img_hsi(:, :, 3) = histeq( img_hsi(:, :, 3) );% ��ǿ�Ƚ���ֱ��ͼ����
img = hsi2rgb(img_hsi);
figure(3)
imshow(img)
title('��ǿ�Ƚ���ֱ��ͼ�����Ľ��')
imwrite(img, 'C:\Users\Asus-\Desktop\����ͼ��\report\07\enhanced_res_using_hsi.png')