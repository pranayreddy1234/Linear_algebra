function [fib] = fibonacci(nList)
%FIBONACCI Returns the requested Fibonacci numbers given by F(n) =
%   F(n-1)+F(n-2)
%
%   nList - The list of Fibonacci numbers to get
%   fib - The list of Fibonacci number requested
% 
% Other EAS596 Notes: All variables in functions are function-scope. If you
% defined a variable in a block (e.g. the for-loop), they will be available
% after the for-loop

    if min(nList)<1               % Make sure the numbers are valid
        error('Fibonacci numbers must be greater than zero!');
    end
    
    nMax = max(nList);            % Highest Fibonacci number to get 
    
    
    
    F = zeros(nMax, 1);           % Make the required list
    
    F(1) = 1;                     % Need to inialize the list
    F(2) = 1;                     % If max(nList)==1 then Matlab will make this bigger
    
    for ii=3:nMax                 % Iterate up to the maximum number 
        F(ii) = F(ii-1) + F(ii-2);  % Calculate the current number       
    end
    
    fib = F(nList);         % Pull the data
    

end

