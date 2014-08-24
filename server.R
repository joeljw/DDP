# server.R

library(maps)
library(mapproj)
counties <- readRDS("census-app/data/counties.rds")
source("census-app/helpers.R")

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