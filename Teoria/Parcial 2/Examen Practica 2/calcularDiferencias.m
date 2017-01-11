% Matheus Vitor Canhizares Diasç
% NIE : Y040368L  NIUB: 15225792
function [ distances ] = calcularDiferencias( imageList, noImages )
    distances = [];
    for I = 1:noImages
        for J = 1:noImages
            if I ~= J
                [matches, scores, fm, fs] = computeMatches(char(imageList(I)),char(imageList(J)));
                media = median(median(matches));
                distances(I,J) = media;
            end
        end
   
    end
    

end

