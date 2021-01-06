%String represents location of source images to be processed
imageFolder = 'C:\Users\Dino\Desktop\SPUS-Projekt';

%Image loading and resizing 
imagePrepared = prepareImages(imageFolder);

%Output images are ready for further processing (segmentation, object
%counting, etc...
imageEnhanced = enhanceImage(imagePrepared);


%Saving images to disk in same location as original images
saveImages(imageEnhanced);




