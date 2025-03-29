`Course Project 1` Exploratory Data Analysis
================

# Codebook

## Requirements

1. `lubridate` package installed;
2. `tidyverse` package installed;
3. `magrittr` package installed;
3. Internet access to download the data.

### Description of functionality of `plot1.R`

1. Create the folder `data` to keep all files downloaded in it;
2. Download the zipped file using `download.file()`;
3. If the raw data is already downloaded the script will not download any file;
4. Unzipping the txt file (Electric power consumption) into the `data` folder;
5. Loading the txt file using `read.table()` and naming it as raw_database;
6. Update the `Time` columns as a result of merging `Date` and `Time` columns using `strptime()`. Now the `Time` column became POSIXlt objects;
7. Converting `Date` column into Date objects using `as.Date`;
8. Subsetting the raw data between 1/2/2007 and 2/2/2007 to create the Tidy dataset (df_tidy);
9. Plot the histogram of `Global_active_power`;
10. Saving the plot as `png` file;
11. Excluding all variable and turn back the original work directory.

### Description of functionality of `plot2.R`

1. Create the folder `data` to keep all files downloaded in it;
2. Download the zipped file using `download.file()`;
3. If the raw data is already downloaded the script will not download any file;
4. Unzipping the txt file (Electric power consumption) into the `data` folder;
5. Loading the txt file using `read.table()` and naming it as raw_database;
6. Update the `Time` columns as a result of merging `Date` and `Time` columns using `strptime()`. Now the `Time` column became POSIXlt objects;
7. Converting `Date` column into Date objects using `as.Date`;
8. Subsetting the raw data between 1/2/2007 and 2/2/2007 to create the Tidy dataset (df_tidy);
9. Plot the line graphic of `Global_active_power` by `1/2/2007 and 2/2/2007`;
10. Saving the plot as `png` file;
11. Excluding all variable and turn back the original work directory.

### Description of functionality of `plot3.R`

1. Create the folder `data` to keep all files downloaded in it;
2. Download the zipped file using `download.file()`;
3. If the raw data is already downloaded the script will not download any file;
4. Unzipping the txt file (Electric power consumption) into the `data` folder;
5. Loading the txt file using `read.table()` and naming it as raw_database;
6. Update the `Time` columns as a result of merging `Date` and `Time` columns using `strptime()`. Now the `Time` column became POSIXlt objects;
7. Converting `Date` column into Date objects using `as.Date`;
8. Subsetting the raw data between 1/2/2007 and 2/2/2007 to create the Tidy dataset (df_tidy);
9. Plot the line graphic of `Sub_metering_1` by `1/2/2007 and 2/2/2007`;
10. Add to the graphic above the `Sub_metering_2` and `Sub_metering_3`;
11. Insert a legend;
12. Saving the plot as `png` file;
13. Excluding all variable and turn back the original work directory.

### Description of functionality of `plot4.R`

1. Create the folder `data` to keep all files downloaded in it;
2. Download the zipped file using `download.file()`;
3. If the raw data is already downloaded the script will not download any file;
4. Unzipping the txt file (Electric power consumption) into the `data` folder;
5. Loading the txt file using `read.table()` and naming it as raw_database;
6. Update the `Time` columns as a result of merging `Date` and `Time` columns using `strptime()`. Now the `Time` column became POSIXlt objects;
7. Converting `Date` column into Date objects using `as.Date`;
8. Subsetting the raw data between 1/2/2007 and 2/2/2007 to create the Tidy dataset (df_tidy);
9. Set the global graphic configuration as two-by-two (`par(mfrow = c(2, 2))`);
10. Plot the line graphic of `Global_active_power` by `1/2/2007 and 2/2/2007` at the top left;
11. Plot the line graphic of `Voltage` by `1/2/2007 and 2/2/2007` at the top right;
12. Plot the line graphic of `Sub_metering_1` by `1/2/2007 and 2/2/2007` and  `Sub_metering_2` and `Sub_metering_3` at bottom left;
13. Plot the line graphic of `Global_reactive_power` by `1/2/2007 and 2/2/2007` at the bottom right;
14. Saving the plot as `png` file;
15. Excluding all variable and turn back the original work directory.

## Content of Output and Input

Here will be described some aspects of output and inputs.

### Input

##### Raw Data

* Size: 149,604,992 Bytes (142,7 Megabytes)
* Tabulation: `;`
* 2,075,259 rows;
* `na.string` used to turn `?` into `NA`
* 9 columns.

I have calculated the object size in Bytes using the `object_size()` from the `pryr` package.

##### Tidy Data

* 2,880 rows;
* 9 columns.

### Output

* Four `.R` files to be evaluated in peer assessment;
* Four `png` files to be evaluated in peer assessment.
