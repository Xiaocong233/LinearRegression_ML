% Trains linear regression given a dataset (X, y) 
% and a regularization parameter lambda
function [theta] = trainLinearReg(X, y, lambda)

  % Initialize Theta
  initial_theta = zeros(size(X, 2), 1); 

  % Create "short hand" for the cost function to be minimized
  costFunction = @(t) linearRegCostFunction(X, y, t, lambda);

  % Now, costFunction is a function that takes in only one argument
  options = optimset('MaxIter', 200, 'GradObj', 'on');

  % Minimize using fmincg
  theta = fmincg(costFunction, initial_theta, options);

end
