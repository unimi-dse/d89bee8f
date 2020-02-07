# data1, sampledata!
#
# This is an example function named 'data1'
# which prints 'data1, sampledata!'.
#
#
#
require("devtools")
library("roxygen2")
library("usethis")
library("plotly")
library("ggplot2")
library("plotly")
#

data1 <- function() {
  print("sampledata")
  data1<-read.csv("/Users/saineymanga/Desktop/DSE/sampledata.dta.csv")
  class(data1)
  tn <- c("date","y","x")
  colnames(data1) <-tn
}
