im=imread('1.jpg');
% j=double(i);
% k=log(1+j);
% imshow(k)
size(im)
figure(1)
imshow(im)
operation = 'zerocross';
thres = 0.5;
j1 = edge(im(:, :, 1),operation, thres);
j2 = edge(im(:, :, 2),operation, thres);
j3 = edge(im(:, :, 3),operation, thres);
im2 = cat(3, j1, j2);
im2 = cat(3, im2, j3);
class(im2)
figure(2)
imshow(double(im2))

figure(3)
im3 = im;
[row, col, channel] = size(im);
for i = 1 : row
    for j = 1 : col
        for c = 1 : channel
            temp = uint16(im(i, j, c));
            temp = temp + uint16(im2(i, j, c));
            im3(i, j, c) = temp;
        end
    end
end     
imshow(im3)


