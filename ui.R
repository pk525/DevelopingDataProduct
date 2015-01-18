

library(shiny)

shinyUI(pageWithSidebar(

  # Application title
  titlePanel("Simple BMI Calculator"),

  # Sidebar with 
  sidebarPanel(
   
    
      textInput(inputId='text1', label="Enter your Name"),
      numericInput(inputId= "age", label="Enter your age in yrs",min=0, max= 100, step=1,value = 16),
      
      radioButtons(inputId = "sex","Tick your sex",
                   c("Male"="M",
                     "Female"="F")),
      
      checkboxGroupInput("text2","Assess your Age Group(select only one)",
                         c("child" = "child",
                           "teenager"= "teenager",
                           "adult"= "adult")),
      
      numericInput(inputId="height",label = "Enter your Height in mtrs",min = 0,max = 2.00,step = 0.01,value = 1.45),
      numericInput(inputId="Weight",label = "Enter your Weight in Kgs",min= 0,max= 100, step=0.1,value = 65.5),
      dateInput("date","Date:"),
      
      br(),
      
      actionButton("gobutton", label="Check Entries before Processing"),
      
      br(),
      br(),
      
      actionButton("button",label="Calculate BMI"),
      br(),
      h4("Operating Instruction:"),
      helpText("BMI is known for Body Mass Index which is a numerical parameter,calculated on the basis of one's
                height in meter and weight in Kgs and it signifies the status of one's obesity.As indicated the 
               parameters Name,Age,sex,Height in Mtrs,Weight in Kgs are to be entered one by one and by Clicking 
              'Check Entries before Processing' you should chek all correctness of your entreis.If every thing is
                found OK then click 'BMI' to calculate your BMI.Reference Status of obesity is defined adjacently.")
      
    ),
 
    mainPanel(
      
  
                 
                 h3("Your Entries And BMI"),
                 h4('your Name'),
                 textOutput('otext1'),
                 h4('Your Age'),
                 textOutput("oage"),
                 h4('Your Sex'),
                 textOutput("osex"),
                 h4('your Age Group'),
                 textOutput('otext2'),
                 h4('your height in mtr'),
                 textOutput('oheight'),
                 h4('your weight in Kgs'),
                 textOutput('oweight'),
                 h4('Date of Today'),
                 textOutput("odate"),
                 br(),
                 br(),
                 h4('your BMI'),
                 verbatimTextOutput('BMI'),
                 br(),
                 
                 h4(" you are "),
                 
                 h5("Underweight if your BMI is (less) < 18.5"),
                 
                 h5("Normal weight if your BMI is in between 18.5 to 24.9"),
                 
                 h5(" Overweight if your BMI is in between 25 to 29.9"),
                 
                 h5("Obese if your BMI is (more than or equal to) >= 30"),
                 
                 h4("Documentation Explaining App:"),
                 
                 helpText("Except the widget for Name where the text is automatically updated, the subsequent
                          widgets are reactively associated and isolated through actionButton.Hence after cliking
                           only the text and numeric data is rendered in the main Panel."),
                 helpText("The empty 'Your BMI' Label gets also updated only after the clicking of the button
                          'BMI'.The calculated BMI pops up.'BMI' calculation function is rendered and isolated
                            through the actionButton reactively.The Label is kept blank with the use of if and 
                            return statement with the actionbutton."),
                 
                 withMathJax(),
                 
                 h5("The equation used for the calculation is $$ BMI=\\frac{weight in Kgs}{(height in Mtrs)^2}$$ ")
                 
    )
  
   ) 
 
)
