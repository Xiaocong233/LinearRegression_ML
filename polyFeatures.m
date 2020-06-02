% Maps X (1D vector) into the p-th power
function [X_poly] = polyFeatures(X, p)
  
  % Initialize new returning polynomial X vector
  X_poly = zeros(numel(X), p);

  % Map features of x in each training example into higher dimensions of p
  for i = 1:p
    X_poly(:, i) = X .^ i;
  endfor

end
