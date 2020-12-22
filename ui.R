# Coursera's Data Science Capstone : Final Project
# ui.R file for the Shiny app
# It builds required UI for Next Word Predictor application which accepts an n-gram and predicts the next word.

suppressWarnings(library(shiny))
suppressWarnings(library(rmarkdown))


# Define UI for application that draws a histogram
shinyUI(navbarPage("Coursera's Data Science Capstone: Final Project",
                   tabPanel("Next Word Predictor",
                            HTML("<strong>Author: Naman Gupta</strong>"),
                            br(),
                            HTML("<strong>Date: 22 December 2020</strong>"),
                            br(),
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("This application takes your string and predict the next word to your string"),
                                    textInput("inputString", "Enter your word or partial phrase here",value = "Hello"),
                                ),
                                mainPanel(
                                        h2("Predicted word"),
                                        textOutput("prediction")
                                )
                            )
                    ),
                    tabPanel(
                        "Overview",
                        mainPanel(
                            includeHTML("Overview.html"),
                            img(src = "./app.PNG")
                        )
                    ),
                   tabPanel("Instructions",
                            mainPanel(
                                includeHTML("Instructions.html")
                            )
                   )
    )
)
