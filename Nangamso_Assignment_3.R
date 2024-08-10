# Packages

## Defining Packages 
### Packages are collections of functions, data, and documentation that extend R's capabilities, making it more functional and operational for specific tasks. 

## Function to install packages 
install.packages("tidyverse")

## Ways to use function 
library(tidyverse)
library(ggplot2)

## Installing packages 
install.packages("tidyverse")
install.packages("readxl")
install.packages("googlesheets4")
install.packages("readODS")
library(tidyverse)
library(readxl)
library(googlesheets4)
library(readODS)

## Packages to import IBM, SPSS, and Stata. 
"haven"
"foreign"

# 1. Files Extension 
# Microsoft Excel
".xls"
"xlsx"
".csv"

# LibreOffice Calc 
".ods"

# Stata
".do"
".dta"

# IBM SPSS
".sav"

# Google Sheets 
".gsheet"
".csv"

# 2. Google sheets differ from other analysis software as it is a cloud based platform and does not require one to download a software in order to have access to google sheets.
# 3. Text file (.txt) can work or deal with any type of text data or information, whereas Comma Separated Values (.csv) is only suitable to work with data in tables where the values in the rows are separated by a comma. 
# 4. Using a tidyverse package 
read.csv("fao_wood_data.csv")
### The file extension is ".csv"
read.csv("fao_wood_data.csv")
library(readr)
fao_data <- read_delim("fao_wood_data.csv")
head(fao_data)
fao_data |>
  tail(6)

# Importing North-East Atlantic Catches 
install.packages("dplyr")
library(dplyr)
north_east_atlantic_catches <- read_excel("Versions_log.xlsx", sheet = "North-East Atlantic Catches")
head(north_east_atlantic_catches)
tail(north_east_atlantic_catches)
## selecting random items using sample function
north_east_atlantic_catches %>% sample_n(10)

## importing sheet 4 and 5 
species_sheet <- read_excel("Versions_log.xlsx", sheet = "Species")
country_sheet <- read_excel("Versions_log.xlsx", sheet = "Country")

## First 6 observation using pipe operation 
species_sheet |>
  head(6)
country_sheet |>
  head(6)

## Importing and printing .ods data 
softwood_production <- read_ods("Ch2_Timber.ods", sheet = "Table_2_1a")
print(softwood_production)

## Importing sheet 
sawmill_production <- read_ods("Ch2_Timber.ods", sheet = "Table_2_7b")

## Importing txt data
plot11 <- read_delim("plot_11_tvol.txt", delim = "\t")

## Distinct site and plots using unique function
unique(c(plot11$site, plot11$plot))


## Finding NA/ missing values 
is.na(plot11)

is.na(plot11$height)

plot11 |>
  (is.na(height))

plot11 |>
  arrange(desc(is.na(height))) |>
  head(n = 25)

# Importing google sheet data 
## Authenticate google account
gs4_auth()
black_cherry <- read_sheet("https://docs.google.com/spreadsheets/d/1l7COp-Ps5Zy8X0nnw0grnWgB1o79uwRmK1ncqtm56AE")


