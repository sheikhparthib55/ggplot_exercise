library(tidyverse)
?geom_errorbar
?ToothGrowth
View(ToothGrowth)

ToothGrowth %>%
  filter(supp=="VC") %>%
  mutate(dose=as.factor(dose)) %>%
  group_by(dose) %>%
  summarise(mean_len=mean(len),
            sd_len=sd(len)) %>%
  ggplot(aes(dose,mean_len))+
  geom_point(size=3,
             color="blue")+
  geom_errorbar(aes(x=dose,
                    ymin= mean_len-sd_len,
                    ymax= mean_len+sd_len),
                width=.05)+
  labs(title="how looks like errorbar")
  
ToothGrowth %>%
  filter(supp=="VC") %>%
  mutate(dose=as.factor(dose)) %>%
  group_by(dose) %>%
  summarise(mean_len=mean(len),
            sd_len=sd(len)) %>%
  ggplot(aes(dose,mean_len))+
  geom_bar(stat="identity",
             fill="skyblue",
             alpha=0.7)+
  geom_errorbar(aes(x=dose,
                    ymin= mean_len-sd_len,
                    ymax= mean_len+sd_len),
                width=.05)+
  labs(title="how looks like errorbar")

