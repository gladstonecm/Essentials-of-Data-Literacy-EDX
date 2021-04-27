# Gladstone
# 26/04/2021
# Essentials of Data Literacy Week 2 - Activity 1
# Data Wrangling with the College Scorecard Dataset
# Our research question
# At every step, we should review our research question. A good research question for this dataset is:
# Which factors are related to the cost of attendance?

rm(list = ls()) #limpa variáveis
setwd("C:/Users/GCM/Documents/GitHub/Essentials-of-Data-Literacy-EDX")
getwd()
library(tidyverse)
college_sc <- read_csv("datasets/college_scorecard_data.csv")

# Ask some questions
#When you first import the dataset, you should ask yourself some basic questions. For example:
#  How many rows and columns are in the dataset?
#  How many numeric variables are there?
#  How many character variables are there?
#  Are other variable types represented?
#  Do the data values seem to match up with the variable type?
#  What does each row of data represent?
#  Can we tell if any rows of data contain missing values?

college_sc
glimpse(college_sc)
View(college_sc)
head(college_sc, 6)
tail(college_sc, 6) 

# Wrangling column names
names(college_sc)

# Changing the name of a variable
college_sc <- college_sc %>% rename(state = STABBR)
names(college_sc)

# Changing the name/appearance of multiple variables
names(college_sc) <- str_to_lower(names(college_sc))
names(college_sc)

#Wrangling data values
summary(college_sc)

# Changing the format of a variable
college_sc <- college_sc %>% 
  mutate(adm_rate = as.numeric(str_replace(adm_rate, "NULL", "")))

# Creating a new variable and transforming existing variables
# Run this first
college_sc <- college_sc %>%
  mutate(avg_facsal_year = avgfacsal*12)
# Run this second
college_sc %>% 
  select(instnm, avgfacsal, avg_facsal_year)

# Wrapping up
write_csv(college_sc, "datasets/college_sc_cleaned.csv")
