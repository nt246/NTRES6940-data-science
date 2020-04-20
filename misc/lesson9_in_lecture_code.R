library(tidyverse)
library(nycflights13)  # install.packages("nycflights13")



# Binding rows together ---------------------------------------------------

fship <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Fellowship_Of_The_Ring.csv")

ttow <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Two_Towers.csv")

rking <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Return_Of_The_King.csv")


lotr_untidy <- bind_rows(fship, ttow, rking)






# Introducing the flights data --------------------------------------------

planes %>% 
  count(tailnum) %>% 
  filter(n > 1)

flights
dim(flights)
View(flights)

flights %>% 
  count(tailnum) %>% 
  filter(n > 1)


# Subsetting the flights data ---------------------------------------------

dim(flights)

flights2 <- flights %>% 
  select(year:day, hour, origin, dest, tailnum, carrier)

flights2

airlines

flights2 %>% 
  left_join(airlines, by = "carrier")


weather

flights2 %>% 
  left_join(weather)


planes
flights2

flights2 %>% 
  left_join(planes, by = "tailnum")


airports
flights2

flights2 %>% 
  left_join(airports, c("origin" = "faa"))



top_dest <- 
  flights %>% 
  count(dest, sort = TRUE) %>% 
  head(10)

flights2 %>% 
  semi_join(top_dest)

flights2 %>% 
  anti_join(planes, by = "tailnum") %>% 
  count(tailnum, sort = TRUE)







# Factors -----------------------------------------------------------------

# Familiarize yourself with the data

gss_cat

gss_cat %>% 
  count(race)

ggplot(gss_cat, aes(race)) +
  geom_bar() +
  scale_x_discrete(drop = FALSE)

ggplot(gss_cat, aes(rincome)) +
  geom_bar() +
  coord_flip()

gss_cat %>% 
  count(partyid, sort = TRUE)


# Re-ordering levels

relig_summary <- gss_cat %>% 
  group_by(relig) %>% 
  summarize(
    tvhours = mean(tvhours, na.rm = TRUE)
  )

ggplot(relig_summary, aes(tvhours, relig)) +
  geom_point()

ggplot(relig_summary, aes(tvhours, fct_reorder(relig, tvhours))) +
  geom_point()


rincome_summary <- gss_cat %>% 
  group_by(rincome) %>% 
  summarize(age = mean(age, na.rm = TRUE))

ggplot(rincome_summary, aes(age, fct_reorder(rincome, age))) +
  geom_point()

ggplot(rincome_summary, aes(age, fct_relevel(rincome, "Not applicable"))) +
  geom_point()


by_age <- gss_cat %>% 
  filter(!is.na(age)) %>% 
  count(age, marital)

ggplot(by_age, aes(age, n, color = marital)) +
  geom_line()

ggplot(by_age, aes(age, n, color = fct_reorder2(marital, age, n))) +
  geom_line()


ggplot(gss_cat, aes(fct_infreq(marital))) +
  geom_bar()





# Re-naming levels

gss_cat %>%
  mutate(partyid = fct_recode(partyid,
                              "Republican, strong"    = "Strong republican",
                              "Republican, weak"      = "Not str republican",
                              "Independent, near rep" = "Ind,near rep",
                              "Independent, near dem" = "Ind,near dem",
                              "Democrat, weak"        = "Not str democrat",
                              "Democrat, strong"      = "Strong democrat"
  )) %>%
  count(partyid)


gss_cat %>%
  mutate(partyid = fct_recode(partyid,
                              "Republican, strong"    = "Strong republican",
                              "Republican, weak"      = "Not str republican",
                              "Independent, near rep" = "Ind,near rep",
                              "Independent, near dem" = "Ind,near dem",
                              "Democrat, weak"        = "Not str democrat",
                              "Democrat, strong"      = "Strong democrat",
                              "Other"                 = "No answer",
                              "Other"                 = "Don't know",
                              "Other"                 = "Other party"
  )) %>%
  count(partyid)


gss_cat %>%
  mutate(partyid = fct_collapse(partyid,
                                other = c("No answer", "Don't know", "Other party"),
                                rep = c("Strong republican", "Not str republican"),
                                ind = c("Ind,near rep", "Independent", "Ind,near dem"),
                                dem = c("Not str democrat", "Strong democrat")
  )) %>%
  count(partyid)

























