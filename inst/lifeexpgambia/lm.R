#' LINEAR REGRESSION OF THE TWO VARIABLES



data1<-read.csv("/Users/saineymanga/Desktop/lifeexpgambia/inst/extdata/sampledata.dta.csv")
class(data1)
tn<-c("YEAR","LIFEEXP","GDP")
colnames(data1)<-tn
lmLIFEEXP = lm(LIFEEXP~GDP, data = data1)
s<-summary(lmLIFEEXP)

