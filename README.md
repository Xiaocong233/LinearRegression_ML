## Description
Written in Octave/MATLAB, this repository contains a set of vectorized algorithms serving to compute basic linear regression. 

- polyFeatures
  - maps X (1D vector) into the p-th power

- linearCostFunction
  - outputs the result of the cost function for given arguments X, y and theta.
  
- linearRegCostFunction
  - computes the cost and gradient for regularized linear regression
  
- featureNormalize
  - outputs a new X with features normalized using (X - mean) / std
  
- gradientDescent
  - outputs the optimized theta(s) for the regression line of inputs of two data matrices (X, y), theta(s), a manual chosen alpha value (learning rate), and a number of iterations intended for gradient descent to run.
  - gradientDescent will invoke another function included, named computeCost, which computes the cost function for a given X, y, and theta values
  - if gradient descent appears to not be converging, check if alpha values are either too high (causing overshoot) or too low (slow to convergence)
  
- trainLinearReg
  - trains linear regression given a dataset (X, y) and a regularization parameter lambda
  
- normalEquation
  - computes the closed-form solution to linear regression using the normal equations.
  
- validationCurve
  - Generate the train and validation errors needed to plot a validation curve that we can use to select lambda

- learningCurve
  - generates a learning curve from the training and cross validation set errors 

## polyFeatures Usage
```
polyFeatures(X, p)
```
## linearCostFunction Usage
```
linearCostFunction(X, y, theta)
```
## linearRegCostFunction Usage
```
linearRegCostFunction(X, y, theta, lambda)
```
## featureNormalize Usage
```
featureNormalize(X)
```
## gradientDescent Usage
```
gradientDescent(X, y, theta, alpha, num_iters)
```
## trainLinearReg Usage
```
trainLinearReg(X, y, lambda)
```
## normalEquation Usage
```
normalEquation(X, y)
```
## validationCurve Usage
```
validationCurve(X, y, Xval, yval)
```
## learningCurve Usage
```
learningCurve(X, y, Xval, yval, lambda)
```
