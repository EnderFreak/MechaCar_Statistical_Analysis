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
