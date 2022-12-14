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
If we were to look at all the lots holistically, yes, the suspension coils meet the design specifications since the variance is under 100 pounts per square inch. But based on the second image above, we note that Lot #3 has a variance of 170.3 pounds, which is greater than the design spec.


## T-Tests on Suspension Coils
### All lots t-test
![all t-test](images/4-all-t-test.PNG)

### T-test per Lot
![lot t-test](images/5-lot-t-test.PNG)

 * *Briefly summarize your interpretation and findings for the t-test results.*
The p-values for the lots altogether are above our assumed significance level of 0.05%, which means that we do not have sufficient evidence to reject our null hypothesis that states that there is no statistical difference between the mean of all the lots and the population mean of 1,500 lbs.

However, when we calculate the one-sample t-test for each lot individually, we can see that the p-value for lot #3 only is less than 0.05%, which means that we accept our alternate hypothesis that there is indeed a statistical difference between the mean of lot #3 and the population mean of 1,500 lbs.


## Study Design: MechaCar vs Competition
* *Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.*  

I would conduct a test based on city fuel efficiency and horse power at MechaCar compared against comparitve cars fron a competitor's. I would be interested to see whether there is a statistical difference between the fuel efficiency and horse power between the two dealerships(?).

* *What metric or metrics are you going to test?*  
Fuel Efficiency & Horse Power

* *What is the null hypothesis or alternative hypothesis?*  
The Null Hypothesis would be that there is no difference between the fuel efficiency & horse power on cars at MechaCars and comparative cars at competitor's.
The Alternative Hypothesis would be that there is a statistical difference between the fuel efficiency & horse power on cars at MechaCars and similar cars at competitor's.

* *What statistical test would you use to test the hypothesis? And why?*  
The test I would use is similar test carried out in this challenge; one-sample t-test. Before performing the t-test, I would also make sure that a normality test like the Shapiro Wilk test is performed, so that I can know that the sample fits a normal distribution.

* *What data is needed to run the statistical test?*  
The data required would be datasets from both MechaCars and competitors, based on as many cars they each have (so the sample we use is ample enough) with mainly fuel efficiency (mpg) and horse power, for each respective cars.


