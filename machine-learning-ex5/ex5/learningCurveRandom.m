function [error_train, error_val] = ...
    learningCurveRandom(X, y, Xval, yval, lambda, MaxIter)
%LEARNINGCURVE Generates the train and cross validation set errors needed 
%to plot a learning curve
%   [error_train, error_val] = ...
%       LEARNINGCURVE(X, y, Xval, yval, lambda) returns the train and
%       cross validation set errors for a learning curve. In particular, 
%       it returns two vectors of the same length - error_train and 
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).
%
%   In this function, you will compute the train and test errors for
%   dataset sizes from 1 up to m. In practice, when working with larger
%   datasets, you might want to do this in larger intervals.
%

% Number of training examples
m = size(X, 1);

% You need to return these values correctly
% m rows for m examples, MaxIter columns for 50 random selection
error_train = zeros(m, 1);
error_val   = zeros(m, 1);

error_train_temp = zeros(m, MaxIter);
error_val_temp   = zeros(m, MaxIter);

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return training errors in 
%               error_train and the cross validation errors in error_val. 
%               i.e., error_train(i) and 
%               error_val(i) should give you the errors
%               obtained after training on i examples.
%
% Note: You should evaluate the training error on the first i training
%       examples (i.e., X(1:i, :) and y(1:i)).
%
%       For the cross-validation error, you should instead evaluate on
%       the _entire_ cross validation set (Xval and yval).
%
% Note: If you are using your cost function (linearRegCostFunction)
%       to compute the training and cross validation error, you should 
%       call the function with the lambda argument set to 0. 
%       Do note that you will still need to use lambda when running
%       the training to obtain the theta parameters.
%
% Hint: You can loop over the examples with the following:
%
%       for i = 1:m
%           % Compute train/cross validation errors using training examples 
%           % X(1:i, :) and y(1:i), storing the result in 
%           % error_train(i) and error_val(i)
%           ....
%           
%       end
%

% ---------------------- Sample Solution ----------------------

theta = zeros(size(X,2));


for i = 1:m
    
    
    for j = 1:MaxIter

        % Generate ramdom numbers

        pick = randperm(i,round((1/2)*i));
        X_rand = X(pick,:);
        y_rand = y(pick,:);
        %Xval_rand = Xval(pick,:);
        %yval_rand = yval(pick,:);
        
        % Train the model and record the 50 result in two-dimensional
        % matrix
        
        theta = trainLinearReg(X_rand,y_rand,lambda);

        error_train_temp(i,j) = linearRegCostFunction(X_rand,y_rand,theta,0);

        error_val_temp(i,j) = linearRegCostFunction(Xval, yval, theta, 0);
        
    end
    
    error_train(i,1) = mean(error_train_temp(i,:));
    error_val(i,1) = mean(error_val_temp(i,:));
    
end






% -------------------------------------------------------------

% =========================================================================

end
