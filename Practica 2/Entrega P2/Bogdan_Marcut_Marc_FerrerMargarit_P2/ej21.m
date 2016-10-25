function [] = ej21() % file is the name of the image
%ej21 This function illustrates the effect of resizing and smoothing with different 1D and 2D masks

%%%a
%The slightly histogram changes when we resize the image. We noticed a very
%big change in the histogram when we resized the image by decreasing its
%size and we also lose a lot of detail in doing so.

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
%%%b -- we need around 100 iterations in order to remove the line
for i = 1:100
    smoothedImGray1D_hor=imfilter(double(smoothedImGray1D_hor),h_hor);
end

%Look for alternative of the mean filter to remove the line in the middle.
%%%c -- the vertical mask does not remove the line in the middle but the
%%%horizontal mask does
v_ver = [1; 1; 1; 1; 1;];
v_ver = v_ver/sum(v_ver);
smoothedImGray1D_ver=imfilter(double(imGray),v_ver);

% define the 2D mask, shell we normalize it?
% smoothedImGray2D = … %convolving with a 2D mask
figure, subplot(3,4,2),imshow(im, []), title('Original image'),...
subplot(3,4,5),imshow(imGray), title('Gray image'),...
subplot(3,4,6),imshow(resizedIm),title('Resized image'),...
subplot(3,4,7),imshow(uint8(smoothedImGray1D_ver)),title('Smoothed image'),...
subplot(3,4,9),imhist(imGray), title('Histogram of Original im.'), ...
subplot(3,4,10),imhist(resizedIm),title('Histogram of resized im.'),...
subplot(3,4,11),imhist(uint8(smoothedImGray1D_ver)),title('Histogram of smoothed image');

%%%d -- If we change the size of the filtering array, the smoothering will be
%%%more dispersed and it would not look as smooth
file2='buffet.jpg';
im=imread(file2);
imGray2=rgb2gray(im);
resizedIm=imresize(imGray2, 2);
h_hor=[1 1 1 1 1]; % 1D mask defined
h_hor2=[1 1]; % 1D mask defined
h_hor3=[1 1 1]; % 1D mask defined
h_hor=h_hor/sum(h_hor); % normalization
smoothedImGray1D_hor=imfilter(double(imGray2),h_hor);
for i = 1:100
    smoothedImGray1D_hor=imfilter(double(smoothedImGray1D_hor),h_hor);
end
v_ver = v_ver/sum(v_ver);
smoothedImGray1D_ver=imfilter(double(imGray2),v_ver);

figure, subplot(3,4,2),imshow(im, []), title('Original image'),...
subplot(3,4,5),imshow(imGray2), title('Gray image'),...
subplot(3,4,6),imshow(resizedIm),title('Resized image'),...
subplot(3,4,7),imshow(uint8(smoothedImGray1D_hor)),title('Smoothed image'),...
subplot(3,4,9),imhist(imGray2), title('Histogram of Original im.'), ...
subplot(3,4,10),imhist(resizedIm),title('Histogram of resized im.'),...
subplot(3,4,11),imhist(uint8(smoothedImGray1D_hor)),title('Histogram of smoothed image');

%%%e -- the 2D mask makes the smoothering look more uniform and the
%%%original image is still recognizable
Mask = [[1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1];];
Mask = Mask/sum(sum(Mask));
smoothedImGray2D=imfilter(double(imGray), Mask);
figure, imshow(smoothedImGray2D, []), title('2D Mask'),...
    

%%%f -- we can apply a filter to a colored image but we have to convert it
%%%to uint8 first. We cannot visualize the histogram
smoothed=imfilter(uint8(im),h_hor);
figure, imshow(smoothed, []), title('Color Image');
%figure, imhist(uint8(smoothed)), title('Histogram of Colored Smoothed');


%%%g -- a this smoothering is more horizontal oriented and distorts the
%%%image more
% -- b this smothering is more uniform
a = [[1 1 1 1 1], [1, 1, 1, 1, 1]];
a = a/sum(sum(a));
b = [[1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]];
b = b/sum(sum(b));
smoothedA=imfilter(double(imGray),a);
smoothedB=imfilter(double(imGray),b);
figure, imshow(smoothedA, []), title('g - a');
figure, imshow(smoothedB, []), title('g - b');

%%%h -- if we don't normalize the smoothering, the image will not be
%%%smoothered evenly
file2='buffet.jpg';
im=imread(file2);
imGray2=rgb2gray(im);
h1 = [1 1 1 1 1];
smoothedNotNormalized=imfilter(double(imGray2),h1);
for i = 1:100
    smoothedNotNormalized=imfilter(double(smoothedNotNormalized),h1);
end
figure, imshow(smoothedNotNormalized, []), title('h');

%%%i
file3='casa.jpg';
im=imread(file3);
imGray3=rgb2gray(im);
file4='dog.jpg';
im=imread(file4);
imGray4=rgb2gray(im);
file5='street.png';
im=imread(file5);
imGray5=rgb2gray(im);
h3 =[1 1 1 1 1];
h3 = h3/sum(h3);
smoothed1=imfilter(double(imGray3),h3);
smoothed2=imfilter(double(imGray4),h3);
smoothed3=imfilter(double(imGray5),h3);
figure, imshow(smoothed1, []), title('i - 1');
figure, imshow(smoothed2, []), title('i - 2');
figure, imshow(smoothed3, []), title('i - 3');

