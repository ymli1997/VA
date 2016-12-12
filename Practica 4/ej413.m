function [  ] = ej413(  )
%EJ413 Summary of this function goes here
%   Detailed explanation goes here
    dir1 = 'texturesimages/buildings/';
    dir2 = 'texturesimages/forest/';
    dir3 = 'texturesimages/sunset/';
    extension = '*.jpg';
    func = @getFeatures;
    
    descriptorMatrix1 = getClassFeatures(dir1, extension, func);
    descriptorMatrix2 = getClassFeatures(dir2, extension, func);
    descriptorMatrix3 = getClassFeatures(dir3, extension, func);

end

