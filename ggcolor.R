install.packages("RColorBrewer")
library(RColorBrewer)
display.brewer.all(colorblindFriendly = TRUE)
library(tidyverse)
View(mpg)
mpg %>%
  ggplot(aes(displ,hwy,color=drv))+
  geom_jitter(size=5,color="steelblue")+
  theme_minimal()
  
