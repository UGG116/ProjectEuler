%%
% The prime factors of 13195 are 5, 7, 13 and 29.
% 
% What is the largest prime factor of the number 600851475143 ?
%%
clearvars;
num = 600851475143;

% using matlabs built in factorization
factors = factor(num);
result = factors(end)

% but that's boring, with a home made factorization:
clearvars -except num;
factors = 1;
for ii=2:ceil(sqrt(num)) %ugly 
   while mod(num,ii)==0
      factors(end+1) = ii;
      num = num/ii;
   end
end

result = factors(end)
% result = 6857

% this works because the last element of factors is necessary a prime. If
% it weren't it's prime factors would already have been tested in the while
% loop and been removed from the prod of num.