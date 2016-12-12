function [ ] = test(directory1,directory2,directory3,n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    if ~exist('n','var'),
        n=9;
    end
    directorios={directory1,directory2,directory3};
    extension = '*.jpg';
    func = @getFeatures;
    
    descriptores(:,:,1)=getClassFeatures(directory1,extension,func);
    descriptores(:,:,2)=getClassFeatures(directory2,extension,func);
    descriptores(:,:,3)=getClassFeatures(directory3,extension,func);

    
    size(descriptores,1);
    imagenes = cell(size(descriptores,1),1);
    size(descriptores,1)
    imagenes
    
    for i=1:size(descriptores,3);
        files=dir(fullfile(directorios{i},'*.jpg')); 
        for j=1:size(descriptores,1)
            im=(fullfile(directorios{i}, files(j).name));
            imagenes{j,1}=im;
        end
        [numero,distancia]=knnsearch(descriptores(:,:,i),descriptores(:,:,i),'k',n+1,'distance','euclidean');
        suma=sum(distancia,2);
        [value,indice]=min(suma);
        figure;
        subplot(1,n+1,1);
        imshow(imread(imagenes{numero(indice,1)}));
        title('Image Query');
        for k=2:n+1
            subplot(1,n+1,k);
            imshow(imread(imagenes{numero(indice,k)}));
        end
    end
end