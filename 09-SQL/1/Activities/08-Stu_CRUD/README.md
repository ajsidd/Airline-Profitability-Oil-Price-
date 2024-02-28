# Using CRUD: Create, Read, Update, and Delete

In this activity, you will use CRUD operations (Create, Read, Update, Delete) on the provided data.

## Instructions

1. Create a new database named `Malaysia` in pgAdmin.

2. Create two new tables in the `Malaysia` database by copying the code provided in `schema.sql` into a new query window in pgAdmin.

3. Using the Import/Export tool, import the data from `mys_road_accidents.csv` into the `road_accidents` table, and then import the data from `mys_accidents_by_state.csv` into the `accidents_by_state` table.

4. In the `road_accidents` table, find the row that has a `road_crashes` value of 0 and note:

  * the year

  * the number of `road_deaths`

  * the names of the other two columns have missing data (0 values)

You will be able to calculate this missing data from the second table.

5. In the `accidents_by_state` table, delete all rows for years that do not have data missing from the `road_accidents` table.

6. In the `accidents_by_state` table, in a single SQL query, find the [Sum](https://www.w3schools.com/sql/sql_count_avg_sum.asp) of each of the three columns with missing data, as well as `road_deaths`, and rename the summed columns with their original column name using `AS`.

    * **Hint:** If you don’t rename the columns, the columns will have a name like `sum(road_deaths)`.

Compare the sum of `road_deaths` from these results with the value from the `road_accidents` table. If they do not match, the other values will also be incorrect.

7. Once the `road_deaths` values match up, note the values for the three columns with missing data, and update the `road_accidents` table with this new information.

## Bonus

* Delete all rows from `accidents_by_state` and re-import the data from `mys_accidents_by_state.csv`. If you import the data again without deleting the rows, you will have duplicated data.

* Without deleting any rows, calculate the sum of `road_crashes`, `road_deaths`, `serious_injury`, and `slight_injury` for a subsequent year, and add those values plus the year to the `road_accidents` table.

    **Note**: You will need to also include a value for `_id` as it has been designated the Primary Key and cannot be null, nor can it be a duplicate value of `_id`.

## References

Institut Penyelidikan Keselamatan Jalan Raya Malaysia (MIROS). General Road Accident Statistics in Malaysia. [https://www.data.gov.my/data/en_US/dataset/general-road-accident-statistics-in-malaysia](https://www.data.gov.my/data/en_US/dataset/general-road-accident-statistics-in-malaysia)

Royal Malaysian Police (PDRM). Road Accident Statistics by Type of Accident and Injury. [https://www.data.gov.my/data/ms_MY/dataset/statistik-kemalangan-jalan-raya-mengikut-jenis-kemalangan-dan-kecederaan](https://www.data.gov.my/data/ms_MY/dataset/statistik-kemalangan-jalan-raya-mengikut-jenis-kemalangan-dan-kecederaan)

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
