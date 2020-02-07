server <- function(input, output) {


  output$plot1 <- renderPlotly({
    print("sampledata")
    data1<-read.csv("/Users/saineymanga/Desktop/lifeexpgambia/inst/extdata/sampledata.dta.csv")
    class(data1)
    tn <- c("YEAR","LIFEEXP","GDP")

    colnames(data1) <-tn

    f1 <- plot_ly(data1, x = ~YEAR, y = ~GDP ) %>%

      add_lines(color=I("blue"),name=~"GDP")

    f1

  })

  output$plot2 <- renderPlotly({
    print("sampledata")
    data1<-read.csv("/Users/saineymanga/Desktop/lifeexpgambia/inst/extdata/sampledata.dta.csv")
    class(data1)
    tn <- c("YEAR","LIFEEXP","GDP")

    colnames(data1) <-tn



    f2 <- plot_ly(data1, x = ~YEAR, y = ~LIFEEXP ) %>%

      add_lines(color=I("red"),name=~"LIFEEXP")

    f2
  })

}
