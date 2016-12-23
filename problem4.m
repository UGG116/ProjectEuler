%%
% A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
% 
% Find the largest palindrome made from the product of two 3-digit numbers.
%%
clearvars;
% quick and dirty: create all possible combinations and check for each if
% it is a palindrome.
numbers = (100:999)'*(100:999);
numbers = reshape(numbers,[1,900*900]);

[~, order] = sort(numbers,'descend');

for ii=order
    numToTest = num2str(numbers(ii));
    k=0:length(numToTest)-1;
    found = 1;
    for k=0:length(numToTest)-1
        if(numToTest(1+k) ~= numToTest(end-k))
            found = 0;
            break;
        end
    end
    if(found==1)
       result = numbers(ii)
       % result = 906609
       break;
    end
end