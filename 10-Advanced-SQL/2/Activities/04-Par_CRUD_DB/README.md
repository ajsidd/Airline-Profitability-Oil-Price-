# CRUD Database

In this activity, you and a partner will practice CRUD operations with a new SQLite database.

## Instructions

* Within a Python file, create a new SQLAlchemy class called `Travel` to hold the following values:

    * `__tablename__`: This should be "travel_destinations"

    * `id`: The primary key for the table, which is an integer and automatically increments

    * `city`: A string of the name of the city

    * `country`: A string of the name of the country

    * `distance`: A double that explains the distance between the city you live in and the city in this row

    * `budget`: A double that explains how much it would cost to travel to this destination

    * `visited`: A boolean that explains if you have been to this destination or not

    * Create a connection and a session before adding a few items into the SQLite database.

* Update the values within at least two of the rows added to the table.

* Delete the row with the shortest distance.

* Print out all of the data within the database.

## Bonus

Use a SQLAlchemy function to identify the item with the lowest id value, and change its budget to $2,500.

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
