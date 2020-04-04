## Description
Written in Octave/MATLAB, this vectorized algorithm serves to output optimized theta(s) for the regression line of inputs of two data matrices (X, y), theta(s), a manual chosen alpha value (learning rate), and a number of iterations intended for gradient descent to run.

# Tip
- if gradient descent appears to not be converging, check if alpha values are either too high (causing overshoot) or too low (slow to convergence)

## Usage
```
gradientDescent(X, y, theta, alpha, num_iters)
```
