# Gladstone
# 26/04/2021
# Essentials of Data Literacy Week 2 - Activity 1
# Data Wrangling with the College Scorecard Dataset
setwd("C:/Users/GCM/Documents/GitHub/Essentials-of-Data-Literacy-EDX")
getwd()
library(tidyverse)
who <- read.csv("Datasets/world_health_organization.csv")
glimpse(who)
head(who)
head(who, 7)
tail(who)
tail(who,7)

