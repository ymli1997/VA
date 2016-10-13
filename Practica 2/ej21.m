function [] = ej21() % file is the name of the image
%ej21 This function illustrates the effect of resizing and smoothing with different 1D and 2D masks
close all; 
file='face.png';
im=imread(file);
imGray=rgb2gray(im);
resizedIm=imresize(imGray, 2);
h_hor=[1 1 1 1 1]; % 1D mask defined 
h_hor=h_hor/sum(h_hor); % normalization
% define a vertical mask and apply it on the gray image.
smoothedImGray1D_hor=imfilter(double(imGray),h_hor);
% Repeat the smoothing several times in order to remove the line in the middle.
%Look for alternative of the mean filter to remove the line in the middle.
for i = 1:100
    smoothedImGray1D_hor = imfilter(smoothedImGray1D_hor,h_hor);
end
% define the 2D mask, shell we normalize it?
% smoothedImGray2D = ... %convolving with a 2D mask
mask_ver = [1; 1; 1; 1; 1;];
mask_ver = mask_ver / sum(mask_ver);
smoothedGray1D_ver = imfilter(imGray, mask_ver);
for i = 1:100
    smoothedGray1D_ver = imfilter(smoothedGray1D_ver, mask_ver);
end
figure, subplot(3,5,2),imshow(im, []), title('Original image'),... 
subplot(3,5,5),imshow(imGray), title('Gray image'),...
subplot(3,5,6),imshow(resizedIm),title('Resized image'),... 
subplot(3,5,7),imshow(uint8(smoothedImGray1D_hor)),title('Smoothed image'),...
subplot(3,5,9),imhist(imGray), title('Histogram of Original im.'), ... 
subplot(3,5,10),imhist(resizedIm),title('Histogram of resized im.'),... 
subplot(3,5,11),imhist(uint8(smoothedImGray1D_hor)),title('Histogram of smoothed image'),...
subplot(3,5,12),imshow(uint8(smoothedGray1D_ver)),title('Vertical Mask'),...
subplot(3,5,13),imhist(uint8(smoothedGray1D_ver)),title('Histogram vertical');
end
