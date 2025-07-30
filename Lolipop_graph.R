library(tidyverse)
View(msleep)
msleep %>%
  group_by(order) %>%
  summarise(mean_sleep=mean(sleep_total)) %>%
  mutate(order=fct_reorder(order,mean_sleep)) %>%
  ggplot(aes(order,mean_sleep))+
  geom_point(size=4,
             colour="orange")+
  geom_segment(x=order,
               y=mean(msleep$sleep_total),
               xend=order,
               yend=mean_sleep,
               colour+"grey")
  