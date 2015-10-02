###########################################################
# Seatbelts from "Road Casualties in Great Britain 1969¨C84"
# Laurence & Claire
# Sep. 25th, 2015
###########################################################


# load the dataframe
data("Seatbelts")

# list the dataframe
Seatbelts

# get a general idea of the central tendency of "Driverskilled"
summary(Seatbelts[,1])
# get an idea of the deviation of "Driverskilled"
range(Seatbelts[,1])
sd(Seatbelts[,1])

# get a general idea of the central tendency of percentage of deaths
summary(Seatbelts[,1]/Seatbelts[,2]*100)
# get an idea of the deviation of percentage of deaths
range(Seatbelts[,1]/Seatbelts[,2]*100)
sd(Seatbelts[,1]/Seatbelts[,2]*100)

# compare the fluctuation of number of deaths and percentage of deaths 
par(mfrow=c(2,1))
plot(Seatbelts[,1], main="Fluctuation of the Number of Drivers Killed per Month during 1969-1984",
     ylab="Number of Drivers Killed")
plot(Seatbelts[,1]/Seatbelts[,2], main="Fluctuation of the Percentage of Drivers Killed per Month during 1969-1984",
     ylab="Percentage of Drivers Killed")
