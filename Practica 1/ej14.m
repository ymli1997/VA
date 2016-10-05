function ej14()
%EJ14 Summary of this function goes here
%   Detailed explanation goes here

%a
image = imread('images_P1/circles.bmp');
imageGray = rgb2gray(image);
imtool(imageGray);

%b
img1 = double(image==0);
img2 = double(image==127);
img3 = double(image==195);

figure, subplot(3,1,1), imshow(img1);
subplot(3,1,2), imshow(img2);
subplot(3,1,3), imshow(img3);

%c
img4 = 255*uint8(img1==0) + 0*uint8(img1==1);
img5 = 255*uint8(img2==0) + 128*uint8(img2==1);
img6 = 255*uint8(img3==0) + 195*uint8(img3==1);

%d
figure, subplot(1,3,1), imshow(img4);
subplot(1,3,2), imshow(img5);
subplot(1,3,3), imshow(img6);

end

