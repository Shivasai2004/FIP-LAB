a=imread('back1.jpg');
b=rgb2gray(a);
rb=edge(b,"roberts");
sb=edge(b,"sobel");
pw=edge(b,"prewitt");

rbx_kernel = [0,1;-1,0];
rby_kernel = [1,0;0,-1];

sbx_kernel = [-1,0,1; -2,0,2; -1,0,1];
sby_kernel = [1,2,1; 0,0,0; -1,-2,-1];

pwx_kernel = [-1,0,1; -1,0,1; -1,0,1];
pwy_kernel = [1,1,1; 0,0,0; -1,-1,-1];

rbx = conv2(b,rbx_kernel,'same');
rby = conv2(b,rby_kernel,'same');

sbx = conv2(b,sbx_kernel,'same');
sby = conv2(b,sby_kernel,'same');

pwx = conv2(b,pwx_kernel,'same');
pwy = conv2(b,pwy_kernel,'same');

figure(1);
subplot(5,3,2),imshow(a),title('original');
subplot(5,3,5),imshow(b),title('grey-scale image' );
subplot(5,3,7),imshow(rb),title('roberts-inbuilt' );
subplot(5,3,8),imshow(rbx),title('roberts-x' );
subplot(5,3,9),imshow(rby),title('roberts-y' );
subplot(5,3,10),imshow(sb),title('sobel-inbuilt' );
subplot(5,3,11),imshow(sbx),title('sobel-x' );
subplot(5,3,12),imshow(sby),title('sobel-y' );
subplot(5,3,13),imshow(pw),title('prewitt-inbuilt' );
subplot(5,3,14),imshow(pwy),title('prewitt-x' );
subplot(5,3,15),imshow(pwy),title('prewitt-y' );
