## Analysis with gapminder data
## Nina Overgaard Therkildsen

library(tidyverse)
library(gapminder) # install.packages("gapminder")

gapminder


## Creating for loop

# cntry <- "Afghanistan"
#country_list <- c("Albania", "Fiji", "Spain")
dir.create("figures")
dir.create("figures/europe")

est <- readr::read_csv('https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/countries_estimated.csv')

gapminder_est <- left_join(gapminder, est)

gap_europe <- gapminder_est %>% 
  filter(continent == "Europe") %>% 
  mutate(gdpPercap_cummean = cummean(gdpPercap))

country_list <- unique(gap_europe$country)

for (cntry in country_list) { # cntry <- country_list[1]
  
  gap_to_plot <- gap_europe %>% 
    filter(country == cntry)
  
  print(paste("Plotting", cntry))
  
  my_plot <- ggplot(gap_to_plot, aes(x = year, y = gdpPercap_cummean)) +
    geom_point() +
    labs(title = paste(cntry, "cummulative mean GDP per capita", sep = " "))
  
  if (any(gap_to_plot$estimated == "yes")) {
    my_plot <- my_plot +
      labs(subtitle = "Estimated")
  } else {
    my_plot <- my_plot +
      labs(subtitle = "Reported")  
  }
  
  ggsave(filename = paste("figures/europe/", cntry, "_gdpPercap_cummean.png", sep = ""), plot = my_plot)
  
}


