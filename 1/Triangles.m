function[P1P2_saved, P2P3_saved, P3P1_saved, Normal_normalized, P1P2_length, P2P3_length, P3P1_length, Area, alpha, beta, gamma, angles_sum] = Triangles()

%% I. Triangles
%% 1) Construct 3 Vectors representing 3 Points that define a triangle.
% Create the points P1, P2 and P3 with the following coordinates
% P1 =
%      2     1     1
% P2 =
%      3     4     0
% P3 =
%      8     2     7
clc

P1 = [2,1,1]; 
P2 = [3,4,0];
P3 = [8,2,7];

%% 2) Construct the 3 vectors of the triangle: P1P2, P2P3 and P3P1
% P1P2 is pointing from P1 to P2
% P2P3 is pointing from P2 to P3
% P3P1 is pointing from P3 to P1

P1P2 = P2-P1;
P2P3 = P3-P2;
P3P1 = P1-P3;

% your results are saved for later evaluation:
P1P2_saved = P1P2; % DON'T OVERRIDE P1P2_saved !!!
P2P3_saved = P2P3; % DON'T OVERRIDE P2P3_saved !!!
P3P1_saved = P3P1; % DON'T OVERRIDE P3P1_saved !!!
    
%% 3) Calculate the length of each edge
% The positive length or magnitude of a vector is also known as the 'norm' of
% this vector. 
% ATTENTION: you are not allowed to use the function 'norm' for this task,
% but you can compare the results of your calculation with the results you
% get by using the built-in Matlab function 'norm'.


P1P2_length = sqrt(sum(P1P2.^2));
P2P3_length = sqrt(sum(P2P3.^2));
P3P1_length = sqrt(sum(P3P1.^2));


%% 4) Compute the face normal of the triangle
% the use of built-in Matlab functions is allowed
% normalize the normal!

Normal = cross(P1P2,P2P3)
Normal_normalized = Normal / norm(Normal)

%% 5) Compute the Area of your triangle
% the use of built-in Matlab functions is allowed
% Beware of the direction of your vectors!

Area = 1/2 * norm(cross(P1P2,P2P3))

%% 6) Calculate the 3 angles of your triangle (in degrees)
% Name them 'alpha' at P1, 'beta' at P2 and 'gamma' at P3
% Beware of the direction and length of your vectors!
% You may use built-in Matlab functions.
% Use the matlab function 'acosd' to get the angle in degrees.ss
% Check your solution: Does the sum of your angles add up to the right amount?

% https://answers.yahoo.com/question/index?qid=20100126130028AAIK0wM

alpha = acosd(dot(P1P2,-P3P1)/(norm(P1P2)*norm(-P3P1)))
beta = acosd(dot(P2P3,-P1P2)/(norm(P2P3)*norm(-P1P2)))
gamma = acosd(dot(P3P1,-P2P3)/(norm(P3P1)*norm(-P2P3)))

% check the sum
angles_sum = alpha + beta + gamma



end