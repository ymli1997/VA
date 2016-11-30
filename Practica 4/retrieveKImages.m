function [ ] = retrieveKImages(directory1,directory2,directory3,n)
    if ~exist('n','var'),
        n=9;
    end
    directorios={directory1,directory2,directory3};
    descriptores=getClassFeatures(directory1,directory2,directory3);
    size(descriptores,1);
    imagenes=cell(size(descriptores,1),1); 
    for i=1:size(descriptores,3)
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