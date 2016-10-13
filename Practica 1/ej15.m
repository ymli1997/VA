function [ ] = ej15(file)
%This function reads a color image and displays its channels
im=imread(file);
imR= im(:,:,1);  % define the Red channel
imG= im(:,:,2); % define the Green channel
imB= im(:,:,3); % define the Blue channel

figure, subplot(2,3,2), imshow(im),...
 subplot(2,3,4), imshow(imR),...
 subplot(2,3,5), imshow(imG),...
 subplot(2,3,6), imshow(imB);
 
%im(:,:,1) = imG;
%im(:,:,2) = imR;
figure, imshow(im);
%If we exchange the channels of the image, the colors of the image would
%also exchange

im(:,:,1) = imR*0
figure, imshow(imR*0);
figure, imshow(im);
%If we multiply one of the channels by 0, the color intensity of the
%channel would be at its brightest value and the color of the entire image
%would change
end