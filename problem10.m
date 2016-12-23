%%
% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
% 
% Find the sum of all the primes below two million.
%%

numbers = [2 3:2:2e6];
primes = numbers(isprime(numbers));
result = sum(primes)
%result = 142913828922
