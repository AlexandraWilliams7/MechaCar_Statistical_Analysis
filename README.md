# MechaCar_Statistical_Analysis
## Overview
This analysis was done as a statsical analysis for the MechaCar. There were Linear regressions and t-test ran on several metrics of the car. 
## Purpose
This was done using the following skills:

- R, RStudio and RScript
- VS Code
- GitHub

## Linear Regression to Predict MPG
![deliv1](https://user-images.githubusercontent.com/105830665/196563413-370c2969-782c-4cdc-b0c8-8e154d8eff22.png)

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

## Summary Statistics on Suspension Coils
![deliv2 1](https://user-images.githubusercontent.com/105830665/196772875-2f164f6d-d92e-475d-808e-8406a78c746d.png)

![deliv2 2](https://user-images.githubusercontent.com/105830665/196772985-92022786-7910-403f-8809-3bbf8282c0b6.png)

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Base on the variance for the total summary, the variance was 62 for the suspension coils. the Total summary variance is less than 100 pounds per square inch, 62<100. Now if the lot summary is used, Lot 3 is the only lot that variance is high. The variance for Lot 3 is 170 which is greater than the 100 pounds per square inch, 170 > 100. So the suspension coils in lot 3 would not be up to design specifications.

## T-Tests on Suspension Coils
1. T-test on total sample 

![deliv3 1](https://user-images.githubusercontent.com/105830665/197021852-21e74a4e-3d82-4539-84d8-440bac5947fa.png)

This T-test shows a p-value of 0.06028. Using the 0.05 standard, we fail to reject the null hypothesis because 0.06 > 0.05.

2. T-test for each lot 
- **LOT 1**
![deliv3 2](https://user-images.githubusercontent.com/105830665/197022327-6621ca8e-6c7f-4306-806b-4b2921851dcf.png)

For Lot 1 the p-value is 1. Since 1 > 0.05, we fail to reject  the null hypothesis.

- **LOT 2**
![deliv3 3](https://user-images.githubusercontent.com/105830665/197022670-623ca170-170d-4a72-b92f-1c62983048a8.png)

For Lot 2 the p-value is .61. Since .61 > 0.05, we fail to reject  the null hypothesis.

- **LOT 3** 
![deliv3 4](https://user-images.githubusercontent.com/105830665/197023560-80bff681-b39d-44d5-98db-6dd17c2e93eb.png)

For Lot 3 the p-value is .04 . Since .04 < 0.05, we can reject  the null hypothesis.

## Study Design: MechaCar vs Competition
Here we will expand upon our study of the MechaCar. The MechaCar will be compared to its competition. 

1. What metric or metrics are you going to test?

There are plenty of metrics that can be tested. With today's economy consumers are more concerned with getting the best for their money. So with that in mind the metrics MechaCar and competitors should be tested on are:
        - cost
        - fuel efficiency 

2. What is the null hypothesis or alternative hypothesis?

- Null hypothesis: 

There is no statistical difference between cost of the MechaCar and its competition.

- Alternative hypothesis: 

There is a statistical difference between the cost of the MechaCar and its competition. 

- Null hypothesis: 

There is no statistical difference between fuel efficiency of the MechaCar and its competition.

- Alternative hypothesis: 

There is a statistical difference between the fuel efficiency of the MechaCar and its competition. 

3. What statistical test would you use to test the hypothesis? And why?

A two- sample t- test or ANOVA test should be used. This is because there a multiple samples being used, a sample from the MechaCar and samples for competitors. 

4. What data is needed to run the statistical test?

If possible a sample of at least 50 for the mechaCar and a sample of at least 50 for each of its closest competitors. the sample should include the price of the cars and all factors that affect fuel effiency. 

