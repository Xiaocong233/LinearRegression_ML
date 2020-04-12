% outputs new X with features normalized using (X - mean) / std
function [X_norm, mu, sigma] = featureNormalize(X)

  % value initializations
  X_norm = X;
  mu = zeros(1, size(X, 2));
  sigma = zeros(1, size(X, 2));

  % computing mus(means), sigmas(standard deviation) for X
  for column = 1 : size(X, 2)
    mu(:, column) = mean(X(:, column));
    sigma(:, column) = std(X(:, column));
  endfor
  
  % normalizing X
  for i = 1 : size(X, 1);
    for j = 1 : size(X, 2);
      X_norm(i, j) = (X(i, j) - mu(j)) / sigma(j);
    endfor
  endfor
  
end
