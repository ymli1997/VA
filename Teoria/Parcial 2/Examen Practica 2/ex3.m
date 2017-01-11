%EJERCICIO 3
%Apartado 1
img = imread('llanes_1.jpg');
img = rgb2gray(img);
integralImage(img);
%Apartado 2
C = cov(double(img));
[vec val] = eig(C);

