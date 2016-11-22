function ex31()
%ex31 Summary of this function goes here
%   Detailed explanation goes here
close all;
v = VideoReader('Barcelona.mp4');
O = 1;
F = 500;
M = read(v,[O,F]);
N = size(M,4);
prev = M(:,:,:,1);
takes = ones('uint8');
backs = [];
for i=1:N
    cur = M(:,:,:,i);
    %We calculate the distance between the previous frame and the current
    %one
    r = imabsdiff(prev, cur);
    r2 = im2bw(rgb2gray(r),0.1);
    v = imhist(r2);
    %If we have a big change it means we have a new shot
    if v(2) > 5000
        takes = cat(1,takes,i);
        p = takes(end-1);
        c = takes(end);
        b = median(double(M(:,:,:,p:c)), 4);
        backs = cat(4, backs, b);
    end
    prev = cur;
end

l = size(backs,4);
figure
for i=1:l
    subplot(2, l, i),imshow(uint8(M(:,:,:,takes(i)))),title('Start'),...
end
for i=1:l
    subplot(2, l, i+l),imshow(uint8(backs(:,:,:,i))), title('Background'),...
end
end

