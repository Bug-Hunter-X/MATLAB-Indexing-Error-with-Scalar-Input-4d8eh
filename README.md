# MATLAB Indexing Error with Scalar Input

This repository demonstrates a common MATLAB error related to incorrect indexing when dealing with scalar inputs to a function that expects an array.  The `bug.m` file contains the faulty code, which generates an error if a scalar is passed as input. The `bugSolution.m` file provides a corrected version. 

## Problem Description

The function `myFunction` in `bug.m` attempts to process an input array, applying different operations based on the values. However, when a scalar is input, the `length` function returns 1, and the loop attempts to access indices that are beyond the bounds of the array, resulting in an error.

## Solution

The solution in `bugSolution.m` handles the scalar case explicitly by adding a check for `isscalar` before performing array operations. If the input is a scalar, appropriate calculations are done without any attempt to index into an array. 

## How to Reproduce

1. Clone this repository.
2. Open MATLAB.
3. Navigate to the directory containing `bug.m`.
4. Run `bug.m` with both an array input and a scalar input. Observe the error when using a scalar input. 
5. Repeat steps 3 and 4 with `bugSolution.m` to see the corrected behaviour.
