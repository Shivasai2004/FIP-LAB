original_image = imread('bridge.jpg');
original_gray = rgb2gray(original_image);
noisy_image = imnoise(original_gray, 'salt & pepper', 0.05);

psnr_before = psnr(noisy_image, original_gray);
mse_before = immse(noisy_image, original_gray);

filtered_avg = imfilter(noisy_image, fspecial('average', [3 3]));
filtered_med = medfilt2(noisy_image, [3 3]);

psnr_after_avg = psnr(filtered_avg, original_gray);
mse_after_avg = immse(filtered_avg, original_gray);

psnr_after_med = psnr(filtered_med, original_gray);
mse_after_med = immse(filtered_med, original_gray);

figure;

subplot(2, 3, 1),imshow(original_gray),title('Original Image');
subplot(2, 3, 2),imshow(noisy_image),title('Noisy Image (Salt & Pepper)');
subplot(2, 3, 4),imshow(filtered_avg),title('After Average Filter');
subplot(2, 3, 5),imshow(filtered_med),title('After Median Filter');

annotation('textbox', [0.65, 0.75, 0.3, 0.15], 'String', ...
    sprintf('PSNR Before: %.4f\nMSE Before: %.4f\n\nPSNR (Avg Filter): %.4f\nMSE (Avg Filter): %.4f\n\nPSNR (Med Filter): %.4f\nMSE (Med Filter): %.4f', ...
    psnr_before, mse_before, psnr_after_avg, mse_after_avg, psnr_after_med, mse_after_med), 'FitBoxToText', 'on', 'BackgroundColor', 'w');

% Adjust figure layout
sgtitle('Noise Removal with Average and Median Filters');
