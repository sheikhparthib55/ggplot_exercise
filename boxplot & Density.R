library(tidyverse)
View(msleep)
names(msleep)

msleep %>%
  drop_na(vore) %>%
  ggplot(aes(vore,sleep_total))+
  geom_boxplot()+
  #coord_flip() use kore graph ghuriye deoa jay x-axis ke y-axis e transform kora jay
  coord_flip()+
  labs(title="A histogram of vore")

msleep %>%
  drop_na(vore) %>%
  ggplot(aes(sleep_total))+
  geom_density()+
  facet_wrap(~vore)+
  theme_bw()


msleep %>%
  drop_na(vore) %>%
  filter(vore %in% c("carni","omni")) %>%
  ggplot(aes(sleep_total,fill=vore))+
  geom_density(alpha=.5)+
  theme_bw()
