function[v1, v2, v3, M, M_30x50, v_M_Product, M_v_Product, M_M_Product, M_M_componentwise, crossP, dotP] = MatlabBasics()
%% General Hints:
% If you want to check your implementation you can:
% -) set a breakpoint to be able to access the until this checkpoint
% created variables in the 'Workspace' of your main Matlab window.
% -) leave out the ';' at the end of a calculation/line so the result will be
% printed out in the command window.

%% I. create basic data structures:
% 1) create a Row Vector 'v1' and a Column Vector 'v2' with 3 Elements and a 3by3 Matrix 'M' 
% containing digits of your Matrikel number in the following order:
% Matrikel number: 'ABCDEFG'
% Vector: 
% v1 =
%      A     B     C  
% v2 = 
%      D
%      E
%      F
% Matrix:
% M = 
%      A     B     C
%      D     E     F
%      G     A     B

v1 = [0,8,2];
v2 = [8;6;3];
M = [0,8,2;8,6,3;0,0,8];

% 2) create a sequence: create a Vector 'v3' with elements starting at the
% smallest digit of your Matrikel number to the largest, each element 0.25 
% greater than the one before. Use the sequence operator ':'
% Example: The Matrikel number 1210233 should give you the following vector:
% v3 =
%       0  0.25  0.5  0.75  1  1.25  1.5  1.75  2  2.25  2.5  2.75  3
% for more information on how to use the sequence operator ':', type (in the 
% matlab commandline):
% help :

v3 = 0:0.25:8;

% 3) create a 30-by-50 Matrix 'M_30x50' containing only zeros. for more
% information type:
% help zeros

M_30x50 = zeros(30,50)

%% II. implement your own versions of the following built-in Matlab functions:
% *, .*, cross, dot

% ATTENTION: of course you are not allowed to use the function 'cross' or
% 'dot' as well as '.*' for this task. Furthermore you may only use 
% the '*' operator on single components (-> multiply one element of a 
% matrix or a vector with one other element). you may (and will probably)
% use loops.

% Hint: In order to check your solution, you can compare your results with
% the results you get by using the built-in Matlab functions.

% 1) Vector-Matrix-Multiplication (use v1 and M)
v_M_Product = vector_X_Matrix(v1, M);

% 2) Matrix-Vector-Multiplication (use M and v2)
M_v_Product = Matrix_X_vector(M, v2);

% 3) Matrix-Matrix-Multiplication 
% (use M and the transposed Matrix M2) 
M2 = M';
M_M_Product = Matrix_X_Matrix(M, M2);

% 4) Matrix-Matrix-Multiplication component wise
% (use M and M2 and implement component wise matrix multiplication)
M_M_componentwise = Matrix_Xc_Matrix(M, M2);

% 5) cross product of 2 vectors (use v1 and v2)
crossP = crossProduct(v1,v2);

% 6) dot product (use v1 and v2)
dotP = dotProduct(v1,v2);


end

function[result] = vector_X_Matrix(v1, M)

% return a row vector

% TODO: your code goes here
result = 0; % TODO: edit this

end

function[result] = Matrix_X_vector(M, v2)

%return a column vector

% TODO: your code goes here
result = 0; % TODO: edit this

end

function[result] = Matrix_X_Matrix(M, M2)

% hint: row times column!

% TODO: your code goes here
result = 0; % TODO: edit this

end

function[result] = Matrix_Xc_Matrix(M, M2)

% implement component wise multiplication

% TODO: your code goes here
result = 0; % TODO: edit this

end

function[result] = crossProduct(v1,v2)

% IMPORTANT: DON'T use the built-in Matlab function 'cross' to do this!!!
% implement it yourself and then compare it with 'cross'

% return a row vector

% TODO: your code goes here
result = 0; % TODO: edit this

end

function[result] = dotProduct(v1,v2)

% IMPORTANT: DON'T use the built in Matlab function 'dot' to do this!!!
% implement it yourself and then compare it with 'dot'

% TODO: your code goes here
result = 0; % TODO: edit this

end




