import numpy as np
import matplotlib.pyplot as plt
from PIL import Image
import imageio

# 注意这里dim[0]指的是列数，dim[1]指的是行数
# 转成np数组后会有一次转置
dim = (8, 8)

smile = Image.open('November.jpg')
smile = smile.resize( dim ).convert('RGB')
smile = np.array(smile)

#########################################################################
# 对笑脸做尺度变换，使其像素值在0~255之间
#########################################################################
min_smile = [256, 256, 256]
max_smile = [0, 0, 0]

for i in range( len(smile) ):
    for j in range( len(smile[i]) ):
        for c in range(0, 3):
            if smile[i][j][c] < min_smile[c]:
                min_smile[c] = smile[i][j][c]
            elif smile[i][j][c] > max_smile[c]:
                max_smile[c] = smile[i][j][c]

for i in range( len(smile) ):
    for j in range( len(smile[i]) ):
        for c in range(0, 3):
            smile[i][j][c] = 255 / (max_smile[c] - min_smile[c]) * (smile[i][j][c] - min_smile[c])
#########################################################################



elephant = Image.open('qilixiang.jpg')
print(elephant.size)
elephant = elephant.resize( (elephant.size[0]//dim[0]*dim[0], elephant.size[1]//dim[1]*dim[1]) )
print(elephant.size)
elephant = elephant.convert('RGB')
elephant = np.array(elephant)


for i in range( len(elephant) ):
    for j in range( len(elephant[i]) ):
        for c in range(0, 3):
            temp = float(elephant[i][j][c])
            temp = temp * smile[ i % dim[1] ][ j % dim[0] ][c] / 255.0
            elephant[i][j][c] = temp

plt.figure('elephant')
plt.imshow(elephant)
plt.show()

im = Image.fromarray(elephant)
print(im.size)
im.save('res2.jpg')