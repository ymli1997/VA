function [ matrix ] = getClassFeatures( directory , extension, descriptorFuncion )
    files = dir(fullfile(directory, extension));
    for i=1:size(files, 1);
        im = fullfile(directory, files(i).name);
        matrix(i,:) = descriptorFuncion(im);
    end
    %descriptor_matrix 
    size(matrix)
end
