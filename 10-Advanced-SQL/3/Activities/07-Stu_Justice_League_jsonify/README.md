# Justice League API

* In this activity, you will create an API route that returns the superhero name _and_ real name for every member of the Justice League.

## Instructions

* You may create a file called `app.py` for your Flask app, or you may use the provided starter code.

* If you did not choose to use the starter code, define a Python dictionary containing the superhero name and real name for each member of the Justice League (Superman, Batman, Wonder Woman, Green Lantern, Flash, Aquaman, and Cyborg).

    * You can gather that information from the Justice League Members [Wikipedia page](https://en.wikipedia.org/wiki/List_of_Justice_League_members).

    * Only gather the information for the 7 characters just listed.

* Create a **get** route called `/api/v1.0/justice-league`.

    * Inside of your **get** route, create a function called `justice_league` that will use `jsonify` to convert the dictionary of Justice League members to a JSON object and return that data as a request.

* Define a root route, `/`, that will return the usage statement for your API.

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
