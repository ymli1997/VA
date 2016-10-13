function ej16()
%EJ16 Summary of this function goes here
%   Detailed explanation goes here

%a
img1 = zeros(200,200);
img1(100:200,:) = 1;
img2 = zeros(200,200);
img2(:,100:200) = 1;
img3 = zeros(200,200);
img3(1:100,1:100) = 1;

%figure, imshow(img1);
%figure, imshow(img2);
%figure, imshow(img3);

%b
img = cat(3, img2, img1, img3)

figure, imshow(img);

%c
imwrite(img, '3channels.jpg')

%d
img=imread('images_P1/altalena.png');

%e
imgR = img(:,:,1);
imgG = img(:,:,2);
imgB = img(:,:,3);

%f
figure, s1 = subplot(2,3,2), imshow(img),...
 s2 = subplot(2,3,4), imshow(imgR),...
 s3 = subplot(2,3,5), imshow(imgG),...
 s4 = subplot(2,3,6), imshow(imgB);

title(s1, 'Original');
title(s2, 'Red Channel');
title(s3, 'Green Channel');
title(s4, 'Blue Channel');

%g
imageRe = cat(3, imgR, imgG, imgB);
figure, imshow(imageRe)
imageRe = cat(3, imgG, imgR, imgB);
figure, imshow(imageRe)
imageRe = cat(3, imgR, imgB, imgG);
figure, imshow(imageRe)
%If we mix the channels in a different order, we'll get a matrix with exchanged
%RGB channels and we will get a different result

end

