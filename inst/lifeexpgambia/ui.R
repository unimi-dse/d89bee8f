ui <- fluidPage(
  titlePanel("censusVis"),

  sidebarLayout(
    sidebarPanel(

    ),

    mainPanel(
      plotlyOutput("plot1"),
      plotlyOutput("plot2")
    )
  )
)

