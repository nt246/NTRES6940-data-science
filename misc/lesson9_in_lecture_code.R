library(tidyverse)
library(nycflights13)  # install.packages("nycflights13")



# Binding rows together ---------------------------------------------------

fship <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Fellowship_Of_The_Ring.csv")

ttow <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Two_Towers.csv")

rking <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Return_Of_The_King.csv")


lotr_untidy <- bind_rows(fship, ttow, rking)



# Subsetting the flights data ---------------------------------------------

flights2 <- flights %>% 
  select(year:day, hour, origin, dest, tailnum, carrier)
flights2


