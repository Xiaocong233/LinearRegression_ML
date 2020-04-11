## Description
Written in Octave/MATLAB, this repository contains a set of vectorized algorithms serving to compute basic linear regression. 

- gradientDescent
  - outputs the optimized theta(s) for the regression line of inputs of two data matrices (X, y), theta(s), a manual chosen alpha value (learning rate), and a number of iterations intended for gradient descent to run.
  - gradientDescent will invoke another function included, named computeCost, which computes the cost function for a given X, y, and theta values
  - if gradient descent appears to not be converging, check if alpha values are either too high (causing overshoot) or too low (slow to convergence)
  
- computeCost
  - outputs the result of the cost function for given arguments X, y and theta.

## gradientDescent Usage
```
gradientDescent(X, y, theta, alpha, num_iters)
```
## computeCost Usage
```
computeCost(X, y, theta)
```
