a=imread("panda.jpg");
subplot(2,3,1),imshow(a),title("org image");
se=strel("line",7,7);
eroded_image=imerode(a,se);
dilation_image=imdilate(a,se);
subplot(2,3,2),imshow(eroded_image),title("erosion image");
subplot(2,3,3),imshow(dilation_image),title("dilation image");
bw=imbinarize(a)
bw=imbinarize(eroded_image)
bw=imbinarize(dilation_image)
open=imopen(eroded_image,se);
close=imclose(dilation_image,se);
subplot(2,3,4),imshow(open),title("open image");
subplot(2,3,5),imshow(close),title("close image");
