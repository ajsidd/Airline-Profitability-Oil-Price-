# Sunny Hours

For this activity, you will create a Python script that can search through the provided SQL file of hours of sunshine in various cities in the world.

## Instructions

* Use [sunshine.sqlite](Resources/sunshine.sqlite) as your data source.

* Within a Python script, create a `Sunshine` class to read in all of the columns of the database. Consult the SQL schema of the `sunshine` table when creating your class. Note that the REAL data type refers to floating point numbers (decimals).

```sql
CREATE TABLE sunshine (
    id INTEGER PRIMARY KEY,
    Country TEXT,
    City TEXT,
    Jan REAL,
    Apr REAL,
    Jul REAL,
    Oct REAL,
    Year REAL
);
```

* Using SQLAlchemy, perform the following queries:

  * Print all columns of each row.

  * Find the total number of cities in the database.

  * Find the total number of observed cities in Canada.

  * Find the number of cities whose yearly sunshine equals or exceeds 3700 hours.

  * Print the city name, country, and yearly sunny hours of all cities whose yearly sunshine equals or exceeds 3700 hours.

  * Find the number of cities whose January sunshine equals or exceeds 300 hours.

  * Print the city name, country, January sunny hours, and yearly sunny hours of all cities that have 300 or greater hours of sunshine in January.

  * Find the number of cities in the United States whose yearly hours of sunshine are 2500 or fewer.

  * Print the city name and yearly sunny hours of cities in the United States that receive 2500 or fewer hours of sunshine per year.

## References

Kaggle (2022). Sunshine Duration by City. Data provided by Kaggle. [https://www.kaggle.com/datasets/prasertk/sunshine-duration-by-city/metadata](https://www.kaggle.com/datasets/prasertk/sunshine-duration-by-city/metadata)

Wikipedia (2022). List of cities by sunshine duration. Data provided by Wikipedia. [https://en.wikipedia.org/wiki/List_of_cities_by_sunshine_duration](https://en.wikipedia.org/wiki/List_of_cities_by_sunshine_duration)

—

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
