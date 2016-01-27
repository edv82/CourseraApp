# CourseraApp
Coursera Course Project: Shiny Application

# Value at Risk Simmulator

The app documentation is included in the app as a tabPanel called 'Documentation.'
In order to see and use the app (as well as to read its documentation) visit <https://finanview.shinyapps.io/CourseraApp/>.

In order to see the app code in GitHub visit <https://github.com/edv82/CourseraApp>.

This is a Value at Risk Simmulator App for Shiny. This app generates "N" simmulations of a normally distributed random variable, with mean "m" and standard deviation "std". For more details on the properties and definition of normal random variables see <https://en.wikipedia.org/wiki/Normal_distribution>.

This app generates simmulations and then estimates their mean ans standard deviation in order to compute de Value at Risk of this random variable. The user has to define the "N" number of simmulations (slider with minimum value of 100 and maximum of 100.000 simmulations), the random variable's mean (slider with minimum value of 10 and maximum of 100) and standard deviation (slider with minimum value of 0.5 and maximum of 30), and the Value at Risk's confidence level (slider with minimum value of 0.90 ans maximum of 0.99). The app also estimates the theoretical VaR, which is displayed with the estimated VaR.

# Interactivity

The user only has to move the sliders in order to change the values of the parameters as desired.
