# Chinook Database Analysis

In this activity, you will perform exploratory analysis of the Chinook database, which is a common database provided as a sample by many database tools.

## Instructions

* Create a Jupyter notebook for your analysis.

* Create a SQLAlchemy engine to the database `chinook.sqlite`.

* Use `automap_base` to reflect the database tables.

* Create references to the `invoices` and `invoice_items` tables, and call them `Invoices` and `Items`, respectively.

* Create a SQLAlchemy ORM session object.

* Design a query that lists all of the billing countries found in the invoices table.

* Design a query that lists the invoice totals for each billing country, and sort the output in descending order.

    * The results tuple should contain the country name and the invoice total for that country, using all records in the invoices table.

* Design a query that lists all of the billing postal codes for the USA.

* Calculate the item totals, using **sum(UnitPrice \* Quantity)**, for the USA.

    * Return the value as a scalar floating-point number.

* Calculate the invoice item totals using **sum(UnitPrice \* Quantity)** for each billing postal code in the USA.

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
