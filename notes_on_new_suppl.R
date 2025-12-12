## note on retained scale of effect per trait

option_1 <- ggplot(data) + 
  geom_boxplot(aes(response_name,urban_scale))+
  scale_x_discrete("trait") + 
  scale_y_continuous("spatial scale of effect retained")

option_2 <- data |> 
  ggplot()+geom_bar(aes(response_name,fill=urban_scale,group=urban_scale),position="fill")+
  scale_fill_viridis_c() +
  scale_x_discrete("trait") + 
  scale_y_continuous("proportion of effect sizes")

option_3 <- data |> 
  ggplot()+geom_histogram(aes(urban_scale))+
  facet_grid(row=vars(response_name))+
  scale_x_continuous("spatial scale of effect retained") + 
  scale_y_continuous("Number of effect sizes")


library(patchwork)

option_1|option_2|option_3
