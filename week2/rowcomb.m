function B=rowcomb(A,i,j,c)
%The command rowcomb (A,i,j,c) forms a matrix from A by adding c times the
%ith row of A to the jth row.

m=size(A,1);
if i<1 | i>m | j<1 | j>m
    error('Index out of range')
end
if i==j
    error('Illegal row operation')
end
B=A;
B(j,:)=c*A(i,:)+A(j,:); % multiply c by all the entries in row i and add row j