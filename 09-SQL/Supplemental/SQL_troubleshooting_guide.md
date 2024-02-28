# SQL Troubleshooting Guide

This troubleshooting guide contains common issues and fixes pertaining to the use of pgAdmin and postgreSQL.

## Unable to Import/Export CSV via pgAdmin

In the event of an error when using pgAdmin's data import tool, you can create and populate the database tables using the provided .sql files. The following information covers two methods for manually creating and populating the tables.

### Execute .sql file via pgAdmin Query Editor

Each activity will contain schema.sql files that you can use to create the database tables. You can then populate the table using pgAdmin's data import tool and the CSV files provided. If the data import tool fails, use the seed.sql file to manually insert the data into the tables. Please run the seed.sql file after the schema.sql file to ensure that the table is properly configured before data is inserted.

![sql-file-manual-insert](Images/sql-file-manual-insert.png)

### Execute .sql file via PostgreSQL CLI

PostgreSQL additionally provides a Command Line Interface (CLI) for accessing and querying SQL databases/tables and for executing .sql files. This method has the advantage of being a native operation in which the data import operation is done entirely within the postgreSQL environment. This provides both reliability and speed.

To access the postgreSQL CLI, you'll have to first set the `PATH` environment variable to point to the postgreSQL binaries. Windows users must use the Command Prompt as Git Bash has issues with the postgreSQL CLI. When ready, run one of the following commands, based on your operating system:

* Mac OS: `export PATH="$PATH:/Library/postgreSQL/14/bin"`

* Windows: `SET PATH="%PATH%;C:\Program Files\postgreSQL\14\bin"`

**Note:** At the time of this writing, postgreSQL has been updated to version 14. Therefore, if your postgreSQL version is still on 12, then your paths may be the following instead:

* Mac OS: `/Library/postgreSQL/12/bin`

* Windows: `C:\Program Files\postgreSQL\12\bin`

![export-psql-path](Images/export-psql-path.png)

  ![export-psql-path-windows](Images/export-psql-path-windows.png)

Now navigate to the folder containing the .sql file and run the following command: `psql -U postgres -d animals_db -f Fauna_Vertabrate.sql`.

* `psql`: The postgreSQL CLI
* `-U` : The username of the postgreSQL account.
* `-d` : The specified database.
* `-f` : The file path to the .sql file.

  ![sql-file-CLI](Images/sql-file-CLI.png)

  ![psql-insert-windows](Images/psql-insert-windows.png)

### SQLAlchemy, Psycopg2, and Pandas DataFrames

You can also write data from a Pandas DataFrame directly to a postgreSQL table using the in-built `to_sql` function. To make the connection to the postgreSQL database, you must first install additional libraries such as `sqlalchemy` and `psycopg2`; `sqlalchemy` acts as the connection manager, while `psycopg2` acts as the postgreSQL drivers needed to connect specifically to a postgreSQL DB.

The first step for importing the `sqlalchemy` and `psycopg2` libraries is to install them with `pip`.

* `pip install psycopg2-binary`

In Jupyter Notebook, import the required dependencies:

```python
# Import libraries and dependencies
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.types import Integer, Text, String, DateTime, Float
import psycopg2
```

Then, you'll need to import the data in the CSV into a Pandas DataFrame with the `read_csv` function.

```python
# Read in CSV as pandas DataFrame
df = pd.read_csv("../Resources/Fauna_Vertabrate.csv")
df
```

  ![The Fauna Vertebrate DataFrame](Images/fauna_vertabrate_df.png)

Next, you must establish the connection to the postgreSQL database. To make the connection, use a database URI or connection string.

Database connection strings often consist of the following parameters:

* `<connector>://<username>:<password>@<server>:<port>/<database>`

The database connection string in this case was the following:

* `postgresql://postgres:postgres@localhost:5432/animals_db`

To ensure we create the whole connection, we use the following code:

`sql_engine = create_engine('postgresql://postgres:postgres@localhost:5432/animals_db')`

Finally, now that you have established the connection to the postgreSQL database, you can use the`to_sql` function to write DataFrame contents to the specified postgreSQL table. The `to_sql` function uses the following parameters:

* `name`: Name of the SQL table
* `con`: The SQLAlchemy engine loaded with DB drivers
* `if_exists`: How to behave if the table already exists.

  * fail: Raise a ValueError.
  * replace: Drop the table before inserting new values.
  * append: Insert new values to the existing table.

* `index`: Writes the DataFrame index as a column.
* `dtype`: Specifies the datatype for columns in dictionary format.

  ```python
  df.to_sql(
    name="fauna_vertabrate",
    con=sql_engine,
    if_exists='replace',
    index=False,
    dtype={"X": Float,
  "Y": Float,
  "OBJECTID": Integer,
  "SUBURB": Text,
  "PROP_NAME": Text,
  "GI_CLASS": Text,
  "GI_TYPE": Text,
  "GROUP_": Text,
  "FAMILY": Text,
  "FAM_COM": Text,
  "SCI_NAME": Text,
  "GENUS": Text,
  "SPECIES": Text,
  "COM_NAME": Text,
  "STATUS": Text
  }
  )
  ```

Finally, in order to check if the data was properly inserted, use the in-built `read_sql_query` DataFrame function in Pandas to query a database and read the results as a Pandas DataFrame.

```python
# Set the SQL query statement
query = "SELECT * FROM fauna_vertabrate"

# Send the query to the DB and read the results as a Pandas DataFrame
df = pd.read_sql_query(query, sql_engine)
df.head()
```

  ![Reading the data from postgeSQL with Pandas](Images/pd_read_sql_query_head.png)

- - -

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
