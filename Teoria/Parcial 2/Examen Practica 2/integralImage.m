function [ ii ] = integralImage(img)
    if size(img,3)== 1
        ii = cumsum(cumsum(double(img)),2);
        imshow(ii, []);
    end

