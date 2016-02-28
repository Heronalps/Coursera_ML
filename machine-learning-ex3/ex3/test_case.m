
%input
theta = [-2; -1; 1; 2];
X = [ones(3,1) magic(3)];
y = [1; 0; 1] >= 0.5;       % creates a logical array
lambda = 3;
[J grad] = lrCostFunction(theta, X, y, lambda);
% output:
%J = 7.6832
%grad =
%   0.31722
%   -0.12768
%   2.64812
%   4.23787