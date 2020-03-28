im=imread('100_3228.JPG');
%im = double(im);

% 显示原图及其直方图
figure(1)
subplot(2, 1, 1)
imshow(im)
subplot(2, 1, 2)
imhist(im)

threshold1 = 50;
threshold2 = 100;
threshold3 = 150;
base1 = 1.2;
base2 = 1.08;
base3 = 1.05;
%base4 = 1.028;

im_pow = double(im);
%im_pow = min(200, power(1.2, im_pow));
[rows, cols, channels] = size(im_pow);
for row = 1 : rows
    for col = 1 : cols
        %for c = 1 : channels
            if im_pow(row, col, 1) < threshold1 && im_pow(row, col, 2) < threshold1 && im_pow(row, col, 3) < threshold1
                im_pow(row, col, 1) = min(255, power(base1, im_pow(row, col, 1) ));
                im_pow(row, col, 2) = min(255, power(base1, im_pow(row, col, 2) ));
                im_pow(row, col, 3) = min(255, power(base1, im_pow(row, col, 3) ));
            elseif im_pow(row, col, 1) < threshold2 && im_pow(row, col, 2) < threshold2 && im_pow(row, col, 3) < threshold2
                im_pow(row, col, 1) = min(255, power(base2, im_pow(row, col, 1) ));
                im_pow(row, col, 2) = min(255, power(base2, im_pow(row, col, 2) ));
                im_pow(row, col, 3) = min(255, power(base2, im_pow(row, col, 3) ));
            elseif im_pow(row, col, 1) < threshold3 && im_pow(row, col, 2) < threshold3 && im_pow(row, col, 3) < threshold3
                im_pow(row, col, 1) = min(255, power(base3, im_pow(row, col, 1) ));
                im_pow(row, col, 2) = min(255, power(base3, im_pow(row, col, 2) ));
                im_pow(row, col, 3) = min(255, power(base3, im_pow(row, col, 3) ));
%             else
%                 im_pow(row, col, 1) = min(255, power(base4, im_pow(row, col, 1) ));
%                 im_pow(row, col, 2) = min(255, power(base4, im_pow(row, col, 2) ));
%                 im_pow(row, col, 3) = min(255, power(base4, im_pow(row, col, 3) ));
            end
        %end
    end
end
im_pow = uint8(im_pow);
imwrite(im_pow, 'C:\Users\Asus-\Desktop\数字图像\lecture\expericnce02\实验二 空间域图像增强\p1_2_and_1_08_and_1_05_and_1_03.jpg');
figure(2)
subplot(2, 1, 1)
imshow(im_pow)
subplot(2, 1, 2)
imhist(im_pow)
