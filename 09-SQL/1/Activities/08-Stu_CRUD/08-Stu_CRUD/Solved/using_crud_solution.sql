-- Find row with missing data
SELECT * FROM road_accidents WHERE road_crashes = 0;

-- Note columns with missing data: road_crashes, serious_injury, slight_injury
-- Note year = 2017
-- Note road_deaths = 6740

-- Delete rows
DELETE FROM accidents_by_state
WHERE year != 2017;

-- Calculate the missing data and rename columns
SELECT SUM(road_crashes) AS road_crashes,
	SUM(serious_injury) AS serious_injury,
	SUM(slight_injury) AS slight_injury,
	SUM(road_deaths) AS road_deaths
FROM accidents_by_state;

-- Make note of them
-- road_crashes = 533875,
-- serious_injury = 3310,
-- slight_injury = 6539
-- road_deaths = 6740

-- Update missing data
UPDATE road_accidents
SET road_crashes = 533875,
	serious_injury = 3310,
	slight_injury = 6539
WHERE Year = 2017;

-- View table
SELECT * FROM road_accidents;

-- BONUS

-- Delete all rows
DELETE FROM accidents_by_state;

-- Remember to re-import from mys_accidents_by_state.csv

-- Calculate the data for year 2018
SELECT SUM(road_crashes) AS road_crashes,
	SUM(road_deaths) AS road_deaths,
	SUM(serious_injury) AS serious_injury,
	SUM(slight_injury) AS slight_injury
FROM accidents_by_state
WHERE year = 2018;

-- Insert new row
INSERT INTO 
road_accidents (_id, year, road_crashes, road_deaths, serious_injury, slight_injury)
VALUES (22, 2018, 548598,6284,2964,5377);

-- View table
SELECT * FROM road_accidents;