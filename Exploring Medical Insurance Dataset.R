library(tidyverse)
library(bulkreadr)
library(readxl)
library(writexl)
library(janitor)
library(haven)


# How would you import this data if it’s in SPSS format?
#if spss format, load library(haven)

medical_data = read.sav("dataset")

# Use the clean_names() function from the janitor package to make variable names consistent and easy to work with.

medical_data <- read_xlsx("r-data/Medical_insurance_dataset.xlsx")
clean_names(medical_data)
head(medical_data)

# display the first three rows of the dataset?

medical_data[1:3,]

# How many rows and columns does the dataset have?
dim(medical_data)

# What are the column names in the dataset?
names(medical_data)

# identify the data types of each column?
class(names(medical_data))

# How would you handle missing values if there are any?
anyNA(medical_data) #No missing data

# What is the average age of the individuals in the dataset?
Avg_age <- mean(medical_data$Age)
Avg_age

# What’s the range of the estimated salaries?
salary_range <- range(medical_data$EstimatedSalary)
salary_range










  