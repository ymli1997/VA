function [ ] = retrieveKImages(n)
    close all;
    if ~exist('n','var'),
        n=9;
    end
    
    imageDir = 'texturesimages/forest/forest_14.jpg';
    directorios = {'texturesimages/buildings/','texturesimages/forest/','texturesimages/sunset/'};
    extension = '*.jpg';
    func = @getFeatures;
    
    for i=1:3;
        descriptor = getClassFeatures(directorios{i},extension,func);
        imagenes = cell(size(descriptor,1),1); 
        files = dir(fullfile(directorios{i},'*.jpg')); 

        newFeatures = zeros(size(descriptor(1)));
        for j = 1:size(descriptor,1);
            im = imread((fullfile(directorios{i}, files(j).name)));
            
            imagenes{j,1} = im;
            newFeatures(j,1:3) = [mean(mean(im(:,:,1))) mean(mean(im(:,:,2))) mean(mean(im(:,:,3)))];
        end
        descriptor = [descriptor newFeatures];
        
        im = imread(imageDir);
        imFeatures = [func(imageDir) mean(mean(im(:,:,1))) mean(mean(im(:,:,2))) mean(mean(im(:,:,3)))];
        [numero, distancia] = knnsearch(descriptor, imFeatures , 'K', n+1);

        figure
        for k=1:n+1;
            subplot(1,n+1,k);
            if k == 1;
                imshow(im), title('Image Query');
            else
                imshow(imagenes{numero(k)}), title('Retrieved image');                
            end
        end
    end
    
end