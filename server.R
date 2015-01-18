

library(shiny)
 
shinyServer(function(input, output) {
  
    
   output$otext1<- renderText({input$text1
                                })
  output$oage<- renderText({input$gobutton
                             isolate(input$age)
                             })
  output$osex<- renderText({input$gobutton
                             isolate(input$sex)
                             })
  output$otext2<- renderText({input$gobutton
                               isolate(input$text2)
                               })
  output$oheight <- renderText({input$gobutton
                                 isolate(input$height)
                                 })
  output$oweight<-renderText({input$gobutton
                                 isolate(input$Weight)
                                 })
  output$odate<- renderPrint({input$gobutton
                              isolate(input$date)
                                })
 
  x<- function(Weight,height){ round(input$Weight/input$height^2 , 1)}
  
  output$BMI <- reactive({
                          if (input$button == 0)
                            return("")
                                    
                             isolate(                                                            
                                      x(output$oweight,output$oheight)     )
                         
                            })
  
 
                               

})
