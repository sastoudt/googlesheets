library(shiny)
library(shinythemes)

shinyUI(
  fluidPage(
    theme = shinytheme("cosmo"),
    titlePanel("Submit a sheet to a private Google Spreadsheet"),
    sidebarLayout(
      sidebarPanel(
        h6(paste("This app is hard-wired to target a private Google Sheet that will collect writing journals from participants.")),
        h6(paste("You can't visit the Sheet in the browser, because it's",
                 "private.")),
        h6("Fail to browse the Sheet: ",
           a("HERE", href = ss$browser_url, target="_blank")),
        h6(a("This app is modelled after Jenny Bryan's googlesheets Shiny example",
             href="https://github.com/jennybc/googlesheets/tree/master/inst/shiny-examples/10_read-write-private-sheet",
             target="_blank")),
        h6("Download the Writing Journal template to fill out: ",
           a("HERE", href = "https://docs.google.com/spreadsheets/d/1tIeBBVAFCRpwQXKnwtbD-J0e6qn1LNjyRsgrGMC18B8/edit?usp=sharing", 
             target="_blank")),
        #sliderInput("row", "Row", min = 1, max = n, value = 1, step = 1,
                  #  ticks = FALSE),
        #selectInput("column", "Column",
                   # choices = stats::setNames(seq_len(n), colnames(filler))),
        #selectInput("contents", "Cell contents",
                   # choices = c("apple", "grape", "banana")),
        #actionButton("submit", "Submit", class = "btn-primary"),
        
        fileInput("file1", "Choose your updated Writing Journal File")
        
        
        #actionButton("reset", "Reset", class = "btn-primary")
      ),
      mainPanel(
        #tableOutput("table")
      )
    )
  ))
