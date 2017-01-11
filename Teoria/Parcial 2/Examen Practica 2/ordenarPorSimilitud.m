% Matheus Vitor Canhizares Diasç
% NIE : Y040368L  NIUB: 15225792
function [ neworden ] = ordenarPorSimilitud( distances,imageList,noImages )
 
neworden{noImages} = [];
% Para coger la primera imagen, cogeremos la que tenga menos distancia con
% las demás en promedio.

media = median(distances);

% Buscamos el menor promedio.
% Asignamos el primero como menor para comparar. Obtenemos el index de la
% imagen
min = media(1);
min_index = 1;
for I = 2:noImages
    if media(I) < min
        min = media(I);
        min_index = I;
    end
    
end

comparar = distances(min_index,:);
ordenado = sort(comparar);
display(ordenado);

% Ahora encontraremos de quien es cada valor  ordenado y pondremos su index
% tambien ordenado. Empezamos por el 2 porque el menor siempre será 0, ya
% es un valor que no cambia ya que sería la distancia entre la misma
% imagen.

newOrden(1) = min_index;
index = 2; % La posicion a la que se agregará la siguiente imagen.
% D recogerá la distancias del array ordenado.
                   % y comparará con los valores del array distances para
                   % encontrar su index correspondiente.
for D = 2:noImages % Empezamos en 2, porque el 1 es el valor 0.
    for J = 1:noImages
        if (ordenado(D) == distances(min_index,J))
            newOrden(index) = J;
            index = index + 1;
        end
        
    end
    
end

newSequence{noImages} = [];
for I= 1:noImages
    newSequence(I) = imageList(newOrden(I));
end

readAndVisualize(newSequence);
end

