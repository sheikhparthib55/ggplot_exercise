library(tidyverse)
View(msleep)
names(msleep)
View(Orange)

Orange %>%
  filter(Tree != "2") %>%
  ggplot(aes(age,circumference)) +
  geom_point()+
  geom_smooth()+
  facet_wrap(~Tree)+
  #facet_wrap() use kora hoy category onujayi alada alada graph show korar jonno
  theme_bw()+
  labs(title="Tree age and circumference")


Orange %>%
  filter(Tree != "2" & Tree != "1") %>%
  ggplot(aes(age,circumference,colour = Tree)) +
  # alpha = 0.n use kora hoy transparent korar jonno
  geom_point(size=5,alpha = .3)+
  geom_line(size=1)+
  theme_minimal()+
  labs(title="Tree age and circumference")

  