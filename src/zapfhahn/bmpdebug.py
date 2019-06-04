from PIL import Image
import numpy as np

img = Image.open('fingerprint.bmp')
pixels =np.array(img)
print(pixels.shape)

for i in range(100, 320):
    if 73728 % i != 0:
        continue
    pixels = pixels.reshape(i, -1)
    print(pixels.shape)
    img = Image.fromarray(pixels)
    img.save(f'{i}_{73728/i}.png')
    img.show()