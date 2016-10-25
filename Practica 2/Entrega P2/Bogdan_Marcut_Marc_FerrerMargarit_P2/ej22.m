function [] = ej22()
%EJ22 Summary of this function goes here
%   Detailed explanation goes here
%%%a - We consider that sigma's values should be 1 in order to smoothen all
%%%the details properly if we repeat the smoothening 100 times. If sigma is
%%%between 0 and 0.5, the smoothening is reduced considerably and it will
%%%barely have any effect on the image
close all;
file='face.png';
im=imread(file);
imGray=rgb2gray(im);

hMedian = fspecial('average',[3,3]);
h = fspecial('gaussian',[3,3], 0.5);
gaussianImg = imfilter(im, h);
medianImg = imfilter(im, hMedian);
for i = 1:100
    gaussianImg = imfilter(gaussianImg, h);
    medianImg = imfilter(medianImg, hMedian);
end

figure, imshow(gaussianImg, []), title('Gaussian');
figure, imshow(medianImg, []), title('Median');

%%%b
h2 = fspecial('gaussian',[3,3], 1);
img = imfilter(im, h2);
figure, imshow(img-im, []), title('B');

end

