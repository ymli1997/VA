function ej52()
%A
train(3,2);
%B
train(1,3);

end
function train( numLevel, numFeatures )
close all;
totalerr = [];
[outClass, X, Y, selFeatures, error, predErr] = haarFeatureDemo(numFeatures);
totalerr = [totalerr error(end)];
    for i=1:numLevel,
        [outClass, X2, Y2, selFeatures, error, predErr] = haarFeatureDemo(numFeatures,X,Y,outClass);
        totalerr = [totalerr error(end)];
    end
figure;
hold;
plot(totalerr);
title('Error in cascade');
end