%%
% 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
% 
% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
%%
clearvars;
% by hand:
result = 1*2*3*2*5*7*2*3*11*13*2*17*19;


% find all prime numbers smaller than 20:
numbers = 2:20;
numbers = numbers(isprime(numbers));
% we insert a prime number as many times into our list, until p^n >20. this
% way, all numbers <=20 can be calculated from our list of primes. this
% list is irreducible the prime factors of our result.
list = 1;
for ii=numbers
    k=ii;
    while( k<20 )
       list = [list ii];
       k=k*ii;
    end
end

result = prod(list)
% result = 232792560