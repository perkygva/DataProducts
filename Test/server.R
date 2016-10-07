#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
      # generate bins based on input$bins from ui.R
    output$text1 = renderText(input$Slider2*10)
    output$plot1 = renderPlot(input$Slider2, input$Slider2*2)
  })
  
