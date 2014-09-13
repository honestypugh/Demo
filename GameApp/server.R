
library(shiny)


shinyServer(function(input, output) {
  
  
  data <- reactive({
    
    input$goButton
    
     a <- input$name
     b <- input$email
    
    x <- data.frame(a, b)
    x$ID <- as.numeric(as.factor(x$a))
    
    x <- data.frame(ID, a, b)
    
    write.csv(x, file = "Contacts.csv")
    
#     filename = function() { 
#       paste(x, '.csv', sep='') 
#     }
#     content = function(file) {
#       write.csv(x, file = "Contacts.csv")
#     }
#     

  })
  
  
 
 
})
