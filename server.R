library(shiny)
library(UsingR)
data(USArrests)

shinyServer(
  function(input, output) {
    
    #n    <-which(row.names(USArrests) %in% input$state_in)
    #n_min<-which(min(USArrests$Murder[n]) == USArrests$Murder)
    
    
    output$state_out    <- renderPrint({input$state_in})
    output$mins         <- renderPrint({row.names(USArrests)[which(min(USArrests$Murder[which(row.names(USArrests) %in% input$state_in)]) == USArrests$Murder)]})
    output$min_murd_out <- renderPrint({min(USArrests$Murder[which(row.names(USArrests) %in% input$state_in)])})
    
    output$maxs         <- renderPrint({row.names(USArrests)[which(max(USArrests$Murder[which(row.names(USArrests) %in% input$state_in)]) == USArrests$Murder)]})
    output$max_murd_out <- renderPrint({max(USArrests$Murder[which(row.names(USArrests) %in% input$state_in)])})
    output$avg_murd_out <- renderPrint({mean(USArrests$Murder[which(row.names(USArrests) %in% input$state_in)])})
    
  }
)