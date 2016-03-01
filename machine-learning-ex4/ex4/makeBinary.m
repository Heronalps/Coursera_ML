function [array] = makeBinary(vector, n)

% makeBinary function makes n-classifier into binary vectors with 1 if the
% sample belongs to the class and 0 if it doesn't.
%
% The vector should be number of samples with their class.
% n is the number of all classes.
% y is the 

m = size(vector,1);

%Construct a binary vector container
y_vector = (repmat(1:n,m,1));

%Loop through m inputs to make them binary
for i = 1:m
    y_vector(i,:) = (y_vector(i,:) == vector(i));
end

%Transpose to fit the requirement of aggregated vectors
array = y_vector';





% =========================================================================

end