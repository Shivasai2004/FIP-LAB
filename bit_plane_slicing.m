a=imread('back1.jpg');
b=rgb2gray(a);
[m,n]=size(b);
for i=1:m
    for j=1:n
        b7(i,j)=bitand(b(i,j),128);
        b6(i,j)=bitand(b(i,j),64);
        b5(i,j)=bitand(b(i,j),32);
        b4(i,j)=bitand(b(i,j),16);
        b3(i,j)=bitand(b(i,j),8);
        b2(i,j)=bitand(b(i,j),4);
        b1(i,j)=bitand(b(i,j),2);
        b0(i,j)=bitand(b(i,j),1);
    end
end
figure;
subplot(2,4,1),imshow(b7);
subplot(2,4,2),imshow(b6);
subplot(2,4,3),imshow(b5);
subplot(2,4,4),imshow(b4);
subplot(2,4,5),imshow(b3);
subplot(2,4,6),imshow(b2);
subplot(2,4,7),imshow(b1);
subplot(2,4,8),imshow(b0);
