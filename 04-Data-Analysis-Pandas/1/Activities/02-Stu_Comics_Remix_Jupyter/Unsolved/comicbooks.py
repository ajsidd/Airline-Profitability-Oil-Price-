# Modules
import os
import csv

# Prompt user for title lookup
book = input("What title are you looking for? ")

# Set path for file
csvpath = os.path.join("Resources", "comic_books.csv")

# Set variable to check if we found the video
found = False

# Open the CSV
with open(csvpath, encoding="utf8") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    # Loop through looking for the video
    for row in csvreader:
        if row[0] == book:
            print(row[0] + " was published by " + row[8] + " in " + row[9])

            # Set variable to confirm we have found the video
            found = True


    # If the book is never found, alert the user
    if found is False:
        print("Sorry about this, we don't seem to have what you are looking for!")
