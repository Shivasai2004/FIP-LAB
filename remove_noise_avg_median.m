a = imread('cameraman.jpg');
b = rgb2gray(a);
noisy_img = imnoise(b, 'salt & pepper', 0.05);

psnr_org = psnr(noisy_img, b);
mse_org = immse(noisy_img, b);

filtered_avg = imfilter(noisy_img, fspecial('average', [3 3]));
filtered_med = medfilt2(noisy_img, [3 3]);

min_filtered = ordfilt2(noisy_img, 1, true(3));
max_filtered = ordfilt2(noisy_img, 9, true(3));

average_psnr = psnr(filtered_avg, b);
average_mse = immse(filtered_avg, b);

median_psnr = psnr(filtered_med, b);
median_mse = immse(filtered_med, b);

min_psnr = psnr(min_filtered, b);
min_mse = immse(min_filtered, b);

max_psnr = psnr(max_filtered, b);
max_mse = immse(max_filtered, b);

figure;

subplot(2, 3, 1),imshow(b),title('Original Image');
subplot(2, 3, 2),imshow(noisy_img),title('Noisy Image (Salt & Pepper)');
subplot(2, 3, 3),imshow(filtered_avg),title('After Average Filter');
subplot(2, 3, 4),imshow(filtered_med),title('After Median Filter');
subplot(2, 3, 5),imshow(min_filtered),title('After Minimum Filter');
subplot(2, 3, 6),imshow(max_filtered),title('After Maximum Filter');
