function [  ] = ej23(  )
close all;
%a
imoriginal = imread('logo.png');
im = rgb2gray(imoriginal);
e = edge(im);
%b
sobeledge = edge(im,'sobel',0);
Sobel = fspecial('sobel');
sobelf = imfilter(im,Sobel);
canny = edge(im,'canny',0.2,1);
subplot(2,3,1),imshow(imoriginal),title('Original Image'),...
subplot(2,3,2),imshow(sobelf),title('Sobel con fspecial'),...
subplot(2,3,3),imshow(sobeledge),title('Sobel con edge'),...
subplot(2,3,4),imshow(canny),title('Canny'),...
end
