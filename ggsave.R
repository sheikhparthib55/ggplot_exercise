library(tidyverse)
View(mpg)
mpg %>%
  ggplot(aes(x=cty,fill=drv))+
  geom_density(alpha=.5)+
  theme_bw()

ggsave("mpg plot.png",
       width = 12,
       height = 8,
       units = "cm",
       dpi = 300)
