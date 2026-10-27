# Programming-Assignment5
# Intended Learning Outcomes
1. create real and complex matrices in MATLAB;
2. distinguish transpose from complex-conjugate transpose operations;
3. express a simultaneous linear system in matrix form; and
4. solve and check a linear system using the inverse method and Cramer’s Rule.

# Introduction
This programming assignment focuses on creating matrices and applying operations to them, such as the transpose and conjugate. It also applies methods to linear systems, namely, the inverse method and Cramer's Rule.

# Problem A: Transpose Operations
Define the following matrices and apply transpose using three methods

```matlab
R = [ 1  2  3; 4  5  6; 7  8  9 ] %Declaring matrix R
Z = [ 1+2i  3-1i  5+0i; 2-3i  4+1i  6-2i; 7+1i  8-4i  9+3i ] %Declaring matrix Z

transpose_R = transpose(R);
transpose_R1 = R';
transpose_R2 = R.';
transpose_Z = transpose(Z);
transpose_Z1 = Z';
transpose_Z2 = Z.';

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
```

## Questions:
a. Which operations give identical results for the real matrix R?
- All three operations (transpose(R), R', and R.') give identical results for the real matrix R.
b. Which two operations give identical results for the complex matrix Z?
- transpose(Z) and Z.' give identical results for the complex matrix Z (unconjugated non-conjugate transpose).
c. What additional operation is performed by the apostrophe operator when the matrix contains complex entries?
- The apostrophe operator (') computes the complex-conjugate transpose (Hermitian transpose), which transposes the matrix and negates the imaginary component of each complex element.


## Output

<img width="509" height="485" alt="Screenshot 2026-10-27 at 10 58 13 AM" src="https://github.com/user-attachments/assets/1b2aae69-de61-42e6-8b26-c3319688a59a" />

<img width="509" height="485" alt="Screenshot 2026-10-27 at 10 58 32 AM" src="https://github.com/user-attachments/assets/cce5e45e-9c04-4c92-955b-b71b1a01438b" />

# Problem B: Two Methods for a Linear System
Solve linear systems using the inverse method and Cramer's Rule
```matlab
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

%Numerical checks
norm_diff = norm(x_inv - x_cramer)
norm_residual = norm(A1 * x_inv - a)
```

# Output:


<img width="278" height="455" alt="Screenshot 2026-10-27 at 11 02 36 AM" src="https://github.com/user-attachments/assets/3b8c67c3-42a2-4259-a3ae-fc1565a57acd" />

<img width="278" height="455" alt="Screenshot 2026-10-27 at 11 03 31 AM" src="https://github.com/user-attachments/assets/f06f0b42-a7ae-45e8-ab35-f1573aaa183f" />
