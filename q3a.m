I = imread('template.png');
I = rgb2gray(I);
g = imgradient(I);

## not sure why you need to do this
maxgrad =  g/max(max(g));
#imshow(g);
imwrite(maxgrad, 'template_grad.png')
imshow(maxgrad);
