# Botão de download
ui <- fluidPage(downloadButton("downloadData", "Download"))

server <- function(input, output) {
  output$downloadData <- downloadHandler(
    filename = function() {
      paste("dados-", "usuarios-frequentes", ".csv", sep="")
    },
    content = function(file) {
      write.csv(x, file)
    }
  )
}

shinyApp(ui, server)