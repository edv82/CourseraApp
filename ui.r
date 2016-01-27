library(shiny)
library(ggplot2)

shinyUI(fluidPage(
  h5(a("See the app code in GitHub", href="https://github.com/edv82/CourseraApp")),
  # Application title
  titlePanel("Value at Risk Simmulator"),
  
  # Sidebar with controls to select the normal distribution's
  # number of simmulations (N), mean, standard deviation and
  # confidence level
  sidebarLayout(
    sidebarPanel(
      sliderInput("n", "N:", min = 100, max = 100000, value = 1000,
                  step = 100),
      sliderInput("m", "Mean", min = 10, max = 100, value = 10,
                  step = 10),
      sliderInput("std", "Standard Deviation", min = 0.5, max = 30, value = 1,
                  step = 0.25),
      sliderInput("cl", "Confidence Level", min = 0.90, max = 0.99, value = 0.99,
                  step = 0.01)
    ),
    
    # Show a tabset that includes a plot, summary, and table view
    # of the generated distribution
    mainPanel(
      tabsetPanel(type = "tabs", 
                  tabPanel("Simmulations", plotOutput("plot"), verbatimTextOutput("text")), 
                  tabPanel("Documentation", fluidPage(
                    htmlOutput('instructions')
                  ))
      )
    )
  )
))