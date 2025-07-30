library(tidyverse)
?BOD
data()
#
ggplot(data = BOD,
       mapping=aes(x = Time,
                   y = demand)) +
  geom_point(size=5)+
  geom_line(colour="red")
#
View(CO2)
CO2 %>%
  ggplot(aes(conc,uptake,colour=Treatment)) +
  geom_point(size=3,alpha=.5)+
  geom_smooth()

#
CO2 %>%
  ggplot(aes(Treatment,uptake))+
  geom_boxplot()+
  geom_point(aes(alpha=.5))+
  coord_flip()+
  labs(title="Nice boxplot")+
  theme_bw()

#
View(mpg)
mpg %>%
  ggplot(aes(displ,cty))+
  geom_point(aes(colour=drv,
                 size=trans),alpha=.5)+
  #coord_flip () kore hoy graph ke flip korar jonno
  coord_flip()+
  theme_dark()
