function img = contrast_stretching(img_path)

img = imread(img_path);
figure(1);
subplot(4, 2, 1);
imshow(img);
title('原始图像');

subplot(4, 2, 3);
imhist(img(:, :, 1));
title('R通道灰度直方图')
subplot(4, 2, 5);
imhist(img(:, :, 2));
title('G通道灰度直方图')
subplot(4, 2, 7);
imhist(img(:, :, 3));
title('B通道灰度直方图')

[row, col, channel] = size(img);
rmax_r = max(max(img(:, :, 1)));
rmin_r = min(min(img(:, :, 1)));
rmax_g = max(max(img(:, :, 2)));
rmin_g = min(min(img(:, :, 2)));
rmax_b = max(max(img(:, :, 3)));
rmin_b = min(min(img(:, :, 3)));


% freq = zeros(255, 3);
% for i = 1 : row
%     for j = 1 : col
%         freq( img(i, j, 1), 1) = freq( img(i, j, 1), 1) + 1;
%         freq( img(i, j, 2), 2) = freq( img(i, j, 2), 2) + 1;
%         freq( img(i, j, 3), 1) = freq( img(i, j, 3), 3) + 1;
%     end
% end


for i = 1 : row
    for j = 1 : col
        img(i, j, 1) = 255 / ( rmax_r - rmin_r) * ( img(i, j, 1) - rmin_r );
        img(i, j, 2) = 255 / ( rmax_g - rmin_g) * ( img(i, j, 2) - rmin_g );
        img(i, j, 3) = 255 / ( rmax_b - rmin_b) * ( img(i, j, 3) - rmin_b );
    end
end

subplot(4, 2, 2);
imshow(img);
title('对比度拉伸之后的图像');

subplot(4, 2, 4);
imhist(img(:, :, 1));
title('拉伸后R通道灰度直方图')
subplot(4, 2, 6);
imhist(img(:, :, 2));
title('拉伸后G通道灰度直方图')
subplot(4, 2, 8);
imhist(img(:, :, 3));
title('拉伸后B通道灰度直方图')

        