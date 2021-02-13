function img = pranayre_hw7_p6(f, p)
A = imread(f);
E = rgb2gray(A);
D = double(E);
B = pranayre_hw7_p5(D, p);
k = uint8(B);
img = imshow(k);