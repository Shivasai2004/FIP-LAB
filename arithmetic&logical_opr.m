A=imread('tree.jpeg');
B=imread('tree1.jpeg');
A = imresize(A,[500 500]);
B = imresize(B,[500 500]);

%addition
add=imadd(A,B);
%figure(1)
imshow(add);
%subtraction
sub=imsubtract(A,B);
%figure(2)
imshow(sub)
%multiplication;
mul=immultiply(A,B);
%figure(3)
imshow(mul);
%division
div=imdivide(A,B);
%figure(4)
imshow(div);
figure(5)
subplot (3,2,1) , imshow(A),title('img1');
subplot (3,2,2) , imshow(B),title('img2');
subplot (3,2,3) , imshow(add),title('addition');
subplot (3,2,4) , imshow(sub),title('subtraction');
subplot (3,2,5) , imshow(mul),title('multiplication');
subplot (3,2,6) , imshow(div),title('division');

%figure(6)
a = imcomplement(A);
imshow(a)

%figure(7)
b = imcomplement(B);
imshow(b)



%logical operators
log_or = bitor(A,B);
log_and = bitand(A,B);
log_xor = bitxor(A,B);


figure(8)
subplot (1,3,1) , imshow(log_or),title('logical or');
subplot (1,3,2) , imshow(log_and),title('logical and');
subplot (1,3,3) , imshow(log_xor),title('logical xor');
