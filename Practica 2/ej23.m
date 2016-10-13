function [  ] = ej23(  )
close all;
%a
imoriginal = imread('logo.png');
im = rgb2gray(imoriginal);
e = edge(im)
%b
sobelim = edge(im,'sobel');
imshow(sobelim)
Sobel = fspecial('sobel');
outim = imfilter(double(im),Sobel);
imshow(outim)
end
