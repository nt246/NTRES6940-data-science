# install.packages("devtools")
# devtools::install_github("covid19r/coronavirus")
library(coronavirus)

head(coronavirus)
View(coronavirus)
table(coronavirus$Country.Region)

library(dplyr)


# Here is an example of a summary total cases by region and type (top 20):

summary_df <- coronavirus %>% group_by(Country.Region, type) %>%
  summarise(total_cases = sum(cases)) %>%
  arrange(-total_cases)

summary_df %>% head(20) 



#Summary of new cases during the past 24 hours by country and type (as of 2020-04-03):
  
  library(tidyr)

coronavirus %>% 
  filter(date == max(date)) %>%
  select(country = Country.Region, type, cases) %>%
  group_by(country, type) %>%
  summarise(total_cases = sum(cases)) %>%
  pivot_wider(names_from = type,
              values_from = total_cases) %>%
  arrange(-confirmed)



