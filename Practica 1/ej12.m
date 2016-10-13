function ej12()
%%%a
image = imread('images_P1/car_lowContrast.jpg')
figure, imshow(image)
imhist(image)

brightestPixel = max(max(image))
imageBright = image + (255-brightestPixel)
figure, imshow(imageBright)
imhist(imageBright)

imwrite(imageBright, 'car_bright.jpg')

%The histogram are the same expect for the fact that the brighter image's
%histogram moved all the way to the right


%%%b
darkPixel = min(min(image))
imageDark = image - (darkPixel)
figure, imshow(imageDark)
imhist(imageDark)

imwrite(imageDark, 'car_dark.jpg')

%The histogram are the same expect for the fact that the brighter image's
%histogram moved all the way to the left


%%%c
imageDouble = im2double(image)
figure, imshow(imageDouble)
minValue = min(min(imageDouble))
maxValue = max(max(imageDouble))
imageContrast = (imageDouble - minValue)/(maxValue - minValue)
figure, imshow(imageContrast)

imhist(imageContrast)

imwrite(imageContrast, 'car_contrast.jpg')
%The histogram of the restored contrast picture shows that the colors
%values have spread on the X axis

end

