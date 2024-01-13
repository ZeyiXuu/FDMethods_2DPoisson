function result = Product1Dmatrix(h, v)
    % A function to compute the matrix-vector product A*u using 1-D matrix
    
    dimx = 1/h + 1;
    dimy = 2/h + 1;
    
    Tx = createTriDiagonalMatrix(dimx);
    Ty = createTriDiagonalMatrix(dimy);
    
    % Compute the matrix-vector product
    result = v * Tx + Ty * v;
end

function A = createTriDiagonalMatrix(n)
    % Create a tri-diagonal matrix of size n x n
    
    % Diagonal elements
    mainDiag = (-2) * ones(n, 1);
    
    % Off-diagonal elements
    offDiag = ones(n, 1);
    
    % Create the tri-diagonal matrix
    A = spdiags([offDiag, mainDiag, offDiag], [-1, 0, 1], n, n);
end
