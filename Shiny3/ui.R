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
  titlePanel("Predict Horsepower from MPG"),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("sliderMPG", "what is the mpg of the car?", 10, 35, value=20),
       checkboxInput("showModel1", "Show/Hide model 1", value = TRUE),
       checkboxInput("showModel2", "Show/Hide model 2", value = TRUE)
),  

  mainPanel(
    plotOutput("plot1"),
    h3("Predicted horsepower from model 1:"),
    textOutput("pred1"),
    h3("Predicted horspeower from model 2:"),
    textOutput("pred2")
  )
)
))
