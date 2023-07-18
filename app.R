#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shiny.router)
# Define UI for application that draws a histogram

home_page <- div(
    # Application title
    titlePanel("STA-631 Guide"),
    sidebarLayout(
        sidebarPanel(),
        mainPanel(
            p("Welcome to the STA-631 Guide!"),
            p("The purpose of this guide is to assist you in understanding topics that will show up in this class.  These explanations will be done by me and my experience in the class.
              This guide should be used as a second source to the reading of 'Introduction to Statistical learning'.  By this, I mean that you should either review or read the chapter that relates to the
              topics of each page first and if you find youself scratching your head or a little lost, then come to this site for another explanation or source to assist in your learning.")
        )
    )
    
)

settings_page <- div(
    titlePanel("Settings"),
    p("This is a settings page")
)

contact_page <- div(
    titlePanel("Contact"),
    p("This is a contact page")
)

router <- make_router(
    route("/", home_page),
    route("settings", settings_page),
    route("contact", contact_page)
)
router <- make_router(
    route("/", home_page),
    route("settings", settings_page),
    route("contact", contact_page)
)
ui <- fluidPage(
 
    tags$ul(
        tags$li(a(href = route_link("/"), "Dashboard")),
        tags$li(a(href = route_link("settings"), "Settings")),
        tags$li(a(href = route_link("contact"), "Contact"))
    ),
    router$ui
)

server <- function(input, output, session) {
    router$server(input, output, session)
}

    # Application title
    titlePanel("STA-631 Guide")
    sidebarLayout(
        sidebarPanel(),
        mainPanel(
            p("Welcome to the STA-631 Guide!"),
            p("The purpose of this guide is to assist you in understanding topics that will show up in this class.  These explanations will be done by me and my experience in the class.
              This guide should be used as a second source to the reading of 'Introduction to Statistical learning'.  By this, I mean that you should either review or read the chapter that relates to the
              topics of each page first and if you find youself scratching your head or a little lost, then come to this site for another explanation or source to assist in your learning.")
        )
    )
    






# Run the application 
shinyApp(ui = ui, server = server)
