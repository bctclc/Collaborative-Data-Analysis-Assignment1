### Week 2: Files, File Structures, Version Control, & Collaboration ###
### Laurence & Claire ###

#load the dataframe
data(sleep)
#eyeball it
View(sleep)
#read the description of the experiment
?sleep
#eyeball a histogram
##the original command hist(sleep$group) didn't work, since its class is factor, not numeric
hist(sleep$extra, 
     main = "change in hours of sleep for whole sample", 
     xlab = "extra sleep hours"
     )
##alternatively this could work, but not very meaningful since the values are either 1 or 2
hist(as.numeric(sleep$group))
#see the varaince
var(sleep) 
#find the range
range(sleep$extra)
#find the mean
summary(sleep$extra)

#use a dynamic-link to Claire's file:
source(UKDriverDeaths.R)




### Laurence's additional work to try and get a bboxplot ###
boxplot(sleep$extra) #<- if(group=1) didn't work?
sleep_controlgroup <- subset(sleep, sleep$group==1)
sleep_controlgroup
sleep_experimentgroup <- subset(sleep, sleep$group==2)
sleep_experimentgroup
View(sleep_experimentgroup)
boxplot(sleep_controlgroup$extra)
##overlapping histogram by group
hist(sleep_controlgroup$extra,
     col=rgb(1,0,0,0.5), xlim=c(-2, 6), 
     main = "change in hours of sleep by group", xlab = "extra sleep hours")
hist(sleep_experimentgroup$extra, col=rgb(0,0,1,0.5), add=T)
library(ggplot2)
#investigate the facet_wrap command
