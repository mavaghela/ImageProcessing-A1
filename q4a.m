I = imread('court.jpg');
I = rgb2gray(I);
edges = edge(I, 'canny', [0.2 0.25], 1);
imshow(edges)