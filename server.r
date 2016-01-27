library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  #Random Variable Simmulations
  simmulations <- reactive({
    sim <- (rnorm(as.numeric(input$n))*as.numeric(input$std)+as.numeric(input$m))
    names(sim) <- "sim"
    return(sim)
  })
  #VaR estimation using simmulated data
  VaRSim <- reactive({
    var <- mean(simmulations()) +
      sd(simmulations()) * qnorm(as.numeric(input$cl))
    return(var)
  })
  #Theoretical VaR Estimation
  VaRT <- reactive({
    vart <- as.numeric(input$m) + as.numeric(input$std) * qnorm(as.numeric(input$cl))
    return(vart)
  })
  
  output$plot <- renderPlot({
    simu <- as.data.frame(simmulations())
    names(simu) <- "Simmulations"
    p <- ggplot(simu, aes(x = Simmulations)) +
      geom_density() + geom_vline(xintercept = as.numeric(VaRSim())) +
      ggtitle("Simmulations' Density and VaR")
    print(p)
  })
  
  output$text <- renderText({
    paste("Estimated VaR = ", as.numeric(VaRSim()), ", and Theoretical VaR = ",
          as.numeric(VaRT()), sep = "")
  })
  
  output$instructions <- renderText({  
    readLines("Documentation.html")
  })
  
})