library(reshape2)
source("~/Data Science using R/Projects/emd/parameters.R")


## melting and reshaping the data for plotting 

Productivity_2019 <- melt(Productivity_2019,id="Months")
Productivity_2019 <- subset(Productivity_2019,!is.na(Productivity_2019$value))
Productivity_2019$Months <- factor(Productivity_2019$Months, levels = Months)

Productivity_2020 <- melt(Productivity_2020,id="Months")
Productivity_2020 <- subset(Productivity_2020,!is.na(Productivity_2020$value))
Productivity_2020$Months <- factor(Productivity_2020$Months, levels = Months)

Productivity_2021 <- melt(Productivity_2021,id="Months")
Productivity_2021 <- subset(Productivity_2021,!is.na(Productivity_2021$value))
Productivity_2021$Months <- factor(Productivity_2021$Months, levels = Months)






# 
# Opening the Plotting device 

## productivity 2019

png("Productivity_2019.png",width = 480, height = 480)

ggplot(Productivity_2019,            
                          aes(x = Months,
                              y = value,group=variable,
                              color = variable)) +  geom_line()
#Making the device off 
dev.off()



## productivity 2020

png("Productivity_2020.png",width = 480, height = 480)

ggplot(Productivity_2020,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()



## productivity 2021 
png("Productivity_2021.png",width = 480, height = 480)

ggplot(Productivity_2021,            
       aes(x = Months,
           y = value,group=variable,
           color = variable)) +  geom_line()
#Making the device off 
dev.off()


