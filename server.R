library(shiny)
library(plotly)
library(data.table)
load("data2.RData")

shinyServer(function(input, output) {
  output$distPlot <- renderPlotly({
          x <- list(title = "Month and Year")
          y <- list(title = "Total number of tweets")
          data3<-data2[data2$author==input$Author,]
          
          plot_ly(x = ~data3$DateFinal2, type = "histogram")  %>%
          layout(xaxis = x, yaxis = y)
  })
 
  output$distPlot2 <- renderPlotly({
          x <- list(title = "Year")
          y <- list(title = "Total number of tweets")
          data3<-data2[data2$author==input$Author,]
          
          plot_ly(x = ~year(data3$dateFinal), type = "histogram") %>%
                  layout(xaxis = x, yaxis = y)
            })
})
