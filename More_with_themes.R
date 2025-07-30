library(tidyverse)
mpg %>%
  filter(cty < 25) %>%
  ggplot(aes(cty,fill=drv))+
  geom_boxplot(alpha=0.5)+
  labs(title="Cars in the city",
       x="Miles",
       y="cars")+
  theme_bw()+
  theme(plot.title =
          element_text(color="steelblue",
                       family="Comic Sons MS",
                       face="bold",
                       hjust=0.5,
                       size=rel(2)))+
  theme(axis.title.x=
          element_text(face="bold.italic",
                       color="red",
                       size=16)) +
  theme(axis.text = 
          element_text(face="bold.italic",
                       color="blue",
                       size=22))+
  theme(axis.ticks.y = 
          element_line(size = 3,
                       color="hotpink"))+
  theme(axis.text = 
          element_text(angle=45,hjust=1))
  
     
