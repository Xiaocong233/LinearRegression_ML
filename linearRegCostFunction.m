% Computes the cost and gradient for regularized linear regression
function [J, grad] = linearRegCostFunction(X, y, theta, lambda)

  % Initialize helper variables
  m = length(y);

  % Initialize cost and gradient to 0s
  J = 0;
  grad = zeros(size(theta));

  % Computes the regularized cost 
  J = 1/(2*m) * sum((X*theta - y).^2) ...
      + lambda / (2 * m) * sum(theta(2:end) .^ 2);

  % Compute the regularized gradients
  grad = 1/m * ((X * theta - y)' * X)' + lambda / m * theta;
  grad(1, :) = (1/m * ((X * theta - y)' * X)')(1, :);
  
  % Unroll gradients into a vector
  grad = grad(:);

end
