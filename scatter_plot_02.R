library(tidyverse)
msleep
View(msleep)
msleep %>%
  filter(bodywt < 2) %>%
  ggplot(aes(bodywt,brainwt))+
  geom_point(aes(color=sleep_total,
                 size=awake))+
  geom_smooth()+
  labs(title="brain and bodywt")+
  theme_get()
