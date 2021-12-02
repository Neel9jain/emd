library(reshape2)
source("~/Data Science using R/Projects/emd/parameters.R")


## melting and reshaping the data for plotting 

Nut_Coke_Rate_2019 <- melt(Nut_Coke_Rate_2019,id="Months")
Nut_Coke_Rate_2019 <- subset(Nut_Coke_Rate_2019,!is.na(Nut_Coke_Rate_2019$value))
Nut_Coke_Rate_2019$Months <- factor(Nut_Coke_Rate_2019$Months, levels = Months)

Nut_Coke_Rate_2020 <- melt(Nut_Coke_Rate_2020,id="Months")
Nut_Coke_Rate_2020 <- subset(Nut_Coke_Rate_2020,!is.na(Nut_Coke_Rate_2020$value))
Nut_Coke_Rate_2020$Months <- factor(Nut_Coke_Rate_2020$Months, levels = Months)

Nut_Coke_Rate_2021 <- melt(Nut_Coke_Rate_2021,id="Months")
Nut_Coke_Rate_2021 <- subset(Nut_Coke_Rate_2021,!is.na(Nut_Coke_Rate_2021$value))
Nut_Coke_Rate_2021$Months <- factor(Nut_Coke_Rate_2021$Months, levels = Months)



# Opening the Plotting device 

## Nut_Coke_Rate_2019

png("Nut_Coke_Rate_2019.png",width = 480, height = 480)

ggplot(Nut_Coke_Rate_2019,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


## Nut_Coke_Rate_2020

png("Nut_Coke_Rate_2020.png",width = 480, height = 480)

ggplot(Nut_Coke_Rate_2020,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


## Nut_Coke_Rate_2021 
png("Nut_Coke_Rate_2021.png",width = 480, height = 480)

ggplot(Nut_Coke_Rate_2021,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


