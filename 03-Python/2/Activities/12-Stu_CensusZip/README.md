# U.S. Census Breakdown

In this activity, you will be provided with a large dataset from the 2019 U.S. Census. Your task is to clean up this dataset and create a new CSV file that is easier to comprehend.

## Instructions

* Create a Python application that reads in the data from the 2019 U.S. Census.

* Then, store the contents of `Place`, `Population`, `Per Capita Income`, and `Poverty Count` into Python Lists.

* Then, zip these lists together into a single tuple.

* Finally, write the contents of your extracted data into a CSV. Make sure to include the titles of these columns in your CSV.

## Bonus

* Find the poverty rate (percentage of population living in poverty). Include this in your final output, converting the rate to a string and including a "%" at the end of the string.

* Parse the string associated with `Place`, separating it into `County` and `State`, so we can store both in separate columns.

## Hints

* Windows users may get a `UnicodeDecodeError`. To avoid this, pass in `encoding="utf8"` as an additional parameter when reading in the file.

* As with many datasets, the file does not include the header line. Use the following list as a guide to the columns: "Place,Population,Median Age,Household Income,Per Capita Income,Employed Civilians,Unemployed Civilians,People in the Military,Poverty Count"

## References

Data Source: [U.S. Census API - ACS 5-Year Estimates 2019](https://www.census.gov/data/developers/data-sets/census-microdata-api.ACS_5-Year_PUMS.html)

—

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
