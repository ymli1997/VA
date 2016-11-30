function [  ] = visualizeFeatures(directory1,directory2,directory3)
    descriptores=getClassFeatures(directory1,directory2,directory3);
    tipo={'g*','r+','bo'};
    for i=1:size(descriptores,3)
        plot(descriptores(:,25,i),tipo{i},'MarkerSize',5);
        hold on;
        plot(descriptores(:,41,i),tipo{i},'MarkerSize',5);
        hold on;
    end
end