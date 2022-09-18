## Commonality of the term 'nfl' via a grouped boxplot grouped by
## the four regions of USA

### packages used
### baseR
### RColorBrewer

## Import data
searchdata <- read.csv(file.choose(), header = TRUE, sep = ",")

## View data
View(searchdata)
str(searchdata)

### Attach data
attach(searchdata)

## create a box plot
boxplot(nfl ~ region)

boxplot(nfl ~ region, col = brewer.pal(5, "Set3"), boxwex = 0.5,
        whisklty = 1, staplelty = 0, outpch = 16, outcol = brewer.pal(5, "Set3"),
        main = "Google Search in NFL by REgion of US", xlab = "Region of US",
        ylab = "Search Interest (z score)")

