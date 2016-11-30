function [ a ] = getFeatures( img )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    im=imread(img);
    grayIm=rgb2gray(im);
    F=makeLMfilters();
    for i=1:size(F,3);
        im_2=conv2(double(grayIm),double(F(:,:,i)));
        a(1,i)=mean(mean(im_2));
        subplot(8,6,i),imagesc(im_2), colorbar;
    end
end