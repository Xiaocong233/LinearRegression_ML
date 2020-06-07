% computes cost for linear regression
function J = linearCostFunction(X, y, theta)

  % number of training examples
  m = length(y);
  
  % cost initialization
  J = 0;
  
  % computes cost
  J = 1/(2*m) * sum((X*theta - y).^2);
  
end
