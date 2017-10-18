function C = strassens(A,B)
% This function performs Strassen's Algorithm to multiply two matrices, A
% and B.
% A and B are matrices
% 
[ar,ac] = size(A);
[br,bc] = size(B);

if ar ~= ac
    error('Matrix A is not a square matrix');
elseif br ~= bc
    error('Matrix B is not a square matrix');
elseif ar ~= br || bc ~= ac
    error('Matrices are not the same size');
else
    if round(ar/2) ~= ar/2
        C = A*B;
    else
        mid = ar/2;
        A11 = A(1:mid,1:mid);
        A12 = A(1:mid,(mid+1):ar);
        A21 = A((mid+1):ar,1:mid);
        A22 = A((mid+1):ar,(mid+1):ar);
        B11 = B(1:mid,1:mid);
        B12 = B(1:mid,(mid+1):ar);
        B21 = B((mid+1):ar,1:mid);
        B22 = B((mid+1):ar,(mid+1):ar);
       
        M1 = strassens(A11 + A22,B11 + B22);
        M2 = strassens(A21 + A22,B11);
        M3 = strassens(A11,B12 - B22);
        M4 = strassens(A22,B21 - B11);
        M5 = strassens(A11 + A12,B22);
        M6 = strassens(A21 - A11,B11 + B12);
        M7 = strassens(A12 - A22,B21 + B22);
        
        C11 = M1 + M4 - M5 + M7;
        C12 = M3 + M5;
        C21 = M2 + M4;
        C22 = M1 - M2 + M3 + M6;
        C = [C11,C12;C21,C22];        
    end
end
return;

end