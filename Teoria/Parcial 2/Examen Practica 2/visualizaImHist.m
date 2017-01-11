function visualizaImHist(img)

subplot(2,1,1);
imagesc(img);
subplot(2,1,2);
imhist(img);
end

