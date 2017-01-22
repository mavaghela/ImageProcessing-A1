% convert image (and filter) to grayscale
im = imread('waldo_grad.png');
filter = imread('template_grad.png');

% normalized cross-correlation
out = normxcorr2(filter, im);

% plot the cross-correlation results
figure('position', [100,100,size(out,2),size(out,1)]);
subplot('position',[0,0,1,1]);
axis off;
axis equal;

% find the peak in response
[y,x] = find(out == max(out(:)));
y = y(1) - size(filter, 1) + 1;
x = x(1) - size(filter, 2) + 1;

% plot the detection's bounding box
figure('position', [300,100,size(im,2),size(im,1)]);
subplot('position',[0,0,1,1]);
imshow(im)
imwrite(im, 'found_waldo.png');
axis off;
axis equal;
rectangle('position', [x,y,size(filter,2),size(filter,1)], 'edgecolor', [0.1,0.2,1], 'linewidth', 3.5);

