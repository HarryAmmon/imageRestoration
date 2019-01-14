% HARRY AMMON 14th Jan 2019
% Read in images
M = imread('img1.jpg');                                                     % Read in img1 to M, this one is missing parts
N = imread('img2.jpg');                                                     % Read in img2 to N, this one is the wrong size and is blurred

% Detect missing areas in img1
% These areas are white so RGB(255,255,255)
disp(M);
