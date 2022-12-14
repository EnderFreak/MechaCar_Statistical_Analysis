# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![linear regression for mpg](images/1-linear-regression-mpg.PNG)

* *Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?*  
  Vehicle length, ground clearance (as well as intercept) provided a non-random amount of variance to the mpg values in the dataset. This means that the vehicle length and ground clearance have a significant impact on the mpg, compared to AWD, spoiler angle and vehicle weight where those variables' p-values are greater than our assumed significance level of 0.05- which means they are most likely to contribute a random variance to the mpg values.
  
* *Is the slope of the linear model considered to be zero? Why or why not?*  
  The slope of the linear model is not considered to be 0 because our p-value is 5.35 x 10^-11, which is much smaller than our significance level of 0.05%.
  
 * *Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?*  
  Yes, this linear model predicts mpg values of MechaCar prototypes pretty effectively; which means that ~71.5% of all mpg predictions will be correct based on the variables provided or at least one fo the independent variables provided.
  
 ## Summary Statistics on Suspension Coils
 ### Overall Summary
 ![total summary](images/2-total-summary.PNG)
 
 ### Summary by Lot number
 ![lot summary](images/3-lot-summary.PNG)
  
 * *The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?*  
 If we were to look at all the lots holistically, yes, the suspension coils meet the design specifications since the
