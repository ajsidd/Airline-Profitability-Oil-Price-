-- Join bird_bands with age and sex
SELECT bird_bands.band, 
  bird_bands.event_date, 
  bird_bands.species_name, 
  age.age_description, 
  sex.sex_description
FROM bird_bands
INNER JOIN age ON
bird_bands.age_code = age.age_code
INNER JOIN sex ON
bird_bands.sex_code = sex.sex_code;

-- Join bird_bands with age and sex using aliases
SELECT b.band, 
  b.event_date, 
  b.species_name, 
  a.age_description, 
  s.sex_description
FROM bird_bands as b
INNER JOIN age as a ON
b.age_code = a.age_code
INNER JOIN sex as s ON
b.sex_code = s.sex_code;

-- Join bird_bands with band_type, bird_status, age, sex
-- where sex_description is not "Unknown"
SELECT bird_bands.band, 
	bird_bands.event_date, 
	bird_bands.species_name, 
	band_type.band_type_description, 
	bird_status.bird_status_description, 
	age.age_description, 
	sex.sex_description
FROM bird_bands
INNER JOIN band_type ON
bird_bands.band_type_code = band_type.band_type_code
INNER JOIN bird_status ON
bird_bands.bird_status = bird_status.bird_status
INNER JOIN age ON 
bird_bands.age_code = age.age_code
INNER JOIN sex ON
bird_bands.sex_code = sex.sex_code
WHERE sex_description != 'Unknown';

-- Join bird_bands with band_type, bird_status, age, sex using aliases
-- where sex_description is not "Unknown"
SELECT b.band, 
	b.event_date, 
	b.species_name, 
	bt.band_type_description, 
	bs.bird_status_description, 
	a.age_description, 
	s.sex_description
FROM bird_bands as b
INNER JOIN band_type as bt ON
b.band_type_code = bt.band_type_code
INNER JOIN bird_status as bs ON
b.bird_status = bs.bird_status
INNER JOIN age as a ON 
b.age_code = a.age_code
INNER JOIN sex as s ON 
b.sex_code = s.sex_code
WHERE sex_description != 'Unknown';