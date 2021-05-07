library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage( #create the overall page
  
  # Application title
  titlePanel("Tomato Data"),
  
  # Some helpful information
  helpText("This application creates a boxplot to show differences between",
           "features of Tomato species.  Please use the radio box below to choose a trait",
           "for plotting.", "The x-axis will be the sepcies of tomato, and the y-axis will",
           "be the selected trait.", "The line in each box represents the median of the data."),
  
  # Sidebar with a radio box to input which trait will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("trait", #the input variable that the value will go into
                   "Choose a trait to display:",
                   c("Altitude"="alt",
                     "Height"="totleng",
                     "Leaf Length"="leafleng",
                     "Leaf Width"="leafwid",
                     "NDVI"="ndvi")
      )),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("boxPlot")
    )
  )
))