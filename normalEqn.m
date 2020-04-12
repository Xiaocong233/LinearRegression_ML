% computes the closed-form solution to linear 
% regression using the normal equations.
function [theta] = normalEqn(X, y)
  
% value initialization  
theta = zeros(size(X, 2), 1);

% theta calculation
theta = pinv(X' * X) * X' * y

end
