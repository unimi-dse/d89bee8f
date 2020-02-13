#'printing the graph that shows the trend of Gdp per capita overtime
#'
server <- function(input, output) {


  output$plot1 <- plotly::renderPlotly({
    print("sampledata")
    df<-system.file("extdata", "sampledata.dta.csv", package = "lifeexpgambia")
    data1<-read.csv("/Users/saineymanga/Desktop/lifeexpgambia/inst/extdata/sampledata.dta.csv")

    print(data1)
    class(data1)
    tn <- c("YEAR","LIFEEXP","GDP")

    colnames(data1) <-tn

    f1 <- plotly::plot_ly(data1, x = ~YEAR, y = ~GDP ) %>%
      plotly::add_lines(color=I("blue"),name=~"GDP")
    f1

  })
  #'printing the graph which shows the trend of life expectancy overtime

  output$plot2 <- plotly::renderPlotly({
    print("sampledata")

     df<-system.file("extdata", "sampledata.dta.csv", package = "lifeexpgambia")
    data1<-read.csv("/Users/saineymanga/Desktop/lifeexpgambia/inst/extdata/sampledata.dta.csv")

    print(data1)
    class(data1)
    tn <- c("YEAR","LIFEEXP","GDP")

    colnames(data1) <-tn



    f2 <- plotly::plot_ly(data1, x = ~YEAR, y = ~LIFEEXP ) %>%
      plotly::add_lines(color=I("red"),name=~"LIFEEXP")

    f2
  })
#' printing the graph that shows the relationship between life expectancy and Gdp per capita.
  output$plot3 <- plotly::renderPlotly({
    df <- system.file("extdata", "sampledata.dta.csv", package = "lifeexpgambia")
    data1<-read.csv("/Users/saineymanga/Desktop/lifeexpgambia/inst/extdata/sampledata.dta.csv")
    print(data1)
    class(data1)
    tn <- c("YEAR","LIFEEXP","GDP")

    colnames(data1) <-tn


    f3 <- plotly::plot_ly(data1, x = ~GDP, y = ~LIFEEXP ) %>%
      plotly::add_lines(color=I("green"),name=~"GDP/LIFEEXP")

    f3
  })

  output$reg <- renderText({

    df <- system.file("extdata", "sampledata.dta.csv", package = "lifeexpgambia")
    data1<-read.csv("/Users/saineymanga/Desktop/lifeexpgambia/inst/extdata/sampledata.dta.csv")
    tn<-c("YEAR","LIFEEXP","GDP")
    colnames(data1)<-tn
    l<-summary(lm(LIFEEXP~GDP, data = data1))
    paste(l)
  })

}




