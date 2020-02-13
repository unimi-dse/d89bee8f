ui <- fluidPage(
  titlePanel("censusVis"),

  sidebarLayout(
    sidebarPanel(

    ),

    mainPanel(
      plotly::plotlyOutput("plot1"),
      plotly::plotlyOutput("plot2"),
      plotly::plotlyOutput("plot3"),
      textOutput("reg")
    )
  )
)

