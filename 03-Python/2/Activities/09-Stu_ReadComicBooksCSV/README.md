# Reading Comic Book Data

In this activity, you will create an application that searches the provided CSV file for a specific graphic novel title and then returns the title, publisher’s name, and the year it was published.

## Instructions

* Prompt the user for the book title they’d like to search.

* Read in the CSV using the UTF-8 encoding, due to foreign characters.

* Search through the `comic_books.csv` to find the user's book.

* If the CSV contains the user's title, then print out the title, the publisher name, and the year it was published.

    * For example: `"Alien was published by DC Comics in 2015"`.

* If the CSV does not contain the user's title, then print out a message telling them that their book could not be found.

    * Set a variable to `False` to check if we found the comic book.

    * In the `for` loop, change the variable to confirm that the comic book is found.

## References

Data modified from "Comic books CSV" Updated April 2021. Initially released in 2014 to accompany the British Library's exhibition Comics Unmasked. [https://www.bl.uk/collection-metadata/downloads](https://www.bl.uk/collection-metadata/downloads)

—

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
