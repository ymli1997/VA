function [ matches, scores, fm, fs] = computeMatches( im1, im2 )
%COMPUTEMATCHES compute matching points between the im1 and im2
%   Use SIFT to extract keypoints and their descriptors and search matching
%   points between both images.

    % Load the images
    im1Img=imread(im1);
    im2Img=imread(im2);

    % Extract the features
    [fm,dm] = vl_sift(im2single(rgb2gray(im1Img))) ;
    [fs,ds] = vl_sift(im2single(rgb2gray(im2Img))) ;

    % Match descriptors
    [matches, scores] = vl_ubcmatch(dm,ds) ;

    % Order the matches by score, from most similar to less.
    [~, perm] = sort(scores, 'descend') ;
    matches = matches(:, perm) ;
    scores  = scores(perm) ;

    %keep 60% of the most similar matches
    matches = matches(:,1:uint8(0.6*size(matches,2)));
    figure;
    plotmatches(rgb2gray(im1Img),rgb2gray(im2Img),fm(1:2,:),fs(1:2,:),matches,'Stacking', 'v');
   
end

