# Reflecting on SQL

For this activity, you’ll test your ability to reflect existing databases using SQLAlchemy and a SQLite table focused on demographic data.

## Instructions

* Create an engine using the `demographics.sqlite` database file.

* Declare a `Base` using `automap_base()`, and use this new `Base` class to reflect the database's tables.

* Assign the demographics table/class to a variable called `Demographics`.

* Create a session, and use this session to query the `Demographics` table and display the first five locations.

## Bonus

Query and print the number of unique locations in the table.

## Hint

For the bonus, explore how to count and group operations in SQLAlchemy.

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
