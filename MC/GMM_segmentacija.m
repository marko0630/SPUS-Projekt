close all; 

[FileName,PathName] = uigetfile('*.png' );  %odabir slike
I= double(imread([PathName '\' FileName]));

K = 2;                      % K za GMM
[n,m,d] = size(I);
data = reshape(I, n*m,3);   % 2D matrica


gmm = fitgmdist(data, K,'Options',statset('MaxIter',500));

%% Zamijena svakog piksela s vrijednošću u središtu klastera

Postpp = posterior(gmm,data) ;
[~,mg] = max(Postpp,[],2);

mg = reshape(mg, n,m);
im_res_2 = I;

for i = 1:n
    for j =1:m
       im_res_2(i,j,:) = gmm.mu(mg(i,j),:);
    end
end

imwrite(uint8(im_res_2), 'res_seg_mmg2.jpg');

figure('Name','Second method','NumberTitle','off');
subplot(221); imshow(uint8(I)); title('Početna slika') 
subplot(222); imshow(uint8(im_res_2)); title([' K = ' num2str(K)])

find_edges(uint8(im_res_2))