library(reshape2)
source("~/Data Science using R/Projects/emd/parameters.R")


## melting and reshaping the data for plotting 

Coke_Rate_2019 <- melt(Coke_Rate_2019,id="Months")
Coke_Rate_2019 <- subset(Coke_Rate_2019,!is.na(Coke_Rate_2019$value))
Coke_Rate_2019$Months <- factor(Coke_Rate_2019$Months, levels = Months)

Coke_Rate_2020 <- melt(Coke_Rate_2020,id="Months")
Coke_Rate_2020 <- subset(Coke_Rate_2020,!is.na(Coke_Rate_2020$value))
Coke_Rate_2020$Months <- factor(Coke_Rate_2020$Months, levels = Months)

Coke_Rate_2021 <- melt(Coke_Rate_2021,id="Months")
Coke_Rate_2021 <- subset(Coke_Rate_2021,!is.na(Coke_Rate_2021$value))
Coke_Rate_2021$Months <- factor(Coke_Rate_2021$Months, levels = Months)




# Opening the Plotting device 

## Coke Rate 2019

png("Coke_Rate_2019.png",width = 480, height = 480)

ggplot(Coke_Rate_2019,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


## Coke Rate 2020

png("Coke_Rate_2020.png",width = 480, height = 480)

ggplot(Coke_Rate_2020,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


## Coke Rate 2021
png("Coke_Rate_2021.png",width = 480, height = 480)

ggplot(Coke_Rate_2021,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


