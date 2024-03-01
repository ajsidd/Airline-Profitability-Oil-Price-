# Comic Books Part 1

In this activity, you will take a large CSV of books, read it into Jupyter Notebook by using Pandas, clean up the columns, and then write a modified DataFrame to a new CSV file.

This dataset is an expanded version of the Comic Books dataset from the British Library, which you’ve already worked with.

## Instructions

* Read in the comic books CSV by using Pandas.

* Remove unnecessary columns from the DataFrame so that only the following columns remain:

  * ISBN
  * Title
  * Other titles
  * Name
  * All names
  * Country of publication
  * Place of publication
  * Publisher
  * Date of publication

* Rename the “Name” column to “Author”, rename the “Date of publication” column to “Publication Year”, and then apply title case styling where appropriate in the remaining columns.

* Write the DataFrame into a new CSV file.

## Hint

* The base CSV file uses UTF-8 encoding. Trying to read in the file by using some other kind of encoding could introduce strange characters to the dataset. Check the tail of the dataset with `.tail()` to determine if you correctly imported the CSV file. You should be able to see characters from other languages.

## References

Data modified from "Comic books CSV" Updated April 2021. Initially released in 2014 to accompany the British Library's exhibition Comics Unmasked. [https://www.bl.uk/collection-metadata/downloads](https://www.bl.uk/collection-metadata/downloads)

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
