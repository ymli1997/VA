function [ matriz ] = getClassFeatures( dir1,dir2,dir3 )
    directorios={dir1,dir2,dir3};
    for i=1:size(directorios,2)
        files=dir(fullfile(directorios{i},'*.jpg'));
        for j=1:size(files,1)
            im=(fullfile(directorios{i}, files(j).name));
            v(j,:)=getFeatures(im);
        end
        matriz(:,:,i)= v;
    end
    %descriptor_matrix 
    size(matriz,1)
end
