library(shiny)
data(USArrests)
stvec<-row.names(USArrests)

shinyUI(pageWithSidebar(
  headerPanel("Select Which States You'd Like To Investigate the Murder Arrest Rate"),
  sidebarPanel(
    checkboxGroupInput("state_in", "Checkbox",
                       c(stvec),selected=c('Alaska','New York'))
     
  ),
  mainPanel(
    h3('Arrests for Murders'),

    h4('You are considering the following states:'),
    verbatimTextOutput("state_out"),
    
    h4('State with lowest murder arrest rate (this will also show you if there is another state with the same rate):'),
    verbatimTextOutput("mins"),
    h4('with rate (per 100,000 residents):'),
    verbatimTextOutput("min_murd_out"),
    
    h4('State with highest murder arrest rate (this will also show you if there is another state with the same rate):'),
    verbatimTextOutput("maxs"),
    h4('with rate (per 100,000 residents):'),
    verbatimTextOutput("max_murd_out"),
    
    h4('Average murder arrest rate for the states you have selected (per 100,000 residents):'),
    verbatimTextOutput("avg_murd_out")
  )
))