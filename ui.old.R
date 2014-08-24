library(shiny)

shinyUI(fluidPage(
    titlePanel("Sinusoidal Waves"),
    fluidRow(
        column(3, wellPanel(
            sliderInput("step", "Step Value:", min = .0010, max = .5, value = .01, step=.01),
            selectInput("select", label = h3("Select box"), 
                        choices = list("Sine Wave" = "sin", "Cosine Wave" = "cos"), 
                        selected = "sin"),
            
            #textInput("text", "Text:", "text here"),
            submitButton("Submit")
        )),
        column(6,
               plotOutput("plot1", width = 400, height = 300),
               verbatimTextOutput("text")
        )
    )
))