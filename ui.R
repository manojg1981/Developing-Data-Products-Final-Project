library(shiny) 
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Calculate your Body Mass Index (BMI)"),
                
                sidebarPanel(
                        numericInput('weight', 'Enter  your weight (Kgs)', 75) ,
                        numericInput('height', 'Enter your height (metres)', 1.90, min = 0.2, max = 3, step = 0.01),
                        submitButton('Submit')
                ), 
                mainPanel(
                        p('The body mass index (BMI) or Quetelet index is a value derived from the mass (weight) and height of an individual. 
                          it is universally expressed in units of kg/m2, resulting from mass in kilograms and height in metres..'),
                        p('The World Health Organization (WHO) proposes the following (BMI) classification:'),
                        tags$div(
                                tags$ul(
                                        tags$li('BMI <=16            : Severely underweight'),
                                        tags$li('BMI [16.1 - 18.4]   : Underweight'),
                                        tags$li('BMI [18.5-24.9]     : Normal weight'),
                                        tags$li('BMI [25-29.9]       : Overweight'),
                                        tags$li('BMI >=30            : Obesity')
                                )
                        ),
                        
                        h4('As per Weight and Height entered :'), 
                        p('weight:'), verbatimTextOutput("weightvalue"),
                        p('height:'), verbatimTextOutput("heightvalue"),
                        h4('Your BMI is:'),
                        verbatimTextOutput("estimation"),
                        p('You are:'),strong(verbatimTextOutput("diagnostic"))
                        
                        
                )
                
        )   
)