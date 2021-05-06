library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage( #create the overall page
  
  # Application title
  titlePanel("Tomato Data"),
  
  # Some helpful information
  helpText("This application creates a boxplot to show difference between",
           "Tomato species.  Please use the radio box below to choose a trait",
           "for plotting"),
  
  # Sidebar with a radio box to input which trait will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("trait", #the input variable that the value will go into
                   "Choose a trait to display:",
                   c("Altitude"="alt",
                     "Height"="hyp",
                     "Leaf Length"="leafleng",
                     "Leaf Width"="leafwid")
      )),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("boxPlot")
    )
  )
))