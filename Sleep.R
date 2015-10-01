### Week 2: Files, File Structures, Version Control, & Collaboration ###
### Laurence & Claire ###

#load the dataframe
data(sleep)
#eyeball it
View(sleep)
#read the description of the experiment
?sleep
#eyeball a histogram
hist(sleep$group)
#see the varaince
var(sleep) 
#find the range
range(sleep$extra)
#find the mean
summary(sleep$extra)


### Additional Working to find boxplot ###
boxplot(sleep$extra) <- if(group=1)

sleep_controlgroup <- subset(sleep, sleep$group==1)
sleep_controlgroup
sleep_experimentgroup <- subset(sleep, sleep$group==2)
sleep_experimentgroup

View(sleep_experimentgroup)
boxplot(sleep_controlgroup$extra)

library(ggplot2)


#facet_wrap
