import numpy as np
import matplotlib.pyplot as plt
from PIL import Image, ImageSequence
import imageio

###############################################################
#读取图像，转为灰度图，改变大小，保存
###############################################################
kobe = Image.open('kobe1.jpg')
kobe = kobe.resize( ( int(kobe.size[0]*0.5), int(kobe.size[1]*0.5) ) )
kobe.save('kobe_small.jpg')
kobe = kobe.convert('L')
kobe.save('kobe_gray.jpg')

###############################################################
# 制作gif的函数
###############################################################
def create_gif(img_list, gif_name, duration):
    frames = []
    for img in  img_list:
        frames.append(img)
    imageio.mimsave(gif_name+'.gif', frames, 'GIF', duration=duration)
    return imageio.mimread('%s.gif' % gif_name)
###############################################################

###############################################################
# 读取多幅图像，逐个转为灰度图，改变大小
###############################################################
path_list = [ 'kobe1.jpg', 'kobe2.jpg', 'kobe3.jpg']
img_list = []
for i in path_list:
    img = Image.open(i)
    img = img.convert('L')
    img = img.resize((680, 480))
    img_list.append(img)
    print(img.size)
###############################################################
# plt.figure("qilixiang")
# plt.imshow(img)
# plt.show()
my_gif = create_gif(img_list, 'kobe', 1)
