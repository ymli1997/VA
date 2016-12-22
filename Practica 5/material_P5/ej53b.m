function [] = ej53b()
addpath('ViolaJones','ViolaJones/SubFunctions');
close all;
figure;
im1 = imread('images/natural.jpg');
im2 = imread('images/landscape.jpg');
im3 = imread('images/room.jpg');
subplot(2,3,1);
imshow(im1);
subplot(2,3,4);
showIntegralImage(im1);
subplot(2,3,2);
imshow(im2);
subplot(2,3,5);
showIntegralImage(im2);
subplot(2,3,3);
imshow(im3);
subplot(2,3,6);
showIntegralImage(im3);
end

function showIntegralImage(image)
    defaultoptions.Resize = false;
    intImageStruct = GetIntegralImages(image,defaultoptions);
    imagesc(intImageStruct.ii);colormap(jet);
end


