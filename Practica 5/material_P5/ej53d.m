function [] = ej53d
addpath('ViolaJones','ViolaJones/SubFunctions');
close all;
I1 = imread('images/f1.jpg');
I2 = imread('images/f2.jpg');
I3 = imread('images/f3.jpg');
I4 = imread('images/f4.jpg');
I5 = imread('images/f5.jpg');
figure;
subplot(5,2,1); showResult(I1);
subplot(5,2,2); showResult(I2);
subplot(5,2,3); showResult(I3);
subplot(5,2,4); showResult(I4);
subplot(5,2,5); showResult(I5);

end
function showResult(I)
ConvertHaarcasadeXMLOpenCV('ViolaJones/HaarCascades/haarcascade_frontalface_alt.xml');
%Options.Resize=false;
FilenameHaarcasade = 'ViolaJones/HaarCascades/haarcascade_frontalface_alt.mat';
Objects=ObjectDetection(I,FilenameHaarcasade);
ShowDetectionResult(I,Objects);
end
