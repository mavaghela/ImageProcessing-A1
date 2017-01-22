I = imread('waldo.png');
I = rgb2gray(I);
g = imgradient(I);

## not sure why you need to do this
maxgrad =  g/max(max(g));
#imshow(g);
imshow(maxgrad);