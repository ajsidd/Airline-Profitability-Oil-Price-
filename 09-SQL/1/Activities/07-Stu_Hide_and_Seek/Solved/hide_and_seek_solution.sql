-- Drop table if exists
DROP TABLE movie_words_comparison;

-- Create table and view column datatypes
CREATE TABLE movie_words_comparison (
	rater_id INT,
	reference_title VARCHAR,
	soft_attribute VARCHAR,
	less_than VARCHAR,
	about_as VARCHAR,
	more_than VARCHAR
);

SELECT * 
FROM movie_words_comparison;

-- Collect all rows where "Home Alone (1990)" is in the "reference_title" column
SELECT * 
FROM movie_words_comparison
WHERE reference_title = 'Home Alone (1990)';

-- Collect all rows where the rater is within the 10-15 range
SELECT *
FROM movie_words_comparison
WHERE
	rater_id >= 10
	AND rater_id <= 15;

-- Search for the words "artsy" and "heartfelt" in the "soft_attribute" column
SELECT *
FROM movie_words_comparison
WHERE
	soft_attribute = 'artsy'
	OR soft_attribute = 'heartfelt';

-- BONUS
-- Select all rows with a reference title of "Batman (1989)" and a soft attribute of "scary"
SELECT *
FROM movie_words_comparison
WHERE
	reference_title = 'Batman (1989)'
	AND soft_attribute = 'scary';

-- Collect all rows where the rater is within the 30-40 range and has a reference title of "Home Alone (1990)" and a soft attribute of "artsy"
SELECT *
FROM movie_words_comparison
WHERE
	reference_title = 'Home Alone (1990)'
	AND soft_attribute = 'artsy'
	AND rater_id >= 30
	AND rater_id <= 40;
