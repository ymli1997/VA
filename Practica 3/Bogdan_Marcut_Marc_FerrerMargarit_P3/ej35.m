function [] = ej35()
%EJ35 Summary of this function goes here
%   Detailed explanation goes here
close all;
    srcPath=cd('toolbox');	
    vl_setup;
    cd(srcPath);
    close all;

    %%%a
    figure, subplot(1,1,1);
    [m,s]=showMatches('starbucks.jpg','starbucks6.jpg');
    title('starbucks vs starbucks6');
    
    %%%b 
    figure, subplot(2,2,1);
    [m,s]=showMatches('starbucks2.png','starbucks.jpg');
    title('starbucks2 vs starbucks');
    size(m)
    subplot(2,2,2);
    [m,s]=showMatches('starbucks2.png','starbucks6.jpg');
    title('starbucks2 vs starbucks6');
    size(m)
    subplot(2,2,3);
    [m,s]=showMatches('starbucks2.png','starbucks4.jpg');
    title('starbucks2 vs starbucks4');
    size(m)
    subplot(2,2,4);
    [m,s]=showMatches('starbucks2.png','starbucks5.png');
    title('starbucks2 vs starbucks5');
    size(m)
    
    figure, subplot(2,2,1);
    [m,s]=showMatches('starbucks4.jpg','starbucks.jpg');
    title('starbucks4 vs starbucks');
    size(m)
    subplot(2,2,2);
    [m,s]=showMatches('starbucks4.jpg','starbucks2.png');
    title('starbucks4 vs starbucks2');
    size(m)
    subplot(2,2,3);
    [m,s]=showMatches('starbucks4.jpg','starbucks5.png');
    title('starbucks4 vs starbucks5');
    size(m)
    subplot(2,2,4);
    [m,s]=showMatches('starbucks4.jpg','starbucks6.jpg');
    title('starbucks4 vs starbucks6');
    size(m)
    
    %%%c
    %In an image that does not contain the starbucks logo we could
    %identify some points that look similar but there would be only a few
    %of them and they would be dispersed
    
    %%%d - Based on our observations, rotating the image has a minimal
    %%%inpact on the amount of similar points. However, if we resize the
    %%%image we get a bigger difference and it depends if we are resizing
    %%%the image by increasing the size of decreasing it. If we increase
    %%%the size we obtain more matches than in the original image and if we
    %%%decrease the size we obtain less matches.
    %experiment 1 - rotating by 45 degrees
    im = imread('starbucks.jpg');
    im45 = imrotate(im, 45);
    imwrite(im45, 'starbucks45.jpg')
    figure, subplot(2,2,1);
    [m,s]=showMatches('starbucks45.jpg','starbucks.jpg');
    title('starbucks45 vs starbucks');
    subplot(2,2,2);
    [m,s]=showMatches('starbucks45.jpg','starbucks2.png');
    title('starbucks45 vs starbucks2');
    subplot(2,2,3);
    [m,s]=showMatches('starbucks45.jpg','starbucks5.png');
    title('starbucks45 vs starbucks5');
    subplot(2,2,4);
    [m,s]=showMatches('starbucks45.jpg','starbucks6.jpg');
    title('starbucks45 vs starbucks6');
    
    %experiment 2 - resizing the image to 0.5
    imH = imresize(im, 0.5);
    imwrite(imH, 'starbucksH.jpg')
    figure, subplot(2,2,1);
    [m,s]=showMatches('starbucksH.jpg','starbucks.jpg');
    title('starbucksResized0.5 vs starbucks');
    subplot(2,2,2);
    [m,s]=showMatches('starbucksH.jpg','starbucks2.png');
    title('starbucksResized0.5 vs starbucks2');
    subplot(2,2,3);
    [m,s]=showMatches('starbucksH.jpg','starbucks5.png');
    title('starbucksResized0.5 vs starbucks5');
    subplot(2,2,4);
    [m,s]=showMatches('starbucksH.jpg','starbucks6.jpg');
    title('starbucksResized0.5 vs starbucks6');
    
    %experiment 3 - resizing the image to 1.5
    imH = imresize(im, 1.5);
    imwrite(imH, 'starbucksH2.jpg')
    figure, subplot(2,2,1);
    [m,s]=showMatches('starbucksH2.jpg','starbucks.jpg');
    title('starbucksResized1.5 vs starbucks');
    subplot(2,2,2);
    [m,s]=showMatches('starbucksH2.jpg','starbucks2.png');
    title('starbucksResized1.5 vs starbucks2');
    subplot(2,2,3);
    [m,s]=showMatches('starbucksH2.jpg','starbucks5.png');
    title('starbucksResized1.5 vs starbucks5');
    subplot(2,2,4);
    [m,s]=showMatches('starbucksH2.jpg','starbucks6.jpg');
    title('starbucksResized1.5 vs starbucks6');
    
    %experiment 4 - resizing and rotating the image
    imHR = imresize(im45, 0.5);
    imwrite(imHR, 'starbucksHR.jpg')
    figure, subplot(2,2,1);
    [m,s]=showMatches('starbucksHR.jpg','starbucks.jpg');
    title('starbucksResizedT vs starbucks');
    subplot(2,2,2);
    [m,s]=showMatches('starbucksHR.jpg','starbucks2.png');
    title('starbucksResizedT vs starbucks2');
    subplot(2,2,3);
    [m,s]=showMatches('starbucksHR.jpg','starbucks5.png');
    title('starbucksResizedT vs starbucks5');
    subplot(2,2,4);
    [m,s]=showMatches('starbucksHR.jpg','starbucks6.jpg');
    title('starbucksResizedT vs starbucks6');
    
    figure, subplot(2,2,1);
    [m,s]=showMatches('starbucks.jpg','starbucks.jpg');
    title('starbucks vs starbucks');
    subplot(2,2,2);
    [m,s]=showMatches('starbucks.jpg','starbucks2.png');
    title('starbucks vs starbucks2');
    subplot(2,2,3);
    [m,s]=showMatches('starbucks.jpg','starbucks5.png');
    title('starbucks vs starbucks5');
    subplot(2,2,4);
    [m,s]=showMatches('starbucks.jpg','starbucks6.jpg');
    title('starbucks vs starbucks6');
    
    %%%e
    figure, subplot(1,1,1);
    [m,s]=showMatches('colaLogo.jpg','colaBottle.jpg');
    title('colaLogo vs colaBottle');
    
end