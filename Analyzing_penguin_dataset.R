library(tidyverse)
library(readxl)
library(writexl)
library(bulkreadr)
library(dplyr)
library(janitor)
library(palmerpenguins)

penguins |> head()
view(penguins)
glimpse (penguins)
dim(penguins)

#How many penguins are from the Biscoe island?
from_Biscoe <- penguins |> filter(island=="Biscoe")
from_Biscoe
nrow(from_Biscoe)

#Extract data for penguins with a body mass greater than 4,500 grams.
BM_above <- penguins |> filter(body_mass_g>4500)
BM_above


#Arrange the data in descending order based on flipper length.
penguins |> arrange(desc(flipper_length_mm))

#Find the top 5 penguins with the highest body mass.
penguins |> arrange(desc(body_mass_g))
maximum <- penguins |> max(body_mass_g) #THIS IS WRONG. INSTEAD
max(penguins$body_mass_g, na.rm=TRUE)

#Select only the columns species, island, and sex.
penguins |> select(species, island, sex)

#Remove the sex column from the dataset.
remove_columns(penguins,sex) #WRONG


#Convert the flipper length from millimeters to meters and create a new column flipper_length_m
head(penguins)
modified_flipper <- penguins |> mutate(flipper_lenght_m= flipper_length_mm/1000) #always remember to add a variable
modified_flipper |> head()

#Create a new column BMI calculated as:
new_bmi <- penguins |> mutate(BMI=body_mass_g/(flipper_length_mm/1000)^2)
new_bmi

#Calculate the average body mass of all penguins.
penguins |> summarize(aveg_BM= mean(body_mass_g, na.rm=TRUE))

#Group the data by species and find the average body mass for each species.
penguins |>group_by(species) |> 
  summarize(aveg_BM= mean(body_mass_g, na.rm=TRUE))

#Filter penguins from the Dream island and summarize the average bill length for each species from this island
my_penguins <- penguins |> filter(island=="Dream")
my_penguins
my_penguins |> group_by(species) |> 
  summarize(avg_bill_length=mean(bill_length_mm))
penguins |> head()

