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
  titlePanel("HTML Tags"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       h1("move the slider"),
       sliderInput("Slider2", "Slide me!", 0, 100, 0) 
    ),
  
    # Show a plot of the generated distribution
    mainPanel(
       h3("main panel text"),
       textOutput("text1"),
       plotOutput("plot1")
       
    )
  )
))
