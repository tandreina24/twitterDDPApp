library(shiny)
library(plotly)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Total number of tweets posted by Famous people"),
        
        # Sidebar  
        sidebarLayout(
                sidebarPanel(
                        selectInput("Author",
                                    "Author:",
                                    c(      "Adam Savage"="AdamSavage",
                                            "Barack Obama"="BarackObama",
                                            "deGrasse Tyson"="deGrasseTyson",
                                            "Donald Trump"="DonaldTrump",
                                            "FiveThirtyEight"="FiveThirtyEight",
                                            "Hillary Clinton"="HillaryClinton",
                                            "Kim Kardashian"="KimKardashian",
                                            "NASA"="NASA",
                                            "Richard Dawkins"="RichardDawkins",
                                            "Scott Kelly"="ScottKelly",
                                            "Various"="various")),
                                    tableOutput("data")
                                 ,
                                 print("Total number of tweets by Year"),
                                 plotlyOutput("distPlot2")),
         
                        mainPanel(
                                print("Total number of tweets by Month and Year"),
                                plotlyOutput("distPlot")
                                 )
               
                )
        ))