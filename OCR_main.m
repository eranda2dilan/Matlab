function word=OCR_main(image)
clc, 

% image = imread('TEST_1.jpg');

if size(image,3)== 3
    g_image = rgb2gray(image);
else
    g_image = image;
end

t = graythresh(g_image);
bw_image = ~im2bw(g_image,t);
imwrite(bw_image,'binary_image.jpg');
bw_image = bwareaopen(bw_image,30);
imwrite(bw_image,'noise_removed_image.jpg');
word=[];
re = bw_image;

text_file = fopen('text.txt', 'wt');

load templates;
global templates;

num_of_letters = size(templates,2);
while(1)
    [fl,re] = lines(re);
    image_lined = fl;
    [L Ne] = bwlabel(image_lined);
    for n=1:Ne
        [r,c] = find(L==n);
        image_croped = image_lined(min(r):max(r),min(c):max(c));
        image_resized = imresize(image_croped,[42 24]);
        letter = read_letter(image_resized,num_of_letters);
        word = [word letter];
    end
    fprintf(text_file,'%s\n',word);
    word = [];
    if isempty(re)
    break
    end
end
fclose(text_file);
winopen('text.txt')
clear all
% figure,imshow(bw_image);
end