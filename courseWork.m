% HARRY AMMON 14th Jan 2019
% Read in images
M = imread('img1.jpg');                                                     % Read in img1 to M, this one is missing parts
N = imread('img2.jpg');                                                     % Read in img2 to N, this one is the wrong size and is blurred

% Detect missing areas in img1
% These areas are white so RGB(255,255,255)
A = size(M,1);                                                              % A is number of rows, 1 used for 1st dimension 
B = size(M,2);                                                              % B is number of columns, 2 used for 2nd dimension
C = size(M,3);                                                              % C is number of 'layers', 3 used for 3rd dimension

% This sort of does the job but is a bit dum
for i = 1 : A
    for j = 1 : B
        if (M(i,j,1) >= 251 && M(i,j,2) >= 251 && M(i,j,3) >= 251)          % Finds the areas that are pretty much white
            M(i,j,1) = 0;                                                   % Currently replaces white with black, this should probably be changed
            M(i,j,2) = 0;
            M(i,j,3) = 0;
        end
    end
end

figure(1);imshow(M);title('My Dum way');                                    % Show img1 with missing areas detected

Nresize = imresize(N,[A B]);                                                % Resives the image using values obtained from img1
figure(2);imshow(Nresize);title('Img2 resized');                            % Show img2's new size, its been on a diet!
imwrite(Nresize,'img2CorrectSize.jpg','jpg');


