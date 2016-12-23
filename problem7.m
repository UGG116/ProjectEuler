%%
% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
% 
% What is the 10 001st prime number?
%%
clearvars;
numPrimes = 1;
ii=3;
while numPrimes~=10001
   if(isprime(ii))
      numPrimes = numPrimes + 1; 
   end
   ii = ii+2;
end

result = ii-2
% result = 104743;