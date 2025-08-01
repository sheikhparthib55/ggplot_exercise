library(tidyverse)
library(forcats)
View(msleep)
msleep %>%
  group_by(order) %>%
  summarise(mean_sleep=mean(sleep_total)) %>%
  mutate(order=fct_reorder(order,mean_sleep)) %>%
  ggplot(aes(order,mean_sleep)) +
  labs(title="Sleep time",
       x="",
       y="Hours")+
  theme(axis.text.x=
          element_text(angle=45,
                       vjust=1,
                       hjust=1),
        axis.text.y=element_text(face="bold"),
        plot.title = element_text(hjust=.5,
                                  size=22,
                                  face="bold"))+
  theme(axis.text.x=element_text(color="white"),
        axis.text.y=element_text(color="white"),
        axis.title.y=element_text(color="lightblue"),
        plot.title=element_text(color="lightblue"),
        axis.ticks = element_line(color="orange"),
        panel.background = element_rect(fill = "black"),
        plot.background = element_rect(fill="black"),
        legend.position = "none",
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  geom_hline(yintercept = mean(msleep$sleep_total),
             color="yellow",
             size=1)+
  geom_segment(aes(x=order,
                   y=mean(msleep$sleep_total),
  #ekhane y-axis er rekha ta shuru hoyeche total mean er dag theke ar shesh hoyeche particular mean er point e giye
                   xend=order,
                   yend=mean_sleep),
               color="lightblue")+
  geom_point(aes(color=mean_sleep),
             size=4)+
  #scale_color_gradient use kora hoy gradually color set korar jonno
  scale_color_gradient(low="hotpink",
                       high="orange")+
  annotate("text",
           x=4,
           y=max(msleep$sleep_total) - 4,
           label="Average sleep\nfor all mammals",
           color="gold",
           size=4,
           fontface="bold",
           hjust=0)+
  geom_curve(aes(x=3.7,
                 y=max(msleep$sleep_total) - 5,
                 xend=1.5,
                 yend = mean(msleep$sleep_total)),
             #xend,yend diye asole kono kichu kothay shesh hobe seta define kore deoa hoy
             color="pink",
             curvature = 0.5,
             size=.5,
             arrow = arrow(length =
                             unit(.07,"npc"),
                  #type = closed/open korle arrow er style change hoy
                           type = "closeed"))
  
