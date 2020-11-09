install.packages("gridExtra")
library(gridExtra)
library(gapminder)
library(tidyverse)


gapminder %>% 
  count(continent)

char <- gapminder %>% 
  mutate(continent = as.character(continent))

class(char$continent)

nlevels(gapminder$country)


nlevels(gapminder$country)
#> [1] 142
h_countries <- c("Egypt", "Haiti", "Romania", "Thailand", "Venezuela")
h_gap <- gapminder %>%
  filter(country %in% h_countries)
nlevels(h_gap$country)

h_gap <- gapminder %>%
  filter(country %in% h_countries) 

h_gap %>% 
  ggplot(aes(year, lifeExp, color = country)) +
  geom_line()



h_gap_dropped <- h_gap %>% 
  droplevels()
nlevels(h_gap_dropped$country)



gapminder %>% 
  mutate(continent = fct_infreq(continent), continent = fct_rev(continent)) %>% 
  .$continent

gapminder %>% 
  mutate(continent = fct_infreq(continent)) %>% 
  ggplot(aes(continent)) + 
  geom_bar() +
  coord_flip()

gapminder %>% 
  ggplot(aes(fct_infreq(continent))) + 
  geom_bar() +
  coord_flip()

gapminder %>% 
  ggplot(aes(continent)) + 
  geom_bar() + 
  coord_flip()



# Ordering by another variable --------------------------------------------

gap_asia_2007 <- gapminder %>% filter(year == 2007, continent == "Asia")
ggplot(gap_asia_2007, aes(x = lifeExp, y = country)) + geom_point()

ggplot(gap_asia_2007, aes(x = lifeExp, y = fct_reorder(country, lifeExp))) +
  geom_point()


?fct_reorder

?fct_reorder2


h_gap$country %>% droplevels() %>% 
  fct_relevel("Romania", "Thailand")


grid.arrange(p1, p2, nrow = 1)


gap_asia_2007 <- gapminder %>% filter(year == 2007, continent == "Asia")
p1 <- ggplot(gap_asia_2007, aes(x = lifeExp, y = country)) + geom_point()
p2 <- ggplot(gap_asia_2007, aes(x = lifeExp, y = fct_reorder(country, lifeExp))) +
  geom_point()


grid.arrange(p1, p2, nrow = 1)




# Exercise

gap_asia_2007 <- gapminder %>% filter(year == 2007, continent == "Asia")

gap_asia_2007 %>% 
  ggplot(aes(x = gdpPercap, y = fct_reorder(country, gdpPercap))) + 
  geom_point()

gap_asia_2007 %>% 
  mutate(country = fct_reorder(country, gdpPercap)) %>% 
  ggplot(aes(gdpPercap, country)) +
  geom_point()

gap_asia_2007 %>% 
  mutate(country = fct_reorder(country, gdpPercap)) %>% 
  ggplot(aes(gdpPercap, fct_relevel(country, "Thailand"))) +
  geom_point()




