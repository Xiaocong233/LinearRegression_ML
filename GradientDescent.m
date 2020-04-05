% Performs gradient descent to calculate for optimized theta
function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
  
  % Value Initializations
  m = length(y);
  J_history = zeros(num_iters, 1);

  for iter = 1:num_iters
      % Perform gradient descent to update theta
      theta = theta - alpha * 1/m * ((X*theta - y)'* X)';

      % Save the cost J in every iteration    
      J_history(iter) = computeCost(X, y, theta);
  end
  
end
