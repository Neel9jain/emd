library(reshape2)
source("~/Data Science using R/Projects/emd/parameters.R")


## melting and reshaping the data for plotting 

Fuel_Rate_2019 <- melt(Fuel_Rate_2019,id="Months")
Fuel_Rate_2019 <- subset(Fuel_Rate_2019,!is.na(Fuel_Rate_2019$value))
Fuel_Rate_2019$Months <- factor(Fuel_Rate_2019$Months, levels = Months)

Fuel_Rate_2020 <- melt(Fuel_Rate_2020,id="Months")
Fuel_Rate_2020 <- subset(Fuel_Rate_2020,!is.na(Fuel_Rate_2020$value))
Fuel_Rate_2020$Months <- factor(Fuel_Rate_2020$Months, levels = Months)

Fuel_Rate_2021 <- melt(Fuel_Rate_2021,id="Months")
Fuel_Rate_2021 <- subset(Fuel_Rate_2021,!is.na(Fuel_Rate_2021$value))
Fuel_Rate_2021$Months <- factor(Fuel_Rate_2021$Months, levels = Months)




# Opening the Plotting device 

## Fuel_Rate_2019

png("Fuel_Rate_2019.png",width = 480, height = 480)

ggplot(Fuel_Rate_2019,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


## Fuel_Rate_2020

png("Fuel_Rate_2020.png",width = 480, height = 480)

ggplot(Fuel_Rate_2020,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


## Fuel_Rate_2021 
png("Fuel_Rate_2021.png",width = 480, height = 480)

ggplot(Fuel_Rate_2021,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


