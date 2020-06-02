% Generates a learning curve from the training and cross validation set errors 
function [error_train, error_val] = ...
    learningCurve(X, y, Xval, yval, lambda)
    
  % Initialize helper variable
  m = size(X, 1);

  % Initialize output error vectors to zeros
  error_train = zeros(m, 1);
  error_val   = zeros(m, 1);

  % Looping through training sample size from 1 to m 
  for i = 1:m
    % Train thetas for this specific training set with size i
    thetas = trainLinearReg(X(1:i, :), y(1:i), lambda);

    % Compute error for this specific training set
    [error_train(i), dummy] = linearRegCostFunction(X(1:i, :), y(1:i), thetas, 0);

    % Compute error for the cross validitation set using thetas obtained from this
    % training set with size i
    [error_val(i), dummy2] = linearRegCostFunction(Xval, yval, thetas, 0);
  endfor

end
