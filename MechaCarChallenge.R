#PART 1 : LINEAR REGRESSION TO PREDICT MPG

#3 - load the dplyr package (imported tidyverse, since dplyr is part of this library)
#library(tidyverse)
library(dplyr)

#4 - import csv file as a df
mpg_table <- read.csv(file = "MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

#5 - perform multi-linear regression on mpg based on the other vars
mecha_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_table)

#6 - find p-value and r-squared val for the linear regression
summary(mecha_model)


#PART 2 : CREATE VISUALIZATIONS FOR THE TRIP ANALYSIS

#2 - import csv file as a table
coil_table <- read.csv(file = "Suspension_Coil.csv", check.names=F, stringsAsFactors = F)

#3 - create summary df to get measures of central tendency for the PSI metrics
total_summary <- coil_table %>% summarize(Mean_PSI = mean(PSI),
                               Median_PSI = median(PSI),
                               Variance = var(PSI),
                               Std_Dev = sd(PSI))

#4 - create summary df per lot with central measures of tendency
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI),
                                                                       Median_PSI = median(PSI),
                                                                       Variance = var(PSI),
                                                                       Std_Dev = sd(PSI))

#PART 3 : T-TESTS ON SUSPENSION COILS

#1 - t-test if psi across ALL manuf. lots is statistically different from pop. mean of 1,500lbs per square inch
#test for normality first
shapiro.test(coil_table$PSI)

t.test(log10(coil_table[["PSI"]]), mu=mean(log10(1500)))

#2 - 3 more t-tests per lot, using subset to group lots, to see if statistically different from pop. mean
#create subsets to store each lot in vars for easier reading
coil_lot1 <- subset(coil_table, Manufacturing_Lot == "Lot1")
coil_lot2 <- subset(coil_table, Manufacturing_Lot == "Lot2")
coil_lot3 <- subset(coil_table, Manufacturing_Lot == "Lot3")

#test for normality before t-tests
shapiro.test(coil_lot1$PSI)
shapiro.test(coil_lot2$PSI)
shapiro.test(coil_lot3$PSI)

t.test(log10(coil_lot1[["PSI"]]), mu=mean(log10(1500)))
t.test(log10(coil_lot2[["PSI"]]), mu=mean(log10(1500)))
t.test(log10(coil_lot3[["PSI"]]), mu=mean(log10(1500)))













