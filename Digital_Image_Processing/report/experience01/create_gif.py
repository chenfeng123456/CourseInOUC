'''
Author: Solarzhou
Email: tzhou@foxmail.com
公众号：Solarzhou
'''
import imageio
def create_gif(image_list, gif_name, duration = 1.0):
    '''
    :param image_list: 这个列表用于存放生成动图的图片
    :param gif_name: 字符串，所生成gif文件名，带.gif后缀
    :param duration: 图像间隔时间
    :return:
    '''
    frames = []
    for image_name in image_list:
        frames.append(imageio.imread(image_name))

    imageio.mimsave(gif_name, frames, 'GIF', duration=duration)
    return

def main():
    #这里放上自己所需要合成的图片
    image_list = ['01.jpg', '02.jpg', '03.jpg']
    gif_name = 'new.gif'
    duration = 1.5
    create_gif(image_list, gif_name, duration)

if __name__ == '__main__':
    main()

