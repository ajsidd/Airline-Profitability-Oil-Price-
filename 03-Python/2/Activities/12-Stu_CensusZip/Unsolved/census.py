import os
import csv

census_csv = os.path.join("..", "Resources", "census_starter.csv")

# Lists to store data
place = []
population = []
income = []
poverty_count = []
poverty_rate = []
county = []
state = []

# with open(udemy_csv, encoding='utf-8') as csvfile:
with open(census_csv) as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    for row in csvreader:
        # Add place

        # Add population

        # Add per capita income

        # Add poverty count

        # Determine poverty rate to 2 decimal places, convert to string

        # Split the place into county and state

# Zip lists together

# Set variable for output file
output_file = os.path.join("census_final.csv")

#  Open the output file
with open(output_file, "w", newline='') as datafile:
    writer = csv.writer(datafile)

    # Write the header row
    writer.writerow(["Place", "Population", "Per Capita Income", "Poverty Count", "Poverty Rate",
                    "County", "State"])

    # Write in zipped rows
