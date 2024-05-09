A=imread("uneq.jpeg");
img = rgb2gray(A);
B = imnoise(img, 'salt & pepper');
C = imnoise(img, 'gaussian');
D = imnoise(img, 'speckle');
f1 = 1/9*ones(3,3);
f2 = 1/25*ones(5,5);
f3 = 1/64*ones(8,8);
B1 = conv2(B,f1,'same');
B2 = conv2(B,f2,'same');
B3 = conv2(B,f3,'same');
C1 = conv2(C,f1,'same');
C2 = conv2(C,f2,'same');
C3 = conv2(C,f3,'same');
D1 = conv2(D,f1,'same');
D2 = conv2(D,f2,'same');
D3 = conv2(D,f3,'same');
figure(7)
subplot(4,4,2), imshow(img), title('original image')
subplot(4,4,5), imshow(B), title('salt & pepper img')
subplot(4,4,6), imshow(uint8 (B1)), title('after applying 3*3')
subplot(4,4,7), imshow(uint8 (B2)), title('after applying 5*5')
subplot(4,4,8), imshow(uint8 (B3)), title('after applying 8*8')
subplot(4,4,9), imshow(C), title('gaussian img')
subplot(4,4,10), imshow(uint8 (C1)), title('after applying 3*3')
subplot(4,4,11), imshow(uint8 (C2)), title('after applying 5*5')
subplot(4,4,12), imshow(uint8 (C3)), title('after applying 8*8')
subplot(4,4,13), imshow(D), title('speckle img')
subplot(4,4,14), imshow(uint8 (D1)), title('after applying 3*3')
subplot(4,4,15), imshow(uint8 (D2)), title('after applying 5*5')
subplot(4,4,16), imshow(uint8 (D3)), title('after applying 8*8')
