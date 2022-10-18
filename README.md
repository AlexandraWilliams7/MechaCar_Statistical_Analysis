# MechaCar_Statistical_Analysis
## Overview
## Purpose

## Linear Regression to Predict MPG
![deliv1](https://user-images.githubusercontent.com/105830665/196563413-370c2969-782c-4cdc-b0c8-8e154d8eff22.png)

### Summary
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Based of the signficiant value standard at 0.05, there are two variables that show a non-random amount of variance. The Vehicle-length and the ground_clearances are the two variables. The vehicle_length and ground_clearance p-values are 2.60e-12 and 5.21e-08, respectively. Both p-values are less than our 0.05 standard. 

2. Is the slope of the linear model considered to be zero? Why or why not?
The slope for the linear model is not considered to be zero. Since the intercept's p-value is also significantly less than the 0.05 standard the slope is not zero. Also, the slope is not zero based on the coefficients below :
    - vehicle_length: 6.267
    - vehicle_weight: 0.001
    - spoiler_angle: 0.069
    - ground_clearance: 3.546
    - AWD: -3.411

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Since the R-Squared of this model is .0715 or 71%, this model has a fairly high rate at predicting the mpg of the MechaCar.

