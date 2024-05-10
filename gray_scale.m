x=imread('gear5.jpg');
y=x;
[w h]=size(x);
for i=1:w
    for j=1:h
        if x(i,j)>=100 && x(i,j)<=200 
            y(i,j)=255;
        else 
            y(i,j)=0;
        end
    end
end
figure(3);
subplot(1,2,1),imshow(x),title('org');
subplot(1,2,2),imshow(y),title('gray sacle');



% Read the input image (replace 'your_image.jpg' with your image file path)
originalImage = imread('gear5.jpg');

% Convert the image to grayscale
grayImage = rgb2gray(originalImage);

% Define the desired intensity range
lowThreshold = 100;
highThreshold = 200;

% Create a mask to identify pixels within the desired intensity range
mask = (grayImage >= lowThreshold) & (grayImage <= highThreshold);

% Retain background: Apply the mask to the original image
outputImageWithBackground = originalImage;

% Remove background: Create a new image with only the pixels within the intensity range
outputImageWithoutBackground = uint8(zeros(size(originalImage)));  % Initialize output image

% Apply the mask to each RGB channel to remove the background
for channel = 1:3
    outputImageChannel = originalImage(:,:,channel);
    outputImageChannel(~mask) = 0;  % Set non-masked pixels to black (0)
    outputImageWithoutBackground(:,:,channel) = outputImageChannel;
end

% Display the original image and the processed grayscale images
figure;

% Display the original image
subplot(1, 3, 1);
imshow(originalImage);
title('Original Image');

% Display the grayscale image with background retained
subplot(1, 3, 2);
imshow(outputImageWithBackground);
title('Gray Scale Image with Background');

% Display the grayscale image with background removed
subplot(1, 3, 3);
imshow(outputImageWithoutBackground);
title('Gray Scale Image without Background');
