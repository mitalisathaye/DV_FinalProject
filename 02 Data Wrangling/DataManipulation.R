averageincomebystate <- INCOME %>% group_by(STATE) %>% summarise(AvgIncome_State=mean(INCOME)) %>% arrange(desc(AvgIncome_State)) 

highestincomebycountyinstate <- INCOME %>% group_by(STATE) %>% summarise(HighestIncome=max(INCOME)) %>% arrange(desc(HighestIncome))

lowestincomebycountyinstate <- INCOME %>% group_by(STATE) %>% summarise(LowestIncome=min(INCOME)) %>% arrange(LowestIncome)


averagecrimebystate <- CRIME %>% group_by(STATE) %>% summarise(AvgCrime_State=mean(CRIME_OCCURANCES)) %>% arrange(desc(AvgCrime_State)) 

highestcrimebycountyinstate <- CRIME %>% group_by(STATE) %>% summarise(HighestCrime=max(CRIME_OCCURANCES)) %>% arrange(desc(HighestCrime))

lowestcrimeincountystate <- CRIME %>% group_by(STATE) %>% summarise(LowestCrime=min(CRIME_OCCURANCES)) %>% arrange(LowestCrime)


averageunemploymentbystate <- UNEMPLOYMENT %>% group_by(STATE) %>% summarise(AvgUnemployment_State=mean(UNEMPLOYMENT_RATE)) %>% arrange(desc(AvgUnemployment_State)) 

highestunemploymentbycountyinstate <- UNEMPLOYMENT %>% group_by(STATE) %>% summarise(HighestUnemployment=max(UNEMPLOYMENT_RATE)) %>% arrange(desc(HighestUnemployment))

lowestunemploymentbycountyinstate <- UNEMPLOYMENT %>% group_by(STATE) %>% summarise(LowestUnemployment=min(UNEMPLOYMENT_RATE)) %>% arrange(LowestUnemployment)


combineone <- full_join(averageincomebystate, averagecrimebystate,  by = "STATE")
mastertable <- full_join(combineone,averageunemploymentbystate, by = "STATE")
melttable <- melt(combineone, id=c("STATE"))