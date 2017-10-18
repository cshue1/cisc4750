function B=rowscale(A,i,c)
% The command rowscale(A,i,c) multiplies row i of the matrix A by the
% scalar c and outputs the resulting matrix.
m = size(A,1); %[m,n] = size(A);
if i<1 | i>m  %checks to see if i is within the dimensions
    error('Index out of range')
end
B=A; % matrix A is copied to matrix B
B(i,:)=c*A(i,:); % every value in column i will be multiplied by c
end