library(reshape2)
source("~/Data Science using R/Projects/emd/parameters.R")


## melting and reshaping the data for plotting 

CDI_Rate_2019 <- melt(CDI_Rate_2019,id="Months")
CDI_Rate_2019 <- subset(CDI_Rate_2019,!is.na(CDI_Rate_2019$value))
CDI_Rate_2019$Months <- factor(CDI_Rate_2019$Months, levels = Months)

CDI_Rate_2020 <- melt(CDI_Rate_2020,id="Months")
CDI_Rate_2020 <- subset(CDI_Rate_2020,!is.na(CDI_Rate_2020$value))
CDI_Rate_2020$Months <- factor(CDI_Rate_2020$Months, levels = Months)


CDI_Rate_2021 <- melt(CDI_Rate_2021,id="Months")
CDI_Rate_2021 <- subset(CDI_Rate_2021,!is.na(CDI_Rate_2021$value))
CDI_Rate_2021$Months <- factor(CDI_Rate_2021$Months, levels = Months)




# Opening the Plotting device 

## CDI Rate 2019

png("CDI_Rate_2019.png",width = 480, height = 480)

ggplot(CDI_Rate_2019,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


## CDI Rate 2020

png("CDI_Rate_2020.png",width = 480, height = 480)

ggplot(CDI_Rate_2020,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


## CDI Rate 2021
png("CDI_Rate_2021.png",width = 480, height = 480)

ggplot(CDI_Rate_2021,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


