library(tidyverse)
View(starwars)

starwars %>%
  filter(hair_color %in% c("black","brown")) %>%
  drop_na(sex) %>%
  ggplot(aes(hair_color,fill=sex))+
  geom_bar(alpha=.4)+
  theme_bw()
