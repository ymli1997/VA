function [ output_args ] = ej53( input_args )
%EJ53 Summary of this function goes here
%   Detailed explanation goes here
    addpath('ViolaJones','ViolaJones/SubFunctions');
    outSize = [20, 20];
    [X,Y] = getDataBase(outSize,16);

    model=uint8(round(reshape(mean(X(Y==1,:),1),outSize)));
    imshow(model);
    
    rectNeg = [3 7 14 4];
    rectPos = [3 9 14 2];

    rectangle('position',rectNeg,'facecolor','k');
    rectangle('position',rectPos,'facecolor','w');

end