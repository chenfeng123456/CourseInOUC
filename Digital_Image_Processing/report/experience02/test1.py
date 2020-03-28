from PIL import Image
from pylab import *
import matplotlib.pyplot as plt

def inverse0(im):
    #im = array(im)  # 由于可能对im1直接进行运算，对整型的像
    # 素数据的除运算，会导致小数丢失。故需要
    # 增加'f'option

    for i in range(len(im)):
        for j in range(len(im[i])):
            for c in range(len(im[i][j])):
                im[i][j][c] = 255 - im[i][j][c]

    return im


def histeq(im, nbr_bins=256):
    """ 对一幅灰度图像进行直方图均衡化"""
    #im = array(im, 'f')  # 由于可能对im1直接进行运算，对整型的像
    # 素数据的除运算，会导致小数丢失。故需要
    # 增加'f'option
    # 计算图像的直方图
    imhist, bins = histogram(im.flatten(), nbr_bins, normed=True)
    cdf = imhist.cumsum()  # cumulative distribution function
    cdf = 255 * cdf / cdf[-1]  # 归一化

    # 使用累积分布函数的线性插值，计算新的像素值
    im2 = interp(im.flatten(), bins[:-1], cdf)

    return im2.reshape(im.shape), cdf


pil_im = array(Image.open('100_3228.JPG'))
print(pil_im.shape)
plt.figure('1')

plt.subplot(321)
plt.imshow(pil_im)
plt.subplot(322)
hist(pil_im.flatten(), 128)

im_inverse = inverse0(pil_im.copy())
#im_inverse = Image.fromarray(uint8(im_inverse))
plt.subplot(323)
plt.imshow(im_inverse)
plt.subplot(324)
hist(im_inverse.flatten(), 128)


img, cdf = histeq(pil_im)

print(type(img.shape))
print(cdf.shape)
#img = img/255
img = Image.fromarray(uint8(img))
plt.subplot(325)
plt.imshow(img)
plt.subplot(326)
hist(cdf, 128)

plt.show()