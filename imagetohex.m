%[filename, pathname] = uigetfile('baitap1_nhieu.jpg');
img = imread('img_test.jpg');
%img = imresize((img),[430 554]);
%[ row col p ] =size(img);
%if p == 3
    img = rgb2gray(img);
%end
%rectImg = img(16:80,16:80);
% noise add
% rectImg = imnoise(rectImg,'salt & pepper', 0.02);
%img(16:80,16:80) = rectImg;
% Image Transpose
imgTrans = img';
% iD conversion 
img1D = imgTrans(:);
% Decimal to Hex value conversion
imgHex = dec2hex(img1D);
imgHex=cellstr(imgHex);
% New txt file creation
fid = fopen('test1.txt', 'wt');
% Hex value write to the txt file

fprintf(fid, '%s\r\n', imgHex{:});

%fprintf(fid, '%x\n', img1D);
% Close the txt file
fclose(fid)