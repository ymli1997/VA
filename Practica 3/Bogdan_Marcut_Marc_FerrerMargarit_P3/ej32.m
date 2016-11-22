function ej32()
%ej32 Summary of this function goes here
%   Detailed explanation goes here
%a
c1 = gaussRandom([1,2], 0.1, 100);
c2 = gaussRandom([2,2], 0.1, 100);
c3 = gaussRandom([2,1], 0.1, 100);
%b
figure
subplot(2,3,2)
plot(c1(:,1), c1(:,2), '.', c2(:,1), c2(:,2), '.', c3(:,1), c3(:,2), '.')
title('Original')

allPoints = [c1; c2; c3];

[idx , C] = kmeans([c1 ; c2 ; c3], 2);    
subplot(2,3,4)
hold on
for i=1:2
    cluster = allPoints(idx==i,:);
    plot(cluster(:,1), cluster(:,2), '.')
    plot(C(i,1), C(i,2), 'o')
end
title('k=2')

[idx , C] = kmeans([c1 ; c2 ; c3], 3);    
subplot(2,3,5)
hold on
for i=1:3
    cluster = allPoints(idx==i,:);
    plot(cluster(:,1), cluster(:,2), '.')
    plot(C(i,1), C(i,2), 'o')
end
title('k=3')

[idx , C] = kmeans([c1 ; c2 ; c3], 4);    
subplot(2,3,6)
hold on
for i=1:4
    cluster = allPoints(idx==i,:);
    plot(cluster(:,1), cluster(:,2), '.')
    plot(C(i,1), C(i,2), 'o')
end
title('k=4')
end

