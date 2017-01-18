from PIL import Image
import numpy
a = numpy.asarray(Image.open('image.jpg'))
print(a)
