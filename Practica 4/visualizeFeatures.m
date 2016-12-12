function [  ] = visualizeFeatures( )
    dir = {'texturesimages/buildings/','texturesimages/forest/','texturesimages/sunset/'};
    extension = '*.jpg';
    func = @getFeatures;
    for i = 1:3;
        descriptor = getClassFeatures(dir{i}, extension, func);
        tipo={'g*','r+','bo'};
        plot(descriptor(:,41), tipo{i}, 'MarkerSize', 5);
        hold on;
        plot(descriptor(:,25), tipo{i}, 'MarkerSize', 5);
        hold on;
    end
end