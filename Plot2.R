# 1. Libraries used to perform this script. ####
library(lubridate)
library(tidyverse)
library(magrittr)

# 2. Creating a folder to store the downloaded files. ####
if(!file.exists("data")) {
  # If this folder already have been created, it will be ignored.
  dir.create("data")
}

# 3. Downloading the zip file with Electric power consumption from UC Irvine Machine Learning Repository. ####
if(!file.exists("./data/power_consumption.zip")) {
  
  # Download and store it in data folder.
  download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                destfile = "./data/power_consumption.zip")
}

# 3.1. Unzipping the power_consumption file
if(!file.exists("./data/household_power_consumption.txt")) {
  
  # Check if the power_consumption.zip has been unzipped
  unzip(zipfile = "./data/power_consumption.zip",
        exdir = "./data",
        list = FALSE,
        overwrite = TRUE)
}

# 4. Loading the data ####
#
# Based on the instruction, we already know the types of the columns.
#
raw_dataset <- read.table(file = "./data/household_power_consumption.txt",
                          header = TRUE,
                          sep = ';',
                          stringsAsFactors = FALSE ,
                          na.strings = "?",
                          nrows = 2075259, 
                          check.names = FALSE,
                          colClasses = c(character(),
                                         character(),
                                         numeric(),
                                         numeric(),
                                         numeric(),
                                         numeric(),
                                         numeric(),
                                         numeric(),
                                         numeric()))

# 5. Manipulating Data ####

# 5.1. Converting the Date column into the Date class object and Filtering the observations
df_tidy <- raw_dataset %>%
  
  # Merging Date and Time POSIXlt.
  mutate(Time = strptime(paste(Date, " " ,Time), "%d/%m/%Y %H:%M:%S")) %>%
  
  # Converging character into Date.
  mutate(Date = as.Date(Date, "%d/%m/%Y")) %>%
  
  # Filtering observations between 2007-02-01 and 2007-02-02.
  filter(Date >= "2007-02-01" & Date <= "2007-02-02")

# 6. Exporting the PNG file ####
png(filename = "./plot2.png",
    width = 480 ,
    height = 480,
    units = "px",
    bg = "white")

# Forcing to printing in English.
Sys.setlocale("LC_TIME", "English")

# Plotting the Graphic
plot(df_tidy$Time,
     df_tidy$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kW)")

dev.off()