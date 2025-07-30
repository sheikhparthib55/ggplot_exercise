library(tidyverse)
library(gapminder)
View(gapminder)
gapminder %>%
  filter(gdpPercap < 40000 &
           continent != "Ocenia") %>%
  ggplot(aes(gdpPercap,lifeExp,
             color=continent))+
  geom_point(shape="square",
             alpha=.4,
             size=2)+
  facet_wrap(~continent,
             nrow=3,
             ncol=2,
             strip.position="bottom")+
  theme_bw()+
  labs(title="Graph")
