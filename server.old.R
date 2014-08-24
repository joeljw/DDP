shinyServer(function(input, output) {
    output$plot1 <- renderPlot({
        plot(x,y,pch=17,col="blue",cex=.5)
    })
    output$text <- renderText({
        paste("This is a", input$select," wave.")
    })
})