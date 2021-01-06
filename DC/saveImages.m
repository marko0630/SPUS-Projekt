function saveImages(processedImages)
%Saves processed images to disk
    for i = 1: numel(processedImages)
        filename = sprintf('OBR_0%d.png', i);
        imwrite(processedImages{i}, filename);
    end
    
end

