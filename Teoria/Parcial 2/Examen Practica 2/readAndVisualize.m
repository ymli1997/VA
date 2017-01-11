% Matheus Vitor Canhizares Diasç
% NIE : Y040368L  NIUB: 15225792
function readAndVisualize( imageList )

tam = size(imageList);
numImg = tam(2);

for I = 1:numImg
    temp = imread(char(imageList(I)));
    figure();
    imshow(temp);
end


end

