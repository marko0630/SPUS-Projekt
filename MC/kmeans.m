RGB = imread('SIG_01.png');
RGB = imresize(RGB,0.5);

L = imsegkmeans(RGB,2);              %kmeans segmentacija
B = labeloverlay(RGB,L);

gray_im = im2gray(B);
find_edges(gray_im)                   %detekcija rubova

figure()
subplot(1,2,1),imshow(RGB), title('originalna slika');
subplot(1,2,2), imshow(B), title('segmentirana slika');

%imwrite(uint8(g), 'img_smooth.jpg');
%e = edge(g, 'log');    %detekcija rubova
