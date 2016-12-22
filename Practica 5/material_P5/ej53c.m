function [] = ej53c
close all;
%   % Convert an OpenCV classifier XML file to a Matlab file
ConvertHaarcasadeXMLOpenCV('ViolaJones/HaarCascades/haarcascade_frontalface_alt.xml');
%   % Detect Faces
figure;
subplot(1,2,1);
Options.Resize=false;
I = imread('Images/testFaces1.jpg');
FilenameHaarcasade = 'ViolaJones/HaarCascades/haarcascade_frontalface_alt.mat';
Objects=ObjectDetection(I,FilenameHaarcasade);
ShowDetectionResult(I,Objects);
%   % Convert an OpenCV classifier XML file to a Matlab file
ConvertHaarcasadeXMLOpenCV('ViolaJones/HaarCascades/haarcascade_frontalface_alt.xml');
subplot(1,2,2);
I = imread('Images/testFaces2.jpg');
FilenameHaarcasade = 'ViolaJones/HaarCascades/haarcascade_frontalface_alt.mat';
Objects=ObjectDetection(I,FilenameHaarcasade);
ShowDetectionResult(I,Objects);
end

