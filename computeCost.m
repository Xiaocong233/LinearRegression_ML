% computes cost for linear regression
function J = computeCost(X, y, theta)

  % number of training examples
  m = length(y);
  
  % cost initialization
  J = 0;
  
  % computer cost
  J = 1/(2*m) * sum((X*theta - y).^2);
  
end
