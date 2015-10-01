###########################################################
# Seatbelts from "Road Casualties in Great Britain 1969¨C84"
# Laurence & Claire
###########################################################


#load the dataframe
data("Seatbelts")

#find the mean
summary(Seatbelts$Driverskilled)

#find the range
range(Seatbelts$Driverskilled)

#graph
plot(Seatbelts$Driverskilled)

#determine standard deviations
sd(Seatbelts$Driverskilled)

#create a boxplot
boxplot(Seatbelts$Driverskilled)

