function [  ] = ej22(  )
close all;

imoriginal1 = imread('face.png');


im1 = rgb2gray(imoriginal1);


h2 = [[1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]; [1 1 1 1 1]];
h2 = h2/sum(h2);

imf1 = imfilter(im1, h2);
immed1 = medfilt2(im1, [5 5]);

figure; 
subplot(2,3,1), imshow(imf1, []), title('Original mask');
subplot(2,3,2), imshow(immed1,[]), title('Median filter 5x5');
subplot(2,3,3), imhist(imf1);
subplot(2,3,4), imhist(immed1);
subplot(2,3,5), imshow(255-(im1-imf1));
subplot(2,3,6), imshow(255-(im1-immed1));

end

