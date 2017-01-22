## Convolve the attached image.png with a (2D) Gaussian filter with sigma = 10
## Display the result of the convolution

gfilter = fspecial('gaussian', [18, 18],  10);
I = imread('image.jpg');
img = imfilter(I, gfilter, 'conv');
imwrite(img, 'smooth_image.jpg');
imshow(img)