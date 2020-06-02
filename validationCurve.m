% Generate the train and validation errors needed to
% plot a validation curve that we can use to select lambda
function [lambda_vec, error_train, error_val] = ...
    validationCurve(X, y, Xval, yval)

  % Set the lambda values to be tested
  lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';

  % Initialize error vectors to be zeros
  error_train = zeros(length(lambda_vec), 1);
  error_val = zeros(length(lambda_vec), 1);

  % Looping through each lambda value and train the training set and 
  % the cross validitation set to compute for corresponding errors
  for i = 1:length(lambda_vec)
    lambda = lambda_vec(i);
    
    % Train thetas for this specific training set with lambda i
    thetas = trainLinearReg(X, y, lambda);
    
    % Compute error for this specific training set with thetas computed from lambda i
    [error_train(i), dummy] = linearRegCostFunction(X, y, thetas, 0);

    % Compute error for the cross validitation set using thetas obtained from this
    % training set with thetas computed from lambda i
    [error_val(i), dummy2] = linearRegCostFunction(Xval, yval, thetas, 0);
  endfor

end
