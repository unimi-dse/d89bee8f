#'This is an example function named 'data1'
#'data1, sampledata!
#'which prints 'data1, sampledata!'.
#'the following packages should be loaded to enable the shiny app view the three graphs through the fuction below.
#'@export


#

appGUI <- function(){
  sf <- system.file("lifeexpgambia", package = "lifeexpgambia")
  shiny::runApp(sf, display.mode = "normal", launch.browser = T)

}
