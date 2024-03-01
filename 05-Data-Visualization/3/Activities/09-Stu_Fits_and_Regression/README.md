# Fits and Regression

This activity is an opportunity to use SciPy to fit data and Matplotlib to display the fit.

## Instructions

* Open the [vehicles.ipynb](Unsolved/vehicles.ipynb) file, and execute the starter code. This starter code will import the dependencies you will need as well as load the vehicle dataset.

* Generate a scatter plot with Matplotlib using the year as the independent (*x*) variable and the number of petrol-electric cars as the dependent (*y*) variable.

* Use `stats.linregress` to perform a linear regression with the year as the independent variable (*x*) and the number of petrol-electric cars as the dependent variable (*y*).

* Use the information returned by `stats.linregress` to create the equation of a line from the model.

* Calculate the predicted number of petrol-electric cars of the linear model using the year as the *x* values.

* Plot the linear model of year versus number of petrol-electric cars on top of your scatter plot.

  * Your scatter plot and line plot share the same axis.

  * To overlay plots in a notebook, the plots must be in the same code block.

* Repeat the process of generating a scatter plot, calculating the linear regression model, and plotting the regression line over the scatter plot for the following pairs of variables:

  * Year versus number of petrol cars.

  * Year versus number of diesel cars.

## Bonus

* Use `pyplot.subplots` from Matplotlib to create a new figure that displays all three pairs of variables on the same plot. For each pair of variables, there should be a scatter plot and a regression line.

  * All three plots share the same x-axis.

* Use the regression lines you created to predict what the number of petrol-electric, petrol, and diesel cars will be in 2024.

## Hint

* Review the documentation for [stats.linregress](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.linregress.html).

* Recall that `stats.linregress` returns a slope, called *m*, and a *y* intercept, called *b*. These let you define a line for each fit simply by writing `y-values = m * x-values + b` for each linear regression you perform.

## References

Singapore Land Transport Authority. (2022). Annual Motor Vehicle Population by Type of Fuel Used. [https://data.gov.sg/dataset/annual-motor-vehicle-population-by-type-of-fuel-used](https://data.gov.sg/dataset/annual-motor-vehicle-population-by-type-of-fuel-used)

- - -

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
