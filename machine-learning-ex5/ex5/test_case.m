X = [[1 1 1]' magic(3)];
y = [7 6 5]';
theta = [0.1 0.2 0.3 0.4]';
[J g] = linearRegCostFunction(X, y, theta, 7)

%--- results based on value entered for ? (lambda)
% --------------------------
% lambda = 0  |   lambda = 7
% --------------------------
% J = 1.3533  |   J = 1.6917
% g =         |   g = 
%    -1.4000  |      -1.4000
%    -8.7333  |      -8.2667
%    -4.3333  |      -3.6333
%    -7.9333  |      -7.0000