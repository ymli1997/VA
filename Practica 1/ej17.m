function ej17()
%EJ17 Summary of this function goes here
%   Detailed explanation goes here

%a
img=imread('images_P1/logo.png');
imgR = img(:,:,1);
imgG = img(:,:,2);
imgB = img(:,:,3);

%b, c
imgR(find(imgR == 6)) = 255;
imgG(find(imgG == 118)) = 0;
imgB(find(imgB == 85)) = 0;
img2 = cat(3, imgR, imgG, imgB);

%d
figure, subplot(1,2,1), imshow(img),
subplot(1,2,2), imshow(img2)


end

