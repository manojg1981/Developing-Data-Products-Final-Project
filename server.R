library(shiny) 

BMI<-function(weight,height) {weight/(height^2)}

BMI_fun<-function(weight,height){
        BMI_value<-weight/(height^2)
        ifelse(BMI_value<=16,"Severely underweight",ifelse(BMI_value<18.5,"underweight",ifelse(BMI_value<25,"normal weight",ifelse(BMI_value<30,"overweight","obesity"))))
}

shinyServer(
        function(input, output) {
                
                output$weightvalue <- renderPrint({input$weight})
                output$heightvalue <- renderPrint({input$height})
                output$estimation <- renderPrint({BMI(input$weight,input$height)})
                output$diagnostic <- renderPrint({BMI_fun(input$weight,input$height)})
        } 
)