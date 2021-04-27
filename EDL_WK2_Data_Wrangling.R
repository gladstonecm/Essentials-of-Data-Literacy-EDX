# Gladstone
# 26/04/2021
# Essentials of Data Literacy Week 2 - Activity 1
# Data Wrangling with the College Scorecard Dataset
# Our research question
# At every step, we should review our research question. A good research question for this dataset is:
# Which factors are related to the cost of attendance?

setwd("C:/Users/GCM/Documents/GitHub/Essentials-of-Data-Literacy-EDX")
getwd()
library(tidyverse)
who <- read.csv("datasets/world_health_organization.csv")
glimpse(who)
head(who)
head(who, 7)
tail(who)
tail(who,7)

