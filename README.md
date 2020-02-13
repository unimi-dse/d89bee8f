## lifeexpgambia

lifeexpgambia is a package that shows the relationship between Life expectancy and Gdp per capita through graphs and a regression analysis.
The data,which I called sampledata, was downloaded from the FRED(fedral bank of st luis) website through Emanuele Guidotti's website. The data is a time series data of the Gambia from 1966 to 2017.

### Installation

```first
# First install R package "devtools" if not installed
devtools::install_github('unimi-dse/d89bee8f')

```

#### Usage
Function "data1" prints out the sample data
"f1" prints the graph that shows the trend of Gdp per capita over time and "f2" prints the graph which shows the trend of life expexpectancy over time.
"f3" prints the graph which shows a linear relationship between the two variables.
"s" prints the regression results where you can see the correlation between "LIFEEXP" and "GDP"
Download the shiny app and load and load all the packages indicated on the "lifeexpgambia.R" in order to view the the graphs through the last function on the file.



```


