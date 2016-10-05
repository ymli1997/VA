function ej18()
%ej18 Summary of this function goes here
%   Detailed explanation goes here
%a
im = imread('images_P1/coat.png');
im1 = imread('images_P1/model.png');
%Size of the first image
size(im)
%Size of the second image
size(im1)
%The images have 3 dimensions: height, width and number of channels

%b
im_grey = rgb2gray(im);

%c
im_bin=imbinarize(im_grey);
im_bin2 =imcomplement(im_bin);
im_bin2 = uint8(im_bin2);
imshow(im_bin2)

%d
r = im(:,:,1);
g = im(:,:,2);
b = im(:,:,3);
r1 = im1(:,:,1).*im_bin2+r;
g1 = im1(:,:,2).*im_bin2+g;
b1 = im1(:,:,3).*im_bin2+b;
A = cat(3,r1,g1,b1);
imshow(A);
imwrite(A,'model_coat.jpg');

%f
tex = imread('images_P1/texture.png');
size(tex)

%g
mask1 = uint8(im_bin).*tex(:,:,1);
mask2 = uint8(im_bin).*tex(:,:,2);
mask3 = uint8(im_bin).*tex(:,:,3);
r1 = im1(:,:,1).*im_bin2+mask1;
g1 = im1(:,:,2).*im_bin2+mask2;
b1 = im1(:,:,3).*im_bin2+mask3;
A = cat(3,r1,g1,b1);
imshow(A);

%h
imwrite(A,'model_coat_texture.jpg');
end

