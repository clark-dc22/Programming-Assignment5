%Problem 1
R = [ 1  2  3; 4  5  6; 7  8  9 ] %Declaring matrix R
Z = [ 1+2i  3-1i  5+0i; 2-3i  4+1i  6-2i; 7+1i  8-4i  9+3i ] %Declaring matrix Z

%Displaying methods of transpose in matrix R
disp('Transpose of R:')
disp('Transpose using transpose(R)')
disp(transpose_R) 
disp('Transpose using R''')
disp(transpose_R1)
disp('Transpose using R.''')
disp(transpose_R2)

%Displaying methods of transpose in matrix Z
disp('Transpose of Z:')
disp('Transpose using transpose(Z)')
disp(transpose_Z)
disp('Transpose using Z''')
disp(transpose_Z1)
disp('Transpose using Z.''')
disp(transpose_Z2)
% a. Which operations give identical results for the real matrix R?
% Answer: All three operations (transpose(R), R', and R.') give identical results for the real matrix R.
% b. Which two operations give identical results for the complex matrix Z?
% Answer: transpose(Z) and Z.' give identical results for the complex matrix Z (unconjugated non-conjugate transpose).
% c. What additional operation is performed by the apostrophe operator when the matrix contains complex entries?
% Answer: The apostrophe operator (') computes the complex-conjugate transpose (Hermitian transpose), which transposes the matrix and negates the imaginary component of each complex element.


%Problem 2
%Inverse Method
A = [2 -1 3 2 16; 1 4 -2 1 -7; 3 2 1 -1 6; -2 3 4 2 7;]; %Defining the matrix
A1 = A(:, 1:4) %Array without coefficient matrix
a = [16; -7; 6; 7;] %Coefficient matrix
x_inv = inv(A1) * a; %Solution for Inverse Method

%Cramer's Method 
n = size(A1,1);
x_cramer = zeros(n,1);
detA = det(A1);
for i = 1:n
    A_temp = A1;            % Make a copy of A
    A_temp(:, i) = a;      % Replace the i-th column with vector b
    x_cramer(i) = det(A_temp) / detA; % Compute x_i using determinants
end
%Displaying answers for each method
disp('Solution for Inverse method')
disp(x_inv);
disp('Solution for Cramer''s rule')
disp(x_cramer);
