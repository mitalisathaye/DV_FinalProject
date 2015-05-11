averageincomebystate %>% ggplot(aes(x=STATE, y= AvgIncome_State)) + geom_point()

melttable %>% ggplot(aes(x=STATE, y= value, color=variable)) + geom_point()

