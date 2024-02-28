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
        place.append(row[0])

        # Add population
        population.append(row[1])

        # Add per capita income
        income.append(row[4])

        # Add poverty count
        poverty_count.append(row[8])

        # Determine poverty rate to 2 decimal places, convert to string
        percent = round(int(row[8]) / int(row[1]) * 100, 2)
        poverty_rate.append(str(percent) + "%")

        # Split the place into county and state
        split_place = row[0].split(", ")
        county.append(split_place[0])
        state.append(split_place[1])

# Zip lists together
cleaned_csv = list(zip(place, population, income, poverty_count, poverty_rate, county, state))

# Set variable for output file
output_file = os.path.join("census_final.csv")

#  Open the output file
with open(output_file, "w", newline='') as datafile:
    writer = csv.writer(datafile)

    # Write the header row
    writer.writerow(["Place", "Population", "Per Capita Income", "Poverty Count", "Poverty Rate",
                    "County", "State"])

    # Write in zipped rows
    writer.writerows(cleaned_csv)
