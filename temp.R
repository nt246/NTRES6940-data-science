# Write a script that loops through the gapminder data by continent and prints out whether the mean life expectancy is smaller or larger than 50 years.

mean_exp <- gapminder %>% 
  group_by(continent) %>% 
  summarize(mean_lifeExp = mean(lifeExp))

if (filter(mean_exp, continent == cont)$mean_lifeExp < 50)
  print(paste("Average Life Expectancy in", cont, "is less than 50"))

if (filter(mean_exp, continent == cont)$mean_lifeExp > 50)
  print(paste("Average Life Expectancy in", cont, "is more than 50"))



continents <- unique(gapminder$continent)

for (cont in continents) {  # cont <- continents[1]
  temp <- gapminder %>% 
    filter(continent == cont) %>% 
    summarize(mean_lifeExp = mean(lifeExp))
  
  if (temp$mean_lifeExp < 50) {
    print(paste("Average Life Expectancy in", cont, "is <50"))
  } else {
    print(paste("Average Life Expectancy in", cont, "is >50"))
  
}}


# Modify the script from above to loop over each country. This time print out whether the life expectancy is smaller than 50, between 50 and 70, or greater than 70.

country_list <- unique(gapminder$country)

for (cont in country_list) {  # cont <- continents[1]
  temp <- gapminder %>% 
    filter(country == country_list) %>% 
    summarize(mean_lifeExp = mean(lifeExp))
  
  if (temp$mean_lifeExp < 50) {
    print(paste("Average Life Expectancy in", cont, "is <50"))
  } else if (temp$mean_lifeExp >= 50 & temp$mean_lifeExp < 70) {
    print(paste("Average Life Expectancy in", cont, "is between 50 and 70")) 
  } else {
    print(paste("Average Life Expectancy in", cont, "is >70")) 
  }
    
  }



Use an if() statement to print a suitable message reporting whether there are any records from 2002 in the gapminder dataset. Now do the same for 2012.


yr <- 2002
if (nrow(filter(gapminder, year == yr)) > 0) {
  print(paste("The gapminder does have records from", yr))
} else {
  print(paste("The gapminder does not have records from", yr))
} 