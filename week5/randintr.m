function A = randintr(m,n,r,k)
% A = randintr(n)
% if nargin = 1(m) then randintr returns mxm
% matrix of random integers in range [-5,5]
% if nargin = 2(m,n) then randintr returns mxn
% matrix of random integers in range [-5,5]
% if nargin = 2(m,n,r) then randintr returns mxn
% matrix of random integers
% in range [-r,r]
% if nargin = 4(m,n,r,k) then randintr returns mxn
% matrix of random integers in range [r,k]

    if nargin <= 2
        range = 5;
        switch nargin
            case 2
                A = round (2*range *rand(m,n) - range);
            case 1
                A = round (2*range *rand(m,m) - range);
            otherwise
                ;
        end
    else
        switch nargin
            case 3
                range = r;
                A = round (2*range *rand(m,n) - range);
            case 4
                A = round ((k-r) * rand(m,n)+r);
            otherwise
                ;
        end
    end
end