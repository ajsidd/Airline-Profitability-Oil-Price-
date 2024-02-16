-- Drop table if exists
DROP TABLE names;

-- Create the names table
CREATE TABLE Names (
	i INT PRIMARY KEY,
	dep_id INT,
	line INT,
	name VARCHAR,
	status VARCHAR,
	inserted_by VARCHAR,
	insert_date DATE,
	updated_by VARCHAR,
	update_date DATE
);

-- Check data import
SELECT *
FROM names;

-- Create the commodity table
CREATE TABLE commodity (
	i INT PRIMARY KEY,
	dep_id INT,
	line INT,
	commod VARCHAR,
	code VARCHAR,
	commod_tp VARCHAR,
	commod_group VARCHAR,
	import VARCHAR,
	inserted_by VARCHAR,
	insert_date DATE,
	updated_by VARCHAR,
	update_date DATE
);

-- Check data import
SELECT *
FROM commodity;

-- Perform an INNER JOIN on the two tables
SELECT names.name, commodity.commod, commodity.commod_tp, commodity.commod_group
FROM names
INNER JOIN commodity ON
commodity.dep_id=names.dep_id;

-- Alternative solution:
-- Perform an INNER JOIN on the two tables
SELECT n.name, c.commod, c.commod_tp, c.commod_group
FROM names as n
INNER JOIN commodity as c ON
c.dep_id=n.dep_id;