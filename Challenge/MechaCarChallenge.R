#######Deliverable 1##########
#load packages
library(tidyverse)
library(dplyr)

#read csv file 
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
head(MechaCar_mpg)

#linear regression with all 6 columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

#determine p-value and r-squared with summary function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))


#### Deliverable 2####
#read csv file
Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#create total summary for mean, median, variance, and standard deviation of the PSI
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI),SD = sd(PSI), .groups = 'keep')

#create a lot summary with the group_by function 
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep')

#### Deliverable 3####
#t.test the the sample against the population mean
t.test(Suspension_Coil$PSI, mu=1500)

#t.test each lot against population mean
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
