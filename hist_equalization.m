A = imread('tree.jpeg');
img2=histeq(A);
subplot(2,2,1),imshow(A),title('original image');
subplot(2,2,2),imhist(A),title('histogram eq of image1');
subplot(2,2,3),imshow(img2),title('result image');
subplot(2,2,4),imhist(img2),title('histogram eq of result image');
