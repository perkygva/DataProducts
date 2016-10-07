#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Plot Random Numbers"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric", "how many random variables shoudl be plotted?", 
                   value = 1000, min = 1, max = 1000, step =1),
      sliderInput("sliderX", "pick minimum and maximum x values", 
                  -100, 100, value = c(-50, 50)),
      sliderInput("sliderY", "pick min and max y values", 
                  -100, 100, value = c(-50,50)),
      checkboxInput("show_xlab", "show/hide x axis label", value = TRUE),
      checkboxInput("show_ylab", "show/hide y axis label", value = TRUE),
      checkboxInput("show_title", "show/hide title")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Graph of Random Point"), 
       plotOutput("plot1")
    )
  )
))
