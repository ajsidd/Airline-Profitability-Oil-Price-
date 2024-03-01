# Dates

In this activity, you will practice working with dates, both in SQLAlchemy and with the `datetime` library.

## Instructions

* Use the provided `dow.sqlite` dataset to analyze the average stock prices (average open, average high, average low, and average close) for all stocks in the month of May.

* Plot the results as a Pandas or Matplotlib bar chart.

## Bonus

* Calculate the high-low peak-to-peak (PTP) values for `IBM` stock after `2011-05-31`.

    * The high-low PTP is calculated by subtracting `low_price` from `high_price`.

* Use a `DateTime.date` object in the query filter.

* Use list comprehension to create a list of dictionaries from the query results.

* Create a DataFrame from the list of dictionaries.

* Use the `boxplot()` method on the DataFrame to plot PTP distribution statistics.

---

## References

Brown, Michael. (2013). Weekly Dow Jones Index Data. 10.13140/2.1.2729.4409.

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
