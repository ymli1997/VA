function [] = ej24()
%EJ24 Summary of this function goes here
%   Detailed explanation goes here
    einstein = imread('einstein.jpg');
    monroe = imread('monroe.jpg');
    highpass = einstein - imgaussfilt(einstein, 10);
    lowpass = imgaussfilt(monroe,6);
    im = lowpass + highpass;
    figure;
    subplot(3,3,1),imshow(monroe),...
    subplot(3,3,2),imshow(einstein),...
    subplot(3,3,3),imshow(im),...
    subplot(3,3,4),imshow(im);
end
