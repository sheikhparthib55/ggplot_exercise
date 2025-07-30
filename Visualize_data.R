library(tidyverse)
View(gapminder::gapminder)
gapminder::gapminder %>%
  filter(continent %in% c("Africa","Europe")) %>%
  filter(gdpPercap < 3000) %>%
  ggplot(aes(x=gdpPercap,
             y=lifeExp,
             size=pop,
             color=year))+
  geom_point()+
  facet_wrap(~continent)+
  labs(title="Explaination",
       x="GDP",
       y="Life")
