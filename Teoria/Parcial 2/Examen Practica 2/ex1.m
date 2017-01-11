% Matheus Vitor Canhizares Diasç
% NIE : Y040368L  NIUB: 15225792
srcPath=cd('toolbox');
vl_setup;
cd(srcPath);
close all;
% Apartado 1.
imgList = constructList('llanes_',3,'jpg');
%Ok
% Apartado 2.
readAndVisualize(imgList);
%ok
% Apartado 3.
distances = calcularDiferencias(imgList,3);
newOrden = ordenarPorSimilitud(distances,imgList,3);
