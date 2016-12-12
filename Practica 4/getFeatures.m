function [ textureDescriptor ] = getFeatures( image )
    im = imread(image);
    grayIm = rgb2gray(im);
    F = makeLMfilters();
    textureDescriptor = size(F,3);
    for i=1:size(F,3);
        im_2 = conv2(single(grayIm), single(F(:,:,i)), 'same');
        textureDescriptor(1,i) = mean(mean(im_2));
        %subplot(8,6,i),imagesc(im_2);
    end
end