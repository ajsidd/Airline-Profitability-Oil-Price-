# Designing an ERD, Part 2

In this activity, you and your partner will continue designing an entity relationship diagram for the gym by transitioning your logical ERD (created in the previous activity) to a physical ERD.

## Instructions

1. Using the starter code provided, return to [Quick Database Diagrams](https://app.quickdatabasediagrams.com/#/) and transition your logical ERD to a physical ERD by creating the relationships between tables.

2. When you are satisfied with your ERD, write a corresponding schema file containing your `CREATE TABLE` statements

3. In pgAdmin, connect to your server and create a new database named `gym`. Then open a query tool.

4. Paste the code from your schema file in pgAdmin, and then execute the code.

## Hint

* Foreign keys are added to each table represented by the `FK` acronym, which is followed by the relationship, e.g., `OrderID INT FK >- Order.OrderID`.

* You will need to add foreign keys to your tables in order to map the data relationships.

* Remember to document the relationships between entities using the correct symbols. Here are the allowed relationship types:

  ```
  -	- one TO one
  -<	- one TO many
  >-<	- many TO many
  -0	- one TO zero or one
  0-	- zero or one TO one
  0-0	- zero or one TO zero or one
  -0<	- one TO zero or many
  >0-	- zero or many TO one
  ```

* Keep in mind the following:

  * Each member belongs to only one gym.

  * Trainers work for only one gym, but a gym has many trainers.

  * Each member must have a trainer, but each trainer may instruct multiple members.

  * Each member has one credit card on file.

* Once you have created tables in pgAdmin, you can check the table creation with the following syntax:

  ```sql
  SELECT * FROM Members;
  ```

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
