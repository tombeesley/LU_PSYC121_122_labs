library(tidyverse)
dataQ <- read_csv("https://raw.githubusercontent.com/tombeesley/LU_PSYC121_122_labs/master/data_clean.csv")
head(dataQ) # look at the first few rows

males_NW <- dataQ %>%
  select(age, gender, n_siblings, home_location) %>%
  filter(home_location == "North West, England",
         gender == "Male")

ggplot(males_NW) +
  geom_histogram(aes(x = n_siblings), stat = "count")

dataQ %>%
  ggplot() +
  geom_histogram(aes(x = countries_visited))

dataQ %>%
  ggplot() +
  geom_density(aes(x = countries_visited))

dataQ %>%
  ggplot() +
  geom_density(aes(x = countries_visited, fill = home_location), alpha = .3)

norm_heights <- tibble(height = rnorm(n = 100000, mean = 165, sd = 10))

norm_heights %>%
  slice_sample(n = 5) %>%
  ggplot()+
  geom_density(aes(x = height))
