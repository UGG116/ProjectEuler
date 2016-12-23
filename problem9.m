%%
% A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
% 
% a^2 + b^2 = c^2
% For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
% 
% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
% Find the product abc.
%%
clearvars;
%b has to be smaller than 500
for b=100:500
    for a=1:(b-1)
       c = sqrt(a^2+b^2);
       if( c==round(c)) % test if c is an integer
           if(a+b+c == 1000)
              result = a*b*c
              %result = 31875000
              return
           end
       end

    end
end