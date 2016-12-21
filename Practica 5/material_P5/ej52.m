function ej52()
%A
%train(3,2);
%B
train(1,2);

end
function [ output_args ] = train( numLevel, numFeatures )
error = [];
    [outClass, X, Y] = haarFeatureDemo(numFeatures);
    error = [error sum(Y~=outClass)/length(Y)];
    for i=1:numLevel
        outClass = haarFeatureDemo(numFeatures, X, Y, outClass);
        error = [error sum(Y~=outClass)/length(Y)];
    end
    error
end

