library(tidyverse)
View(mtcars)
mtcars %>%
  ggplot(aes(wt,mpg))+
  geom_point(size=4,
             colour="pink",
             alpha=0.8)+
  labs(title="Weight vs Miles per Gallon",
       x="Weight",
       y="Miles per Gallon")+
  theme_dark()
###
View(Orange)
Orange %>%
  ggplot(aes(age,circumference,
             color=Tree))+
  geom_line()+
  labs(title="Tree",
       x="Age",
       y="Circumference")+
  theme_linedraw()
###
View(mpg)
mpg %>%
  ggplot(aes(cty))+
  geom_histogram(binwidth=2,
  #histogram e Y-axis e count thake
                 fill="steelblue",
                 alpha=1)+
  labs(title="Efficiency",
       x="miles",
       y="cars")+
  theme_classic()
###
mpg %>%
  ggplot(aes(cty))+
  # Density graph e Y-axis e probability show thake
  geom_density(fill="steelblue",
              alpha=1)+
  labs(title="Efficiency",
       x="miles",
       y="cars")+
  theme_classic()

###
mpg %>%
  filter(cty < 25) %>%
  ggplot(aes(cty,fill=drv))+
  geom_boxplot(alpha=0.5)+
  labs(title="Cars in the city",
       x="Miles",
       y="cars")+
  theme_bw()
