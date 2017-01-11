% Matheus Vitor Canhizares Diasç
% NIE : Y040368L  NIUB: 15225792
function [ imageList ] = constructList( nombre,num, extension )
    imageList{num} = [];
for i = 1:num
    imageList{i} = strcat(nombre,num2str(i),'.',extension);
end

end

