function [totalerr] = ex52(  )
close all;
totalerr = [];
[outClass, X, Y, selFeatures, error, predErr] = haarFeatureDemo(2);
totalerr = [totalerr error(end)];
for i=1:2
    [outClass, X2, Y2, selFeatures, error, predErr] = haarFeatureDemo(2,X,Y,outClass);
    totalerr = [totalerr error(end)];
end
figure;
hold;
plot(totalerr);
title('Error in cascade');
end

