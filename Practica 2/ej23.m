function [  ] = ej23(  )
close all;
%a
imoriginal = imread('logo.png');
im = rgb2gray(imoriginal);
e = edge(im);
%b
%We apply the different filters
Sobel = fspecial('sobel');
sobelf = imfilter(im,Sobel);
canny = edge(im,'canny',0.2,1);
ep = fspecial('prewitt');
el = fspecial('laplacian',1);
prewitt = imfilter(im,ep);
laplacian = imfilter(im,el);
figure
subplot(2,3,1),imshow(imoriginal),title('Original Image'),...
subplot(2,3,2),imshow(sobelf),title('Sobel'),...
subplot(2,3,3),imshow(canny),title('Canny'),...
subplot(2,3,4),imshow(prewitt),title('Prewitt'),...
subplot(2,3,5),imshow(laplacian),title('Laplacian'),...
%c)
%We do the same with another image
im = imread('monroe.jpg');
e = edge(im);
Sobel = fspecial('sobel');
sobelf = imfilter(im,Sobel);
canny = edge(im,'canny',0.2,1);
ep = fspecial('prewitt');
el = fspecial('laplacian',1);
prewitt = imfilter(im,ep);
laplacian = imfilter(im,el);
figure
subplot(2,3,1),imshow(im),title('Original Image'),...
subplot(2,3,2),imshow(sobelf),title('Sobel'),...
subplot(2,3,3),imshow(canny),title('Canny'),...
subplot(2,3,4),imshow(prewitt),title('Prewitt'),...
subplot(2,3,5),imshow(laplacian),title('Laplacian'),...
%d)
%We use the differents types of sobel on the image
imoriginal = imread('logo.png');
im = rgb2gray(imoriginal);
sobeledge = edge(im,'sobel',0);
Sobel = fspecial('sobel');
sobelf = imfilter(im,Sobel);
sobelmask = [[-1 0 1]; [-2 0 2]; [1 0 1]];
sobelm = imfilter(im,sobelmask);
figure
subplot(1,3,1),imshow(sobeledge),title('Sobel con edge'),...
subplot(1,3,2),imshow(sobelf),title('Sobel con fspecial'),...
subplot(1,3,3),imshow(sobelm),title('Sobel con mascara'),...
end
