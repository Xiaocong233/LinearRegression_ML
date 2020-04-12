## Description
Written in Octave/MATLAB, this repository contains a set of vectorized algorithms serving to compute basic linear regression. 

- computeCost
  - outputs the result of the cost function for given arguments X, y and theta.
  
- featureNormalize
  - outputs a new X with features normalized using (X - mean) / std
  
- gradientDescent
  - outputs the optimized theta(s) for the regression line of inputs of two data matrices (X, y), theta(s), a manual chosen alpha value (learning rate), and a number of iterations intended for gradient descent to run.
  - gradientDescent will invoke another function included, named computeCost, which computes the cost function for a given X, y, and theta values
  - if gradient descent appears to not be converging, check if alpha values are either too high (causing overshoot) or too low (slow to convergence)
  
- normalEquation
  - computes the closed-form solution to linear regression using the normal equations.

## computeCost Usage
```
computeCost(X, y, theta)
```
## featureNormalize Usage
```
featureNormalize(X)
```
## gradientDescent Usage
```
gradientDescent(X, y, theta, alpha, num_iters)
```

## normalEquation Usage
```
normalEquation(X, y)
```
