function [totalerr1, totalerr2] = ej52b(  )
close all;
%Only one level and three features
totalerr1 = [];
[outClass, X, Y, selFeatures, error, predErr] = haarFeatureDemo(3);
totalerr1 = [totalerr1 error(end)];

%Three levels and one feature
totalerr2 = [];
[outClass, X, Y, selFeatures, error, predErr] = haarFeatureDemo(1);
totalerr2 = [totalerr2 error(end)];
for i=1:2
    [outClass, X2, Y2, selFeatures, error, predErr] = haarFeatureDemo(1,X,Y,outClass);
    totalerr2 = [totalerr2 error(end)];
end

disp('Error in cascade for 3 weaks classifiers and 1 level');
disp(totalerr1);
disp('Error in cascade for 1 weak classifier and 3 levels');
disp(totalerr2(end));

