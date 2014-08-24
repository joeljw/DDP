# server.R

library(maps)
library(mapproj)

#setwd("~/Documents/Online Classes/Coursera/Developing Data Products/census-app/")
counties <- readRDS("./data/counties.rds")
source("helpers.R")

shinyServer(
    function(input, output) {
        output$map <- renderPlot({
            data <- switch(input$var, 
                           "Percent White" = counties$white,
                           "Percent Black" = counties$black,
                           "Percent Hispanic" = counties$hispanic,
                           "Percent Asian" = counties$asian)
            
            percent_map(var = data, color = 'blue', legend.title = 'Percent of Race', max = input$range[2], min = input$range[1])
        })
    }
)