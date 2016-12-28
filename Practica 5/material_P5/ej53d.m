function [] = ej53d
close all;
addpath('ViolaJones','ViolaJones/SubFunctions');
ConvertHaarcasadeXMLOpenCV('ViolaJones/HaarCascades/haarcascade_frontalface_alt.xml');
I1 = imread('images/f1.jpg');
I2 = imread('images/f2.jpg');
I3 = imread('images/f3.jpg');
I4 = imread('images/f4.jpg');
I5 = imread('images/f5.jpg');
I6 = imread('images/f6.jpg');
I7 = imread('images/f7.jpg');
I8 = imread('images/f8.jpg');
I9 = imread('images/f9.png');
I10 = imread('images/f10.jpg');

figure;
subplot(2,5,1); showResult(I1);
subplot(2,5,2); showResult(I2);
subplot(2,5,3); showResult(I3);
subplot(2,5,4); showResult(I4);
subplot(2,5,5); showResult(I5);
subplot(2,5,6); showResult(I6);
subplot(2,5,7); showResult(I7);
subplot(2,5,8); showResult(I8);
subplot(2,5,9); showResult(I9);
subplot(2,5,10); showResult(I10);
end
function showResult(I)
%Options.Resize=false;
FilenameHaarcasade = 'ViolaJones/HaarCascades/haarcascade_frontalface_alt.mat';
Objects=ObjectDetection(I,FilenameHaarcasade);
ShowDetectionResult(I,Objects);
end
