# Union Settlements

In this activity, you will use a dataset of 523 partial records, reduced from 13,758 total records, about major collective bargaining settlements in 1995. The [Access to Archival Databases (AAD)](https://aad.archives.gov/aad/) limits downloads to 1,000 records, so this collection was reduced to the following unions: Actors Equity Association (AEA), Air Line Pilots (ALPA), Auto Workers (UAW), Bakery, Confectionery Workers International Union of America (BCW), Clothing and Textile Workers (ACTWU), and Elevator Constructors (IUEC).

Create a bar chart that visualizes the total number of major collective bargaining settlements by union.

## Instructions

Your task is to plot the total number of major collective bargaining settlements by union. In other words, you need to determine how many settlements were made by each union.

Use the following instructions:

* Use Pandas to load the `union_settlements_1995.csv` dataset.

* Create a Series containing the number of settlements made by each union. This is a large dataset, so you may want to list the columns to determine the name of the one you want to use.

* Using this Series, create a bar chart with red bars. Some of the labels will be longer, so adjust the figure size of the plot. Add a title and axis labels.

* Use your data to retrieve labels for your x-axis ticks, and rotate them 45 degrees.

  **Note:** If you have difficulty with displaying the x-tick labels when rotating them, check the [Matplotlib documentation](https://matplotlib.org/stable/api/text_api.html#matplotlib.text.Text) for arguments that you can use to make changes.

* Display your plot. Which union agreed to the most settlements? The fewest?

## Bonus

Find how many national settlements were agreed to by each union, and plot the national totals alongside all settlement totals.

## References

[The National Archives](https://aad.archives.gov/aad/display-partial-records.jsp?dt=298&sc=1520%2C1523%2C1501%2C1502%2C1537%2C1503%2C1505%2C1507&cat=PS33&tf=F&bc=%2Csl%2Cfd&q=&as_alq=&as_anq=&as_epq=&as_woq=&nfo_1520=V%2C5%2C1900&op_1520=0&txt_1520=&nfo_1523=V%2C47%2C1900&op_1523=0&txt_1523=&nfo_1501=V%2C2%2C1900&cl_1501=&nfo_1502=V%2C1%2C1900&cl_1502=&nfo_1537=V%2C2%2C1900&cl_1537=&nfo_1503=V%2C7%2C1900&cl_1503=AAAA%2CAEA%2CALPA%2CNATC%2CAPA%2CUAW%2CBCW%2CMLBPA%2CNBPA%2CACTWU%2CIUEC&nfo_1505=N%2C6%2C1900&op_1505=3&txt_1505=&txt_1505=&nfo_1507=D%2C6%2C1900&op_1507=3&txt_1507=&txt_1507=)

- - -

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
