library(tidyverse)
install.packages("gganimate")
library(gganimate)
install.packages("babynames")
library(babynames)
View(babynames)
babynames %>%
  filter(name %in% c("James","Paul","Andrew","JOhn")) %>%
  filter(sex=="M") %>%
  ggplot(aes(year,n,
             group=name,
             colot=name))+
  geom_line(linewidth=1.5)+
  theme_bw()+
  labs(title="Popularity",
       color="Names")+
  transition_reveal(year)
