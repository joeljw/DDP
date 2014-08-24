
x = seq(0,2,by=input$step)
if(input$select == "sin"){ y = 2 * sin(2*pi*(x-1/4))
} else { y = 2 * cos(2*pi*(x-1/4))
}