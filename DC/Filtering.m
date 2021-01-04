imageFolder = 'C:\Users\Dino\Desktop\SPUS-Projekt';

imgArray = loadImages(imageFolder);

img_resized = imageResize(imgArray, 300, 500);

img_equal = imageHistEqual(img_resized);

img_gray = rgb2grayscale(img_resized);

img_gray_equal = imageHistEqual(img_gray);


img_sharp = unsharpMask(img_gray);

custom_filter = fspecial('disk', 2.0)

gaussImg = imfilter(img_sharp{1}, custom_filter, 'replicate')

figure
imshow(gaussImg)