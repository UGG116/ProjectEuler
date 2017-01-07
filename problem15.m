%%
% Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
% 
% How many such routes are there through a 20×20 grid?
%%

% This is the same question as asking how many 20 bit numbers exist where
% exactly half of the bits are 1s and the other half 0. We can describe a
% path as binary sequence: 0 is walking right, 1 is walking down. To walk
% from the top left to the bottom right, we have to walk 10 times right,
% and 10 times down. This is exactly binominal 20 over 40
clearvars;
size = 20;
result = nchoosek(2*size,size);
result