library(tidyverse)
View(msleep)
names(msleep)
#barplot kora hoy categorical variable er jonno
msleep %>%
  drop_na(vore) %>%
  ggplot(aes(x=vore))+
  geom_bar(fill="#97B")+
  theme_grey()+
  labs(title="Numbers of Observation")+
  coord_flip()
#Histigram kora hoy numeric er jonno
msleep %>%
  ggplot(aes(awake))+
  geom_histogram()+
  theme_dark()
