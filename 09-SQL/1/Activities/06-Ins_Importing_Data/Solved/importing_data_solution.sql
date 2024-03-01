-- Drop table if exists
DROP TABLE fauna_vertabrate;

-- Create new table
CREATE TABLE fauna_vertabrate (
	longitude DEC,
	latitude DEC,
	OBJECTID INT,
	suburb VARCHAR,
	property_name VARCHAR,
	GI_class VARCHAR,
	GI_type	VARCHAR,
	group_ VARCHAR,
	family VARCHAR,
	family_common_name VARCHAR,
	scientific_name VARCHAR,
	genus VARCHAR,
	species VARCHAR,	
	common_name VARCHAR,	
	fauna_status VARCHAR
);


-- View table columns and datatypes
SELECT * FROM fauna_vertabrate;
