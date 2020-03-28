figure(1)

% 原图
im = imread('IMG_2546.JPG');
subplot(3, 2, 1)
imshow(im)
subplot(3, 2, 2)
imhist(im)


% 取反
%im_bw = im2bw(im);
im_inverse = im;
[row, col, channel] = size(im_inverse)
for r = 1 : row
    for c = 1 : col
        for ch = 1 : channel
            im_inverse(r, c, ch) = 255 - im_inverse(r, c, ch);
        end
    end
end
subplot(3, 2, 3)
imshow(im_inverse)
subplot(3, 2, 4)
imhist(im_inverse)

% 直方图均衡化
im_eq = histeq(im);
subplot(3, 2, 5)
imshow(im_eq)
subplot(3, 2, 6)
imhist(im_eq)

saveas(1, 'C:\Users\Asus-\Desktop\数字图像\lecture\expericnce02\实验二 空间域图像增强\task1.jpg')
imwrite(im_eq, 'C:\Users\Asus-\Desktop\数字图像\lecture\expericnce02\实验二 空间域图像增强\eq.jpg')

figure(2)
im_rotate = imrotate(im, -15);
imshow(im_rotate)

size(im_rotate)
figure(3)
im_crop = im_rotate(700 : 900 , 600: 1200, :);
imshow(im_crop);