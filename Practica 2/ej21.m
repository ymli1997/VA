function [] = ej21() % file is the name of the image
%ej21 This function illustrates the effect of resizing and smoothing with different 1D and 2D masks
close all; 
file='face.png';
im=imread(file);
imGray=rgb2gray(im);
resizedIm=imresize(imGray, 2);
h_hor=[1 1 1 1 1]; % 1D mask defined h_hor=h_hor/sum(h_hor); % normalization
% define a vertical mask and apply it on the gray image.
smoothedImGray1D_hor=imfilter(double(imGray),h_hor);
% Repeat the smoothing several times in order to remove the line in the middle.
%Look for alternative of the mean filter to remove the line in the middle.
%smoothedImGray1D_...=
% define the 2D mask, shell we normalize it?
% smoothedImGray2D = ... %convolving with a 2D mask
figure, subplot(3,4,2),imshow(im, []), title('Original image'),... subplot(3,4,5),imshow(imGray), title('Gray image'),...
subplot(3,4,6),imshow(resizedIm),title('Resized image'),... subplot(3,4,7),imshow(uint8(smoothedImGray1D_hor)),title('Smoothed image'),...
subplot(3,4,9),imhist(imGray), title('Histogram of Original im.'), ... subplot(3,4,10),imhist(resizedIm),title('Histogram of resized im.'),... subplot(3,4,11),imhist(uint8(smoothedImGray1D_hor)),title('Histogram of smoothed image');
end
