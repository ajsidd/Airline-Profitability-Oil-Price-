# Exploring Airports in Australia

In this activity, you'll be tasked with obtaining information about some Australian airports. You'll be given a list of cities, and you'll need to use the Geoapify Geocoding API and Geoapify Places API to obtain the airports' information.

## Instructions

* Using [airports.ipynb](Unsolved/airports.ipynb) as a starting point, use the Geoapify Geocoding API, the Geoapify Places API, and Python to create a script that retrieves information of some Australian airports in each of the cities found in [Cities.csv](Resources/Cities.csv).

* You should create a DataFrame that has to contain each of the following columns:

  * `Lat`

  * `Lon`

  * `Airport Name`

  * `IATA Name`

  * `Airport Address`

  * `Distance`

  * `Website`

* You should review the Geoapify API documentation to identify where is this information located in the JSON response.

  * [Geocoding API docs](https://apidocs.geoapify.com/docs/geocoding/forward-geocoding/#about)

  * [Places API docs](https://apidocs.geoapify.com/docs/places/#about)

* Finally, save the airports's informations DataFrame as a CSV file called `Airport_Output.csv`.

### Hints

* You will need to obtain the latitude and longitude of each airport before sending it through the Geoapify Places API to obtain the rating.

* When using the Geoapify Places API, be sure to use the "airport" category.

* Use `try-except` to identify airports for which there are missing data.

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
