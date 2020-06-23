## Description
Written in **Octave/MATLAB**, this repository contains a set of vectorized algorithms serving to compute basic linear regression. 

## Linear Regression Functions
```
[X_poly] = polyFeatures(X, p)
```
  - maps `X` (1D vector) into the `p`-th power

```
J = linearCostFunction(X, y, theta)
```
  - outputs the result of the cost function for given arguments `X`, `y` and `theta`.

```
[J, grad] = linearRegCostFunction(X, y, theta, lambda)
```
  - computes the cost and gradient for regularized linear regression

```
[X_norm, mu, sigma] = featureNormalize(X)
```
  - outputs a new X with features normalized using (X - mean) / std

```
[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
```
  - outputs the optimized theta(s) for the regression line of inputs of two data matrices (`X`, `y`), `theta(s)`, a manual chosen `alpha` value (learning rate), and a number of iterations intended for gradient descent to run.
  - gradientDescent will invoke another function included, named computeCost, which computes the cost function for a given X, y, and theta values
  - if gradient descent appears to not be converging, check if alpha values are either too high (causing overshoot) or too low (slow to convergence)
  
```
[theta] = trainLinearReg(X, y, lambda)
```
  - trains linear regression given a dataset (`X`, `y`) and a regularization parameter `lambda`

```
[theta] = normalEqn(X, y)
```
  - computes the closed-form solution to linear regression using the normal equations.

```
[lambda_vec, error_train, error_val] = validationCurve(X, y, Xval, yval)
```
  - Generate the train and validation errors needed to plot a validation curve that we can use to select lambda

```
[error_train, error_val] = learningCurve(X, y, Xval, yval, lambda)
```
  - generates a learning curve from the training and cross validation set errors 
