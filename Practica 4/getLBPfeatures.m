function [ a ] = getLBPfeatures( img )
%GETLBPFEATURES Summary of this function goes here
%   Detailed explanation goes here
    srcPath=cd('toolbox');	
    vl_setup;
    cd(srcPath);

    im = imread(img);
    im = single(rgb2gray(im));
    F = vl_lbp(im, min(size(im)));
    a = reshape(mean(F, 3), 1, []);
    size(a(1))
end

