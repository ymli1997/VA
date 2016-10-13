function ej13()
%EJ13 Summary of this function goes here
%   Detailed explanation goes here

%a, b
image = imread('images_P1/car_gray.jpg');
th = 130
bw = double(image>th);

figure, subplot(2,1,1), imshow(image)
subplot(2,1,2), imshow(bw)
%If we use a different umbral value, the image wont have the same balance
%between white and black pixels because we are using the umbral value to
%decide which of the grey pixels are going to be completly white or black.
%That means that in most the cases, the best umbral value is the average
%between the values of all pixels

%c
newImg = cat(2, image, 255 * bw)
figure, imshow(newImg);

imwrite(newImg, 'car_binary.jpg')

%d
binaryImage = imbinarize(bw, th/255)
figure, imshow(binaryImage);
end
