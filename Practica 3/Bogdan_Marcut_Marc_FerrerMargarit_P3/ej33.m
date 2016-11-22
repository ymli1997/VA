function ej33()
%ej33 Summary of this function goes here
%   Detailed explanation goes here
%a
close all;
imc = imread('loro.png');
img = rgb2gray(imc);
[n m] = size(img);
X = zeros(n*m, 2);
X(:,1) = reshape(img, 1, n*m)';
X(:,2) = reshape(img, 1, n*m)';
figure
subplot(2,4,1); imshow(img); title('Original');
for i=1:6
    [idx, c] = kmeans(X, i);
    res = zeros(n,m,'uint8');
    res(:) = floor(c(idx(:),1));
    subplot(2, 4, i+1), imshow(res), title(['N=',num2str(i), ' clusters']),...
end
%b
X = ones(n*m, 3);
X(:,1) = repmat(1:n, 1, m)';
tmp = (1:m)';
tmp = repmat(tmp,1,n)';
X(:,2)=tmp(:)';
X(:,3) = reshape(img, 1, n*m)';
[idx, c] = kmeans(X, 100);
res = zeros(n,m,'uint8');
res(:) = floor(c(idx(:),3));
subplot(2, 4, 8),imshow(res), title('100 clusters, with pixel coordinates');

%c&d
figure;
subplot(2,2,1); imshow(imc); title('Original');
subplot(2,2,2); plotPixelDistribution(imc,0.5); title('Distribution of pixels');
%e
X = ones(n*m, 3);
X(:,1) = reshape(imc(:,:,1), 1, n*m)';
X(:,2) = reshape(imc(:,:,2), 1, n*m)';
X(:,3) = reshape(imc(:,:,3), 1, n*m)';
%f
[idx, c] = kmeans(X, 16);
res = zeros(n, m, 3, 'uint8');
res(:) = floor(c(idx(:),:));
%g
subplot(2,2,3); imshow(res);
subplot(2,2,4); plotPixelDistribution(res);
end

