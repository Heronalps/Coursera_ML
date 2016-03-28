function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


hypo = X * theta;

J = (1/(2*m)) * (sum((hypo-y).^2)) + (lambda/(2*m)) * (sum(theta(2:end,:).^2));

% Summation's priority is lower than multiplication operator
% Matrix multiplication X'*(hypo-y) does the summation for vector (So delicate!!!)


% Set theta(1) to 0 without changing the original theta

grad = (1/m) * (X' * (hypo-y)) + (lambda/m) * [0; theta(2:end,:)];


% =========================================================================

grad = grad(:);

end
