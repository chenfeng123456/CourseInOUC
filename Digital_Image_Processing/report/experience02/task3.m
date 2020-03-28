im=imread('4.jpg');
%im = double(im);

% 显示原图及其直方图
figure(1)
subplot(2, 1, 1)
imshow(im)
subplot(2, 1, 2)
imhist(im)

%im = double(im);

%h=[1,1,1;1,1,1;1,1,1];
dim = 9;
h = ones(dim);
h = h / (dim.^2);
im_filted1=conv2( im(:, :, 1), h, 'same');
im_filted2=conv2( im(:, :, 2), h, 'same');
im_filted3=conv2( im(:, :, 3), h, 'same');
im_filted = cat(3, im_filted1, im_filted2);
im_filted = cat(3, im_filted, im_filted3);
im_filted = uint8(im_filted);

% 显示滤波后的图像及其直方图
figure(2)
subplot(2, 1, 1)
imshow(im_filted)
imwrite(im_filted, './4junzhi.jpg')
subplot(2, 1, 2)
imhist(im_filted)


im_filted = medfilt3(im, [dim,dim,3]);
figure(3)
subplot(2, 1, 1)
imshow(im_filted);
imwrite(im_filted, './4medfilt3.jpg')
subplot(2, 1, 2)
imhist(im_filted)


% im_res = im;
% [row, col, channel] = size(im);
% for i = 1 : row
%     for j = 1 : col
%         for c = 1 : channel
%             temp = uint16(im(i, j, c));
%             temp = temp + uint16(im_filted(i, j, c));
%             im_res(i, j, c) = temp;
%         end
%     end
% end 
% 
% im_res = uint8(im_res);
% 
% figure(6)
% subplot(2, 1, 1)
% imshow(im_res)
% imwrite(im_res, 'C:\Users\Asus-\Desktop\数字图像\lecture\expericnce02\实验二 空间域图像增强\100_3228_enhanced2.jpg')
% subplot(2, 1, 2)
% imhist(im_res)