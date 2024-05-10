a = imread('bridge.jpg');
b = rgb2gray(a);
c = imnoise(b, 'salt & pepper', 0.05);

peaksnr_salt_pepper = psnr(c, b);
mse_salt_pepper = immse(c, b);

fprintf('\nPeak SNR value for Salt and Pepper Noise: %.4f\n', peaksnr_salt_pepper);
fprintf('Mean Squared Error for Salt and Pepper Noise: %.4f\n', mse_salt_pepper);
d = medfilt2(c);
peaksnr_denoised = psnr(d, b);
mse_denoised = immse(d, b);

fprintf('\nPeak SNR value after denoising: %.4f\n', peaksnr_denoised);
fprintf('Mean Squared Error after denoising: %.4f\n', mse_denoised);
subplot(1, 3, 3),imshow(d),title('After Denoising (Median Filter)');
subplot(1, 3, 1),imshow(b),title('Original Image');
subplot(1, 3, 2),imshow(c),title('Salt and Pepper Noise');
