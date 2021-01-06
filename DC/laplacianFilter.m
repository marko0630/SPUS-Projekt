function laplaceImage = laplacianFilter(imageGray)
%Laplacian filter applied to images
    
    %Reserve memory space for filtered images
    laplaceImage = cell(numel(imageGray));
    
    for i = 1:numel(imageGray)
        laplaceImage{i} = locallapfilt(imageGray{i},500,0.75, 'ColorMode', 'separate','NumIntensityLevels', 64);
        figure
        imshowpair(imageGray{i}, laplaceImage{i}, 'Montage')
    end
    
      laplaceImage = transpose(laplaceImage(:, 1));
    
end

