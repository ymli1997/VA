function ej11()
%%%a
im = imread('images_P1/lena.jpg');
figure, imshow(im)
[x,y,z] = size(im) % Image size
% The image has 3 channels
im2 = rgb2gray(im);
figure, imshow(im)

%%%b
[x,y,z] = size(im)  
%The size of the image if found in the values of x and y (225x225)
x10 = round(x*0.1)
y10 = round(y*0.1)

%%%c
im2 = padarray(im, [round(x10/2),round(y10/2)]);
size(im2)
%The size of the black image should be the original size plus the 10% which
%is 225+24 x 225+24 or 249x249

%%%d
figure, imshow(im2)
imwrite(im2, 'lena_frame.jpg')

%%%e
redImage = uint8(im2);
chR = redImage(:,:,1);
for i = 1:round(x10/2)
    chR(i,:) = 255;
    chR(end-i+1,:) = 255;
    chR(:,i) = 255;
    chR(:,end-i+1) = 255;
end
redImage(:,:,1) = chR;

imwrite(im2, 'lena_red_frame.jpg')
figure, imshow(redImage)

%%%f
[nrows,ncols,~] = size(im);

%%%g
aux = uint8(zeros(x10, ncols, 3));
im = vertcat(aux, im);

figure, imshow(im)


%%%h
im = vertcat(im, aux);
[nrows,ncols,~] = size(im);
aux2 = uint8(zeros(nrows, x10, 3));
im = horzcat(aux2, im);
im = horzcat(im, aux2);

figure, imshow(im)

end