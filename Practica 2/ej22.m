function [  ] = ej22(  )
close all;

imoriginal1 = imread('./images/cruis.jpg');
imoriginal2 = imread('./images/halloween.jpg');

im1 = rgb2gray(imoriginal1);
im2 = rgb2gray(imoriginal2);

h2 = [[1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]];
h2 = h2/sum(h2);

imf1 = imfilter(im1, h2);
immed1 = medfilt2(im1, [5 5]);
imf2 = imfilter(im2, h2);
immed2 = medfilt2(im2, [10 10]);

figure; 
subplot(4,2,1), imshow(imf1, []), title('Original mask');
subplot(4,2,2), imshow(immed1,[]), title('Median filter 5x5');
subplot(4,2,3), imhist(imf1);
subplot(4,2,4), imhist(immed1);
subplot(4,2,5), imshow(imf2, []), title('Original mask');
subplot(4,2,6), imshow(immed2,[]), title('Median filter 10x10');
subplot(4,2,7), imhist(imf2);
subplot(4,2,8), imhist(immed2);

figure;
subplot(2,2,1), imshow(255-(im1-imf1));
subplot(2,2,2), imshow(255-(im1-immed1));
subplot(2,2,3), imshow(255-(im2-imf2));
subplot(2,2,4), imshow(255-(im2-immed2));
end

