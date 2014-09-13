
library(shiny)


shinyUI(fluidPage(
 
  titlePanel("The Memory Game!"),
  
  fluidRow(
    column(2,
           textInput("name", "Enter Name:", " "),
           textInput("email", "Enter Email:", " "),
          # submitButton("SUBMIT", icon("check-square")), 
          actionButton("go", "SUBMIT", icon("check-square")),
           hr()
    ),
#     column(2,
#            textInput("email", "Enter Email:", " ")   
# 
#   ),
#   column(2,
#           submitButton("SUBMIT", icon("check-square")) 
#             ),
conditionalPanel(
  condition = "input.go",
  
  column(10,
         hr(),
          includeHTML("www/index.html")
          )
  )
)
  
#   fluidRow(
#     column(3,
#            submitButton("SUBMIT", icon("check-square")) 
#   )),
#   
#   
#   hr(),
#  
#   includeHTML("www/index.html")
 
  
))
