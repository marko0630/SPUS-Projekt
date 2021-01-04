function imageArray = loadImages(imageFolder)
%Automated image loading from user specified image folder


    %Check if image folder is valid 
    if (isfolder(imageFolder) == 0)
        %Dislay error message to user
        errMsg = sprintf("Specified folder: \n\n%s \n\ndoes not exist, please check entered folder path", imageFolder);

        %Abort program execution, wait for user to resume
        uiwait(warndlg(errMsg));
        return;
    end


    %Reserve memory space for image cell array
    imageArray = {};

    %Store information about images into structure
    imageAll = dir('*.png');

    %Extract image names from previously created image structure
    imageList = {imageAll.name};


    %Read images into cell array 
    for i = 1:numel(imageList)
        imageArray{i} = imread(imageList{i});
%         figure
%         imshow(imgArray{i})
    end

end